import 'dart:io';

import 'package:camera/camera.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../../config/config.dart';
import '../../../../core/core.dart';
import '../../../utils.dart';
import 'logic/logic.dart';
import 'widgets/widgets.dart';

class AcdaTimerCameraWd extends ConsumerStatefulWidget {
  const AcdaTimerCameraWd({required this.updateImageCallback, Key? key}) : super(key: key);

  final void Function({required XFile? pickedImage, required WidgetRef ref}) updateImageCallback;

  @override
  ConsumerState<AcdaTimerCameraWd> createState() => _AcdaTimerCameraWdState();
}

class _AcdaTimerCameraWdState extends ConsumerState<AcdaTimerCameraWd> with WidgetsBindingObserver {
  late CameraController _cameraController;
  late Future<void> _initializeControllerFuture;
  late ACDATimerCameraStateNotifier _notifier;

  @override
  void initState() {
    super.initState();
    _notifier = ref.read(acdaTimerCameraStateProvider.notifier);
    _initializeCameraController(ref.read(acdaTimerCameraStateProvider.select((value) => value.cameraDescription!)));
  }

  @override
  void didChangeAppLifecycleState(AppLifecycleState state) {
    final CameraController cameraController = _cameraController;

    // App state changed before we got the chance to initialize.
    if (!cameraController.value.isInitialized) {
      return;
    }

    if (state == AppLifecycleState.inactive) {
      cameraController.dispose();
    } else if (state == AppLifecycleState.resumed) {
      _initializeCameraController(cameraController.description);
    }
  }

  @override
  void dispose() {
    _cameraController.dispose();
    SchedulerBinding.instance.addPostFrameCallback((timeStamp) {
      _notifier.clearStateOnDispose();
    });
    super.dispose();
  }

  void _initializeCameraController(CameraDescription cameraDescription) {
    _cameraController = CameraController(
      cameraDescription,
      ResolutionPreset.ultraHigh,
      enableAudio: false,
      imageFormatGroup: ImageFormatGroup.yuv420,
    );
    _initializeControllerFuture = _cameraController.initialize().then((value) {
      if (!mounted) {
        return;
      }
      setState(() {});
    }).catchError((Object e) {
      if (e is CameraException) {
        switch (e.code) {
          case 'CameraAccessDenied':
            _showRequestPopup(context);
            break;
          default:
            break;
        }
      }
    });
  }

  void _showRequestPopup(BuildContext context) {
    return showACDAPopupFN(
      context: context,
      popup: ACDAUngrantedAccessPopupWD(
        content: ACDACommonMessages.ungrantedPhotoPermission,
        requestCallbackfn: ACDAPermission.instance.requestCameraAccess,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final XFile? pickedImage = ref.watch(acdaTimerCameraStateProvider.select((value) => value.pickedImage));
    final int counter = ref.watch(acdaTimerCameraStateProvider.select((value) => value.counter));
    final bool isStartCounting = ref.watch(acdaTimerCameraStateProvider.select((value) => value.isStartCounting));

    return Scaffold(
      backgroundColor: DesignSystem.g0,
      body: SafeArea(
        child: Stack(
          children: [
            Align(
              alignment: Alignment.center,
              child: pickedImage == null
                  ? FutureBuilder<void>(
                      future: _initializeControllerFuture,
                      builder: (context, snapshot) {
                        if (snapshot.connectionState == ConnectionState.done) {
                          return LayoutBuilder(builder: (context, constaints) {
                            return SizedBox(
                              height: constaints.maxHeight * 1,
                              width: double.infinity,
                              child: CameraPreview(_cameraController),
                            );
                          });
                        } else {
                          return const Center(child: ACDALoadingWD());
                        }
                      },
                    )
                  : LayoutBuilder(builder: (context, constraints) {
                      return Image.file(
                        File(pickedImage.path),
                        height: constraints.maxHeight,
                        width: constraints.maxWidth,
                        fit: BoxFit.cover,
                      );
                    }),
            ),
            const Positioned(
              top: 13,
              left: 13,
              child: CameraCloseButtonWD(),
            ),
            const Positioned(
              top: 13,
              right: 13,
              child: CameraSwitchButtonWd(),
            ),
            if (counter != 0 && isStartCounting)
              Align(
                alignment: Alignment.center,
                child: Text(
                  counter.toString(),
                  style: TextStyles.header1Bold.copyWith(color: DesignSystem.g1, fontSize: 90),
                ),
              ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Padding(
                padding: const EdgeInsets.only(bottom: 15),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    const CameraTimerOptionWD(),
                    const SizedBox(height: 15),
                    CameraCaptureButtonWd(
                      cameraController: _cameraController,
                      initializeControllerFuture: _initializeControllerFuture,
                      updateImageCallback: widget.updateImageCallback,
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
