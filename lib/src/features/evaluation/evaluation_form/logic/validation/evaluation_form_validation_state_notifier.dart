import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:image_picker/image_picker.dart';

import '../logic.dart';

class EvaluationFormValidationStateNotifier extends StateNotifier<void> {
  EvaluationFormValidationStateNotifier({required this.ref}) : super(null);

  final Ref ref;

  bool isFormValid() {
    final XFile? fullBodyImageFile =
        ref.read(evaluationFormInputStateProvider.select((value) => value.fullBodyImageFile));
    final XFile? upperBodyImageFile =
        ref.read(evaluationFormInputStateProvider.select((value) => value.upperBodyImageFile));
    // final XFile? studentIdCardImageFile =
    //     ref.read(evaluationFormInputStateProvider.select((value) => value.studentIdCardImageFile));

    return fullBodyImageFile != null && upperBodyImageFile != null;
  }
}
