import 'package:acda_mobile/src/features/register/register_form/register_form.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';

class MockRef extends Mock implements Ref {}

void main() {
  late RegisterFormValidationStateNotifier registerFormValidationStateNotifier;
  late MockRef ref;
  setUp(() {
    ref = MockRef();
    registerFormValidationStateNotifier = RegisterFormValidationStateNotifier(ref: ref);
  });

  group('RegisterFormValidationStateNotifier', () {
    /// The test values are legitimate only in 2023
    ///
    group('isStudentIdValid method: ', () {
      test(
          'Given alumni ICT student id'
          'Then it should be invalid', () {
        expect(registerFormValidationStateNotifier.isStudentIdValid('6288073'), false);
        expect(registerFormValidationStateNotifier.isStudentIdValid('6088074'), false);
      });
      test(
          'Given alumni DST student id'
          'Then it should be invalid', () {
        expect(registerFormValidationStateNotifier.isStudentIdValid('6287073'), false);
        expect(registerFormValidationStateNotifier.isStudentIdValid('6187074'), false);
      });
      test(
          'Given alumni non-ICT student id'
          'Then it should be invalid', () {
        expect(registerFormValidationStateNotifier.isStudentIdValid('6285073'), false);
        expect(registerFormValidationStateNotifier.isStudentIdValid('6183073'), false);
      });
      test(
          'Given senior ICT student id'
          'Then it should be valid', () {
        expect(registerFormValidationStateNotifier.isStudentIdValid('6388073'), true);
        expect(registerFormValidationStateNotifier.isStudentIdValid('6388054'), true);
      });
      test(
          'Given senior DST student id'
          'Then it should be valid', () {
        expect(registerFormValidationStateNotifier.isStudentIdValid('6387073'), true);
        expect(registerFormValidationStateNotifier.isStudentIdValid('6387012'), true);
      });
      test(
          'Given senior non-ICT student id'
          'Then it should be invalid', () {
        expect(registerFormValidationStateNotifier.isStudentIdValid('6345012'), false);
        expect(registerFormValidationStateNotifier.isStudentIdValid('6385014'), false);
      });
      test(
          'Given junior ICT student id'
          'Then it should be valid', () {
        expect(registerFormValidationStateNotifier.isStudentIdValid('6488054'), true);
        expect(registerFormValidationStateNotifier.isStudentIdValid('6488023'), true);
      });
      test(
          'Given junior DST student id'
          'Then it should be valid', () {
        expect(registerFormValidationStateNotifier.isStudentIdValid('6487023'), true);
        expect(registerFormValidationStateNotifier.isStudentIdValid('6487020'), true);
      });
      test(
          'Given junior non-ICT student id'
          'Then it should be invalid', () {
        expect(registerFormValidationStateNotifier.isStudentIdValid('6485014'), false);
        expect(registerFormValidationStateNotifier.isStudentIdValid('6482065'), false);
      });
      test(
          'Given sophomore ICT student id'
          'Then it should be valid', () {
        expect(registerFormValidationStateNotifier.isStudentIdValid('6588053'), true);
        expect(registerFormValidationStateNotifier.isStudentIdValid('6588100'), true);
      });
      test(
          'Given sophomore DST student id'
          'Then it should be valid', () {
        expect(registerFormValidationStateNotifier.isStudentIdValid('6587023'), true);
        expect(registerFormValidationStateNotifier.isStudentIdValid('6587030'), true);
      });
      test(
          'Given sophomore non-ICT student id'
          'Then it should be invalid', () {
        expect(registerFormValidationStateNotifier.isStudentIdValid('6585014'), false);
        expect(registerFormValidationStateNotifier.isStudentIdValid('6589344'), false);
      });
      test(
          'Given freshmen ICT student id'
          'Then it should be valid', () {
        expect(registerFormValidationStateNotifier.isStudentIdValid('6688122'), true);
        expect(registerFormValidationStateNotifier.isStudentIdValid('6688233'), true);
      });
      test(
          'Given freshmen DST student id'
          'Then it should be valid', () {
        expect(registerFormValidationStateNotifier.isStudentIdValid('6687122'), true);
        expect(registerFormValidationStateNotifier.isStudentIdValid('6687002'), true);
      });
      test(
          'Given freshmen non-ICT student id'
          'Then it should be invalid', () {
        expect(registerFormValidationStateNotifier.isStudentIdValid('6634034'), false);
        expect(registerFormValidationStateNotifier.isStudentIdValid('6654114'), false);
      });
      test(
          'Given special case student id'
          'Then it should be invalid', () {
        expect(registerFormValidationStateNotifier.isStudentIdValid(null), false);
        expect(registerFormValidationStateNotifier.isStudentIdValid(''), false);
        expect(registerFormValidationStateNotifier.isStudentIdValid('123'), false);
        expect(registerFormValidationStateNotifier.isStudentIdValid('123345545454'), false);
        expect(registerFormValidationStateNotifier.isStudentIdValid('1234567'), false);
        expect(registerFormValidationStateNotifier.isStudentIdValid('1234567af'), false);
        expect(registerFormValidationStateNotifier.isStudentIdValid('addfg'), false);
      });
    });
  });
}
