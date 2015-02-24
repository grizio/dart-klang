library klang.test.utilities.list;

import 'package:unittest/unittest.dart';
import 'package:klang/utilities/list.dart' as listUtilities;

void tst_utilities_list() {
  group('utilities.list', () {
    group('isEmpty', () {
      test('isEmpty([]) = true', () {
        expect(listUtilities.isEmpty([]), true);
      });

      test('isEmpty([1]) = false', () {
        expect(listUtilities.isEmpty([1]), false);
      });

      test('isEmpty(null) = true', () {
        expect(listUtilities.isEmpty(null), true);
      });
    });

    group('isNotEmpty', () {
      test('isNotEmpty([]) = false', () {
        expect(listUtilities.isNotEmpty([]), false);
      });

      test('isNotEmpty([1]) = true', () {
        expect(listUtilities.isNotEmpty([1]), true);
      });

      test('isNotEmpty(null) = false', () {
        expect(listUtilities.isNotEmpty(null), false);
      });
    });
  });
}