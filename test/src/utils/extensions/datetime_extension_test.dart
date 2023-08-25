import 'package:acda_mobile/src/utils/utils.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('[DateTime Extension] buddhistDate', () {
    test('Given any datetime' 'Then it should return buddistDate correctly', () {
      expect(DateTime(2023).buddistDate, DateTime(2566));
      expect(DateTime(2022).buddistDate, DateTime(2565));
      expect(DateTime(2021).buddistDate, DateTime(2564));
    });
  });
}
