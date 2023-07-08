import 'package:flutter/cupertino.dart';
import 'package:loader_overlay/loader_overlay.dart';

class ACDALoaderOverlayWD extends StatelessWidget {
  const ACDALoaderOverlayWD({Key? key, required this.child}) : super(key: key);

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return LoaderOverlay(
      overlayWidget: const CupertinoActivityIndicator(animating: true),
      child: child,
    );
  }
}
