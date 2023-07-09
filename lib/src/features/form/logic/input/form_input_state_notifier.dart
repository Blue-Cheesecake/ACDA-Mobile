import 'package:flutter/foundation.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../logic.dart';

class FormInputStateNotifier extends StateNotifier<FormInputState> {
  FormInputStateNotifier({required this.ref}) : super(FormInputState());
  final Ref ref;

  void _checkValidation() {
    final isValid = ref.read(formValidationProvider.notifier).isValid();
    state = state.copyWith(isSubmitButtonEnabled: isValid);
  }

  void updateLabel(String? value) {
    state = state.copyWith(label: value);
    _checkValidation();
  }

  void updateBodyImage(Uint8List? imageBytes) {
    state = state.copyWith(bodyImageBytes: imageBytes);
    _checkValidation();
  }

  void updateBottomImage(Uint8List? imageBytes) {
    state = state.copyWith(bottomImageBytes: imageBytes);
    _checkValidation();
  }

  void updateShoesImage(Uint8List? imageBytes) {
    state = state.copyWith(shoesImageBytes: imageBytes);
    _checkValidation();
  }
}
