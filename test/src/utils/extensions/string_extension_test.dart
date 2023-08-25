import 'package:acda_mobile/src/utils/utils.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('[String Extension] isNumeric', () {
    test('Given valid string value' 'Then field returns true', () {
      expect('6388073'.isNumeric, true);
      expect('163880734'.isNumeric, true);
      expect('0000'.isNumeric, true);
      expect('11123'.isNumeric, true);
      expect('32423432411'.isNumeric, true);
    });

    test('Given valid string value' 'Then field returns false', () {
      expect('a6388073'.isNumeric, false);
      expect('163880734a'.isNumeric, false);
      expect('aaaaaa'.isNumeric, false);
      expect('1f112a3'.isNumeric, false);
      expect('32A4234v32q411'.isNumeric, false);
    });
  });
}
