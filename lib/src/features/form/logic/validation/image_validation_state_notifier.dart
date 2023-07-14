import 'dart:convert';

import 'package:flutter/foundation.dart';
import 'package:image_picker/image_picker.dart';

import '../../../../utils/utils.dart';
import '../../data/data.dart';
import '../../domain/domain.dart';
import '../../utils/utils.dart';
import 'validation.dart';

class ImageValidationStateNotifier extends ACDAStateNotifier<ImageValidationState> {
  ImageValidationStateNotifier({required ImageValidationUseCase imageValidationUseCase})
      : _imageValidationUseCase = imageValidationUseCase,
        super(ImageValidationState.initial());

  final ImageValidationUseCase _imageValidationUseCase;

  Future<void> validate({
    required XFile imageFile,
    required ValidationCategory category,
    void Function(ImageValidationResultEntity result)? onSucessCallback,
    void Function()? onErrorCallback,
  }) async {
    safeState = ImageValidationState.loading();
    final Uint8List bytes = await imageFile.readAsBytes();
    final response = await _imageValidationUseCase.execute(ImageValidationRequestBodyModel(
      image: base64Encode(bytes),
      category: category.value,
    ));

    response.when(
      success: (result) {
        safeState = ImageValidationState.data(result: result);

        if (onSucessCallback != null) {
          onSucessCallback(result);
        }
      },
      error: (error) {
        safeState = ImageValidationState.error();

        if (onErrorCallback != null) {
          onErrorCallback();
        }
      },
    );
  }
}
