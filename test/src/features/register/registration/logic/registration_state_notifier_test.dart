import 'dart:typed_data';

import 'package:acda_mobile/src/features/register/register_form/register_form.dart';
import 'package:acda_mobile/src/features/register/registration/registration.dart';
import 'package:acda_mobile/src/utils/utils.dart';
import 'package:camera/camera.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';

class MockRef extends Mock implements Ref {}

class MockRegisterUseCase extends Mock implements RegisterUseCase {}

class MockRegisterFormInputState extends Mock implements RegisterFormInputState {}

class MockXFile extends Mock implements XFile {}

class MockICommonCategoryValueEntity extends Mock implements ICommonCategoryValueEntity {}

class MockAPISimpleMessageModel extends Mock implements APISimpleMessageModel {}

class MockRegistrationRequestModel extends Mock implements RegistrationRequestModel {}

void main() {
  late final MockRef ref;
  late final MockRegisterUseCase registerUseCase;
  late final MockRegisterFormInputState input;
  late final MockICommonCategoryValueEntity faculty;
  late final MockXFile faceImage;
  late final MockAPISimpleMessageModel data;
  late final Uint8List bytes;

  setUpAll(() {
    registerFallbackValue(MockRegistrationRequestModel());
  });

  setUp(() {
    ref = MockRef();
    registerUseCase = MockRegisterUseCase();
    input = MockRegisterFormInputState();
    faculty = MockICommonCategoryValueEntity();
    faceImage = MockXFile();
    data = MockAPISimpleMessageModel();
    bytes = Uint8List(10);
  });

  group('RegistrationStateNotifier', () {
    test(
        'Given unregistered user '
        'When user register '
        'Then system should register user successfully', () async {
      const email = 'test@test.com';
      const password = 'Password123';
      const studentIDWithU = 'u6388073';
      const id = 1;
      const croppedFaceImageBase64 = '<croppedFaceImageBase64>';

      when(() => ref.read(registerFormInputProvider)).thenReturn(input);
      when(() => input.faceImage).thenReturn(faceImage);
      when(() => faceImage.readAsBytes()).thenAnswer((_) async => bytes);
      when(() => input.croppedFaceImage).thenReturn(croppedFaceImageBase64);
      when(() => input.email).thenReturn(email);
      when(() => input.password).thenReturn(password);
      when(() => input.studentIdWithU).thenReturn(studentIDWithU);
      when(() => input.faculty).thenReturn(faculty);
      when(() => faculty.id).thenReturn(id);
      when(
        () => registerUseCase.execute(any(that: isA<RegistrationRequestModel>())),
      ).thenAnswer((_) async => Result.success(APIResponse.success(data)));

      final registrationStateNotifier = RegistrationStateNotifer(ref: ref, registerUseCase: registerUseCase);
      final states = <RegistrationState>[];
      registrationStateNotifier.addListener((state) => states.add(state));

      await registrationStateNotifier.register();

      expect(states, [
        RegistrationState.initial(),
        RegistrationState.loading(),
        RegistrationState.success(),
      ]);
      verify(() => registerUseCase.execute(any(that: isA<RegistrationRequestModel>()))).called(1);
    });
  });
}
