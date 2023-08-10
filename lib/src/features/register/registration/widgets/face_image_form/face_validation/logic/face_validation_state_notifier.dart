import 'dart:convert';
import 'dart:typed_data';

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:image_picker/image_picker.dart';

import '../../../../../../../utils/utils.dart';
import '../../../../../register_form/register_form.dart';
import '../face_validation.dart';

class FaceValidationStateNotifier extends ACDAStateNotifier<FaceValidationState> {
  FaceValidationStateNotifier({required this.ref, required this.validateUseCase})
      : super(FaceValidationState.initial());

  final Ref ref;
  final ValidateUseCase validateUseCase;

  Future<void> validate() async {
    safeState = FaceValidationState.loading();
    final XFile? faceImage = ref.read(registerFormInputProvider.select((value) => value.faceImage));
    ref.read(registerFormInputProvider.notifier).updateIsFaceImagePassed(null);

    if (faceImage == null) {
      safeState = FaceValidationState.error(message: FaceValidationMessages.nullFaceImage);
      return;
    }

    final Uint8List imageBytes = await faceImage.readAsBytes();
    final String faceImageBase64 = base64Encode(imageBytes);
    final response = await validateUseCase.execute(faceImageBase64);

    response.when(
      success: (APIResponse<IFaceValidationResultEntity> apiResponse) {
        apiResponse.when(
          success: (data) {
            ref.read(registerFormInputProvider.notifier).updateIsFaceImagePassed(data.isPassed);
            safeState = FaceValidationState.validated(isPassed: data.isPassed);
          },
          error: (errorMessageModel) {
            ref.read(registerFormInputProvider.notifier).updateIsFaceImagePassed(false);
            safeState = FaceValidationState.error(message: errorMessageModel.message);
          },
        );
      },
      error: (_) {
        ref.read(registerFormInputProvider.notifier).updateIsFaceImagePassed(false);
        safeState = FaceValidationState.unknownError();
      },
    );
  }
}
