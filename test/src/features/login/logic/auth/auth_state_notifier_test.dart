import 'package:acda_mobile/src/features/login/data/data.dart';
import 'package:acda_mobile/src/features/login/domain/domain.dart';
import 'package:acda_mobile/src/features/login/logic/logic.dart';
import 'package:acda_mobile/src/utils/utils.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';

class MockAuthenticateUseCase extends Mock implements AuthenticateUseCase {}

class MockRef extends Mock implements Ref {}

class MockLoginFormInputState extends Mock implements LoginFormInputState {}

class MockAPIResponse<IAuthTokenEntity> extends Mock implements APIResponse<IAuthTokenEntity> {}

class MockAnyException extends Mock implements AnyException {}

class MockLoginFormValidationStateNotifier extends Mock implements LoginFormValidationStateNotifier {}

class MockIAuthTokenEntity extends Mock implements IAuthTokenEntity {}

class MockLoginFormInputStateNotifier extends Mock implements LoginFormInputStateNotifier {}

void main() {
  late MockAuthenticateUseCase authenticateUseCase;
  late MockLoginFormInputState authState;
  late MockRef ref;
  late MockLoginFormValidationStateNotifier loginFormValidationStateNotifier;
  late MockIAuthTokenEntity authTokenEntity;
  late MockLoginFormInputStateNotifier loginFormInputStateNotifier;
  late MockAnyException anyException;

  setUpAll(() {
    FlutterSecureStorage.setMockInitialValues({});
  });

  setUp(() {
    authenticateUseCase = MockAuthenticateUseCase();
    authState = MockLoginFormInputState();
    ref = MockRef();
    anyException = MockAnyException();
    loginFormValidationStateNotifier = MockLoginFormValidationStateNotifier();
    authTokenEntity = MockIAuthTokenEntity();
    loginFormInputStateNotifier = MockLoginFormInputStateNotifier();
  });

  group('AuthStateNotifier', () {
    test(
      'Given user'
      'When user login with email and password'
      'Then user should login suceess',
      () async {
        const studentId = '6388073';
        const password = 'testpassword';
        const token = '<mock-token-valueregergeg;la,>';

        when(() => ref.read(loginFormInputProvider)).thenReturn(authState);
        when(() => authState.studentId).thenReturn(studentId);
        when(() => authState.password).thenReturn(password);
        when(
          () => authenticateUseCase.execute(AuthRequestBodyModel(studentId: 'u$studentId', password: password)),
        ).thenAnswer((_) async => Result.success(APIResponse.success(authTokenEntity)));
        when(() => authTokenEntity.token).thenReturn(token);

        when(() => ref.read(loginFormValidationStateProvider.notifier)).thenReturn(loginFormValidationStateNotifier);
        when(() => ref.read(loginFormInputProvider.notifier)).thenReturn(loginFormInputStateNotifier);

        final authStateNotifier = AuthStateNotifier(ref: ref, authenticateUseCase: authenticateUseCase);
        final List<AuthState> states = [];
        authStateNotifier.addListener((state) => states.add(state));

        await authStateNotifier.authenticate();

        expect(states, [
          AuthState.initial(),
          AuthState.loading(),
          AuthState.data(data: authTokenEntity),
        ]);

        verify(
          () => authenticateUseCase.execute(AuthRequestBodyModel(studentId: 'u$studentId', password: password)),
        ).called(1);
      },
    );

    test(
      'Given user'
      'When user login with email and password'
      'Then user should login fail',
      () async {
        const studentId = '6388073';
        const password = 'testpassword';
        const token = '<mock-token-valueregergeg;la,>';

        when(() => ref.read(loginFormInputProvider)).thenReturn(authState);
        when(() => authState.studentId).thenReturn(studentId);
        when(() => authState.password).thenReturn(password);
        when(
          () => authenticateUseCase.execute(AuthRequestBodyModel(studentId: 'u$studentId', password: password)),
        ).thenAnswer((_) async => Result.error(anyException));
        when(() => authTokenEntity.token).thenReturn(token);

        when(() => ref.read(loginFormValidationStateProvider.notifier)).thenReturn(loginFormValidationStateNotifier);
        when(() => ref.read(loginFormInputProvider.notifier)).thenReturn(loginFormInputStateNotifier);

        final authStateNotifier = AuthStateNotifier(ref: ref, authenticateUseCase: authenticateUseCase);
        final List<AuthState> states = [];
        authStateNotifier.addListener((state) => states.add(state));

        await authStateNotifier.authenticate();

        expect(states, [
          AuthState.initial(),
          AuthState.loading(),
          AuthState.error(),
        ]);

        verify(
          () => authenticateUseCase.execute(AuthRequestBodyModel(studentId: 'u$studentId', password: password)),
        ).called(1);
      },
    );
  });
}
