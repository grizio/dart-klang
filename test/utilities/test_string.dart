library klang.test.utilities.string;

import 'package:unittest/unittest.dart';
import 'package:klang/utilities/string.dart';

void tst_utilities_string() {
  group('utilities.string', () {
    group('nvl', () {
      test('nvl("a", null) = "a"', () {
        expect(nvl('a', null), 'a');
      });

      test('nvl(null, "b") = "b"', () {
        expect(nvl(null, 'b'), 'b');
      });

      test('nvl("a", "b") = "a"', () {
        expect(nvl('a', 'b'), 'a');
      });
    });
  });
}