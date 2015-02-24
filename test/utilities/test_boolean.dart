library klang.test.utilities.boolean;

import 'package:unittest/unittest.dart';
import 'package:klang/utilities/boolean.dart';

void tst_utilities_boolean() {
  group('utilities.boolean', () {
    group('nvl', () {
      test('nvl(true, null) = true', () {
        expect(nvl(true, null), true);
      });

      test('nvl(null, true) = true', () {
        expect(nvl(null, true), true);
      });

      test('nvl(true, false) = true', () {
        expect(nvl(true, false), true);
      });
    });
  });
}