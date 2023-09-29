import 'package:acda_mobile/src/utils/utils.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('[DateTime Extension]', () {
    test(
        'Given any datetime'
        'Then it should return buddistDate correctly', () {
      expect(DateTime(2023).buddistDate, DateTime(2566));
      expect(DateTime(2022).buddistDate, DateTime(2565));
      expect(DateTime(2021).buddistDate, DateTime(2564));
    });

    test(
        'Given any datetime'
        'Then it return our standard date format', () {
      expect(DateTime(2023, 12, 1).thaiStandardDateString, '01/12/2023');
      expect(DateTime(2024, 02, 11).thaiStandardDateString, '11/02/2024');
      expect(DateTime(2025, 09, 23).thaiStandardDateString, '23/09/2025');
    });

    test(
        'Given any datetime'
        'Then it return expetected datetime for result page', () {
      final a = DateTime(2023, 9, 20, 13, 32);

      expect(a.resultDate, 'WED. SEP 20, 2023');
      expect(a.timeM, '1.32 PM');
    });
  });
}
