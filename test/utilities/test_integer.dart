library klang.test.utilities.integer;

import 'package:unittest/unittest.dart';
import 'package:klang/utilities/integer.dart';

void tst_utilities_integer() {
  group('utilities.integer', () {
    group('nvl', () {
      test('nvl(1, null) = 1', () {
        expect(nvl(1, null), 1);
      });

      test('nvl(null, 2) = 2', () {
        expect(nvl(null, 2), 2);
      });

      test('nvl(1, 2) = 1', () {
        expect(nvl(1, 2), 1);
      });
    });

    group('min', () {
      test('min(1, 2) = 1', () {
        expect(min(1, 2), 1);
      });

      test('min(2, 1) = 1', () {
        expect(min(2, 1), 1);
      });

      test('min(1, null) = 1', () {
        expect(min(1, null), 1);
      });

      test('min(null, 2) = 2', () {
        expect(min(null, 2), 2);
      });

      test('min(null, null) = null', () {
        expect(min(null, null), null);
      });
    });

    group('max', () {
      test('max(1, 2) = 2', () {
        expect(max(1, 2), 2);
      });

      test('max(2, 1) = 2', () {
        expect(max(2, 1), 2);
      });

      test('max(1, null) = 1', () {
        expect(max(1, null), 1);
      });

      test('max(null, 2) = 2', () {
        expect(max(null, 2), 2);
      });

      test('max(null, null) = null', () {
        expect(max(null, null), null);
      });
    });

    group('minFromList', () {
      test('minFromList([1, 2, 3]) = 1', () {
        expect(minFromList([1, 2, 3]), 1);
      });

      test('minFromList([3, 2, 1]) = 1', () {
        expect(minFromList([3, 2, 1]), 1);
      });

      test('minFromList([1, null, 3]) = 1', () {
        expect(minFromList([1, null, 3]), 1);
      });

      test('minFromList([null, 2, 3]) = 2', () {
        expect(minFromList([null, 2, 3]), 2);
      });

      test('minFromList([null, null, null]) = null', () {
        expect(minFromList([null, null, null]), null);
      });

      test('minFromList(null, 0) = 0', () {
        expect(minFromList(null, 0), 0);
      });
    });

    group('minFromList', () {
      test('maxFromList([1, 2, 3]) = 3', () {
        expect(maxFromList([1, 2, 3]), 3);
      });

      test('maxFromList([3, 2, 1]) = 3', () {
        expect(maxFromList([3, 2, 1]), 3);
      });

      test('maxFromList([1, null, 3]) = 3', () {
        expect(maxFromList([1, null, 3]), 3);
      });

      test('maxFromList([null, 2, 3]) = 3', () {
        expect(maxFromList([null, 2, 3]), 3);
      });

      test('maxFromList([null, null, null]) = null', () {
        expect(maxFromList([null, null, null]), null);
      });

      test('maxFromList(null, 0) = 0', () {
        expect(maxFromList(null, 0), 0);
      });
    });
  });
}