import 'package:acda_mobile/src/features/register/register_form/register_form.dart';
import 'package:acda_mobile/src/features/register/registration/widgets/info_form/data/data.dart';
import 'package:acda_mobile/src/features/register/registration/widgets/info_form/domain/domain.dart';
import 'package:acda_mobile/src/features/register/registration/widgets/info_form/logic/logic.dart';
import 'package:acda_mobile/src/utils/utils.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';

class MockRef extends Mock implements Ref {}

class MockIsValidToRegisterUseCase extends Mock implements IsValidToRegisterUseCase {}

class MockIRegisterValidityResultEntity extends Mock implements IRegisterValidityResultEntity {}

class MockRegisterFormInputState extends Mock implements RegisterFormInputState {}

class MockAnyException extends Mock implements AnyException {}

void main() {
  late MockRef ref;
  late MockIsValidToRegisterUseCase isValidToRegisterUseCase;
  late MockIRegisterValidityResultEntity data;
  late String email;
  late String studentIdWithU;
  late MockRegisterFormInputState input;
  late MockAnyException anyException;

  setUpAll(() {
    registerFallbackValue(RegisterValidityRequestModel(email: 'test@test.com', studentId: 'u6388073'));
  });

  setUp(() {
    ref = MockRef();
    isValidToRegisterUseCase = MockIsValidToRegisterUseCase();
    data = MockIRegisterValidityResultEntity();
    email = 'test@test.com';
    studentIdWithU = 'u6388073';
    input = MockRegisterFormInputState();
    anyException = MockAnyException();
  });

  group('RegisterValidityStateNotifier', () {
    test(
        'Given unregistered user '
        'When user fills valid email and studentID '
        'Then system should allow to register', () async {
      when(() => ref.read(registerFormInputProvider)).thenReturn(input);
      when(() => input.email).thenReturn(email);
      when(() => input.studentIdWithU).thenReturn(studentIdWithU);
      when(() => isValidToRegisterUseCase.execute(any(that: isA<RegisterValidityRequestModel>()))).thenAnswer(
        (_) async => Result.success(data),
      );
      when(() => data.isValid).thenReturn(true);

      final registerValidityStateNotifier = RegisterValidityStateNotifier(
        ref: ref,
        isValidToRegisterUseCase: isValidToRegisterUseCase,
      );
      final states = <RegisterValidityState>[];
      registerValidityStateNotifier.addListener((state) => states.add(state));

      await registerValidityStateNotifier.validate();

      expect(states, [
        RegisterValidityState.initial(),
        RegisterValidityState.loading(),
        RegisterValidityState.success(),
      ]);

      verify(() => isValidToRegisterUseCase.execute(any(that: isA<RegisterValidityRequestModel>()))).called(1);
    });

    test(
        'Given unregistered user '
        'When user fills invalid email or studentID '
        'Then system should not allow to register', () async {
      const invalidEmailOrStudentIDMessages = 'This email or studentId is already registered';
      when(() => ref.read(registerFormInputProvider)).thenReturn(input);
      when(() => input.email).thenReturn(email);
      when(() => input.studentIdWithU).thenReturn(studentIdWithU);
      when(() => isValidToRegisterUseCase.execute(any(that: isA<RegisterValidityRequestModel>()))).thenAnswer(
        (_) async => Result.success(data),
      );
      when(() => data.isValid).thenReturn(false);

      final registerValidityStateNotifier = RegisterValidityStateNotifier(
        ref: ref,
        isValidToRegisterUseCase: isValidToRegisterUseCase,
      );
      final states = <RegisterValidityState>[];
      registerValidityStateNotifier.addListener((state) => states.add(state));

      await registerValidityStateNotifier.validate();

      expect(states, [
        RegisterValidityState.initial(),
        RegisterValidityState.loading(),
        RegisterValidityState.error(message: invalidEmailOrStudentIDMessages),
      ]);

      verify(() => isValidToRegisterUseCase.execute(any(that: isA<RegisterValidityRequestModel>()))).called(1);
    });

    test(
        'Given unregistered user '
        'When user fills valid email or studentID with some error '
        'Then system should throw an unknown error', () async {
      const errorMessage = 'Internal server error';
      when(() => ref.read(registerFormInputProvider)).thenReturn(input);
      when(() => input.email).thenReturn(email);
      when(() => input.studentIdWithU).thenReturn(studentIdWithU);
      when(() => isValidToRegisterUseCase.execute(any(that: isA<RegisterValidityRequestModel>()))).thenAnswer(
        (_) async => Result.error(anyException),
      );

      final registerValidityStateNotifier = RegisterValidityStateNotifier(
        ref: ref,
        isValidToRegisterUseCase: isValidToRegisterUseCase,
      );
      final states = <RegisterValidityState>[];
      registerValidityStateNotifier.addListener((state) => states.add(state));

      await registerValidityStateNotifier.validate();

      expect(states, [
        RegisterValidityState.initial(),
        RegisterValidityState.loading(),
        RegisterValidityState.error(message: errorMessage),
      ]);

      verify(() => isValidToRegisterUseCase.execute(any(that: isA<RegisterValidityRequestModel>()))).called(1);
    });
  });
}
