import 'dart:typed_data';

import 'package:acda_mobile/src/features/register/register_form/register_form.dart';
import 'package:acda_mobile/src/features/register/registration/widgets/face_image_form/face_validation/face_validation.dart';
import 'package:acda_mobile/src/utils/utils.dart';
import 'package:camera/camera.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';

class MockRef extends Mock implements Ref {}

class MockValidateUseCase extends Mock implements ValidateUseCase {}

class MockRegisterFormInputState extends Mock implements RegisterFormInputState {}

class MockXFile extends Mock implements XFile {}

class MockIFaceValidationResultEntity extends Mock implements IFaceValidationResultEntity {}

class MockRegisterFormInputStateNotifier extends Mock implements RegisterFormInputStateNotifier {}

class MockAnyException extends Mock implements AnyException {}

class MockAPISimpleMessageModel extends Mock implements APISimpleMessageModel {}

void main() {
  late MockRef ref;
  late MockValidateUseCase validateUseCase;
  late MockRegisterFormInputState input;
  late MockXFile faceImage;
  late Uint8List imageBytes;
  late MockIFaceValidationResultEntity data;
  late MockRegisterFormInputStateNotifier inputNotifier;
  late String croppedFaceImage;
  late MockAnyException anyException;
  late MockAPISimpleMessageModel errorMessageModel;

  setUpAll(() {
    registerFallbackValue('<face_image_bytes>');
  });

  setUp(() {
    ref = MockRef();
    validateUseCase = MockValidateUseCase();
    input = MockRegisterFormInputState();
    faceImage = MockXFile();
    imageBytes = Uint8List(10);
    data = MockIFaceValidationResultEntity();
    inputNotifier = MockRegisterFormInputStateNotifier();
    croppedFaceImage = '<cropped_face_image_value>';
    anyException = MockAnyException();
    errorMessageModel = MockAPISimpleMessageModel();
  });

  group('FaceValidationStateNotifier', () {
    test(
        'Given unregistered user '
        'When user capture valid face '
        'Then system should validate the face correctly', () async {
      when(() => ref.read(registerFormInputProvider)).thenReturn(input);
      when(() => input.faceImage).thenReturn(faceImage);
      when(() => ref.read(registerFormInputProvider.notifier)).thenReturn(inputNotifier);
      when(() => faceImage.readAsBytes()).thenAnswer((_) async => imageBytes);
      when(() => validateUseCase.execute(any(that: isA<String>()))).thenAnswer(
        (_) async => Result.success(APIResponse.success(data)),
      );
      when(() => data.isPassed).thenReturn(true);
      when(() => data.croppedFaceImage).thenReturn(croppedFaceImage);

      final faceValidationStateNotifier = FaceValidationStateNotifier(ref: ref, validateUseCase: validateUseCase);
      final states = <FaceValidationState>[];
      faceValidationStateNotifier.addListener((state) => states.add(state));

      await faceValidationStateNotifier.validate();

      expect(states, [
        FaceValidationState.initial(),
        FaceValidationState.loading(),
        FaceValidationState.validated(isPassed: true)
      ]);
      verify(() => validateUseCase.execute(any(that: isA<String>())));
    });

    test(
        'Given unregistered user '
        'When user capture invalid face '
        'Then system should validate the face failed', () async {
      when(() => ref.read(registerFormInputProvider)).thenReturn(input);
      when(() => input.faceImage).thenReturn(faceImage);
      when(() => ref.read(registerFormInputProvider.notifier)).thenReturn(inputNotifier);
      when(() => faceImage.readAsBytes()).thenAnswer((_) async => imageBytes);
      when(() => validateUseCase.execute(any(that: isA<String>()))).thenAnswer(
        (_) async => Result.success(APIResponse.success(data)),
      );
      when(() => data.isPassed).thenReturn(false);

      final faceValidationStateNotifier = FaceValidationStateNotifier(ref: ref, validateUseCase: validateUseCase);
      final states = <FaceValidationState>[];
      faceValidationStateNotifier.addListener((state) => states.add(state));

      await faceValidationStateNotifier.validate();

      expect(states, [
        FaceValidationState.initial(),
        FaceValidationState.loading(),
        FaceValidationState.validated(isPassed: false)
      ]);
      verify(() => validateUseCase.execute(any(that: isA<String>())));
    });

    test(
        'Given unregistered user '
        'When user capture face with unknown error '
        'Then system should throw unknown error', () async {
      when(() => ref.read(registerFormInputProvider)).thenReturn(input);
      when(() => input.faceImage).thenReturn(faceImage);
      when(() => ref.read(registerFormInputProvider.notifier)).thenReturn(inputNotifier);
      when(() => faceImage.readAsBytes()).thenAnswer((_) async => imageBytes);
      when(() => validateUseCase.execute(any(that: isA<String>()))).thenAnswer((_) async => Result.error(anyException));

      final faceValidationStateNotifier = FaceValidationStateNotifier(ref: ref, validateUseCase: validateUseCase);
      final states = <FaceValidationState>[];
      faceValidationStateNotifier.addListener((state) => states.add(state));

      await faceValidationStateNotifier.validate();

      expect(states, [
        FaceValidationState.initial(),
        FaceValidationState.loading(),
        FaceValidationState.unknownError(),
      ]);
      verify(() => validateUseCase.execute(any(that: isA<String>())));
    });

    test(
        'Given unregistered user '
        'When user capture face with some error '
        'Then system should throw some error', () async {
      when(() => ref.read(registerFormInputProvider)).thenReturn(input);
      when(() => input.faceImage).thenReturn(faceImage);
      when(() => ref.read(registerFormInputProvider.notifier)).thenReturn(inputNotifier);
      when(() => faceImage.readAsBytes()).thenAnswer((_) async => imageBytes);
      when(() => validateUseCase.execute(any(that: isA<String>()))).thenAnswer(
        (_) async => Result.success(APIResponse.error(errorMessageModel)),
      );
      when(() => errorMessageModel.message).thenReturn('error message');

      final faceValidationStateNotifier = FaceValidationStateNotifier(ref: ref, validateUseCase: validateUseCase);
      final states = <FaceValidationState>[];
      faceValidationStateNotifier.addListener((state) => states.add(state));

      await faceValidationStateNotifier.validate();

      expect(states, [
        FaceValidationState.initial(),
        FaceValidationState.loading(),
        FaceValidationState.error(message: errorMessageModel.message),
      ]);
      verify(() => validateUseCase.execute(any(that: isA<String>())));
    });
  });
}
