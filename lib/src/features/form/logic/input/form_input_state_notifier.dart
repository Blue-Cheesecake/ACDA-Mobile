import 'package:flutter/foundation.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'input.dart';

class FormInputStateNotifier extends StateNotifier<FormInputState> {
  FormInputStateNotifier() : super(FormInputState());

  void updateLabel(String? value) {
    state = state.copyWith(label: value);
  }

  void updateBodyImage(Uint8List? imageBytes) {
    state = state.copyWith(bodyImageBytes: imageBytes);
  }

  void updateBottomImage(Uint8List? imageBytes) {
    state = state.copyWith(bottomImageBytes: imageBytes);
  }

  void updateShoesImage(Uint8List? imageBytes) {
    state = state.copyWith(shoesImageBytes: imageBytes);
  }
}
