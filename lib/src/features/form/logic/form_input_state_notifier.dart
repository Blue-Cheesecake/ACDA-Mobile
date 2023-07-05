import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'logic.dart';
import '../../../utils/utils.dart';

class FormInputStateNotifier extends StateNotifier<FormInputState> {
  FormInputStateNotifier() : super(FormInputState(label: '', topImages: [], bottomImages: [], shoesImages: []));

  void updateLabel(String? value) {
    state = state.copyWith(label: value);
  }

  // TODO: change to datatype of images later
  void addTopImages({required String value, String? oldImage}) {
    final List<String> topImages = state.topImages;
    topImages.addOrReplace(value: value, oldValue: oldImage);
    state = state.copyWith(topImages: topImages);
  }

  void addBottomImages({required String value, String? oldImages}) {
    final List<String> bottomImages = state.bottomImages;
    bottomImages.addOrReplace(value: value, oldValue: oldImages);
    state = state.copyWith(bottomImages: bottomImages);
  }

  void addShoesImaegs({required String value, String? oldImages}) {
    final List<String> shoesImages = state.shoesImages;
    shoesImages.addOrReplace(value: value, oldValue: oldImages);
    state = state.copyWith(shoesImages: shoesImages);
  }
}
