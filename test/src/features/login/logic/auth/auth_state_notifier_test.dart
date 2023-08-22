import 'package:acda_mobile/src/features/login/data/data.dart';
import 'package:acda_mobile/src/features/login/domain/domain.dart';
import 'package:acda_mobile/src/features/login/logic/logic.dart';
import 'package:acda_mobile/src/utils/utils.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';

class MockAuthenticateUseCase extends Mock implements AuthenticateUseCase {}

class MockRef extends Mock implements Ref {}

class MockLoginFormInputState extends Mock implements LoginFormInputState {}

class MockAPIResponse<IAuthTokenEntity> extends Mock implements APIResponse<IAuthTokenEntity> {}

class MockAnyException extends Mock implements AnyException {}

class MockLoginFormValidationStateNotifier extends Mock implements LoginFormValidationStateNotifier {}

void main() {
  late MockAuthenticateUseCase authenticateUseCase;
  late MockLoginFormInputState authState;
  late MockRef ref;
  late MockAPIResponse<IAuthTokenEntity> apiResponse;
  late MockLoginFormValidationStateNotifier loginFormValidationStateNotifier;

  setUp(() {
    authenticateUseCase = MockAuthenticateUseCase();
    authState = MockLoginFormInputState();
    ref = MockRef();
    apiResponse = MockAPIResponse<IAuthTokenEntity>();
    loginFormValidationStateNotifier = MockLoginFormValidationStateNotifier();
  });

  group('AuthStateNotifier', () {
    test(
      'Given user'
      'When user login with email and password'
      'Then user should login suceess',
      () async {
        const email = 'test@student.mahidol.ac.th';
        const password = 'testpassword';

        when(() => ref.read(loginFormInputProvider)).thenReturn(authState);
        when(() => authState.email).thenReturn(email);
        when(() => authState.password).thenReturn(password);
        when(() => authenticateUseCase.execute(AuthRequestBodyModel(email: email, password: password)))
            .thenAnswer((_) async => Result.success(apiResponse));
        final authStateNotifier = AuthStateNotifier(ref: ref, authenticateUseCase: authenticateUseCase);
        final List<AuthState> states = [];
        authStateNotifier.addListener((state) => states.add(state));

        await authStateNotifier.authenticate();

        expect(states, [
          AuthState.initial(),
          AuthState.loading(),
        ]);

        verify(() => authenticateUseCase.execute(AuthRequestBodyModel(email: email, password: password))).called(1);
      },
    );

    test(
      'Given user'
      'When user login with email and password'
      'Then user should login fail',
      () async {
        const email = 'test@student.mahidol.ac.th';
        const password = 'testpassword';

        when(() => ref.read(loginFormInputProvider)).thenReturn(authState);
        when(() => authState.email).thenReturn(email);
        when(() => authState.password).thenReturn(password);
        when(() => authenticateUseCase.execute(AuthRequestBodyModel(email: email, password: password)))
            .thenAnswer((_) async => Result.error(MockAnyException()));
        when(() => ref.read(loginFormValidationStateProvider.notifier)).thenReturn(loginFormValidationStateNotifier);

        final authStateNotifier = AuthStateNotifier(ref: ref, authenticateUseCase: authenticateUseCase);
        final List<AuthState> states = [];
        authStateNotifier.addListener((state) => states.add(state));

        await authStateNotifier.authenticate();

        // expectLater(() => authStateNotifier.authenticate(), throwsA(isA<AnyException>()));

        verify(
          () => authenticateUseCase.execute(AuthRequestBodyModel(email: email, password: password)),
        ).called(1);

        expect(states, [
          AuthState.initial(),
          AuthState.loading(),
          AuthState.error(),
        ]);
        expect(authStateNotifier.safeState, AuthState.error());
      },
    );
  });
}
