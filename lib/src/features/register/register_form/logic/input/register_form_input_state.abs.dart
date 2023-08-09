import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:image_picker/image_picker.dart';

import '../../../../../utils/utils.dart';
import '../../../registration/utils/utils.dart';

part 'register_form_input_state.abs.freezed.dart';

@freezed
class RegisterFormInputState with _$RegisterFormInputState {
  const RegisterFormInputState._();

  factory RegisterFormInputState({
    String? emailName,
    String? emailDomain,
    String? password,
    String? confirmedPassword,
    ICommonCategoryValueEntity? faculty,
    XFile? faceImage,
    @Default(false) bool isAllowPDPA,
    @Default(false) bool isInformationNextButtonEnabled,
    @Default(false) bool isFaceImageNextButtonEnabled,
    @Default(false) isFaceImageAlreadyPassed,
    @Default(RegistrationPage.info) RegistrationPage currentPage,
    @Default(0.0) final double completeButtonScale,
  }) = _RegisterFormInputState;

  String get email => (emailName ?? '') + (emailDomain ?? '');
}
