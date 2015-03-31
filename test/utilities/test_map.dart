library klang.test.utilities.map;

import 'package:unittest/unittest.dart';
import 'package:klang/utilities/map.dart' as mapUtilities;

void tst_utilities_map() {
  group('utilities.map', () {
    group('isEmpty', () {
      test('isEmpty({}) = true', () {
        expect(mapUtilities.isEmpty({}), true);
      });

      test('isEmpty({"a":1}) = false', () {
        expect(mapUtilities.isEmpty({"a":1}), false);
      });

      test('isEmpty(null) = true', () {
        expect(mapUtilities.isEmpty(null), true);
      });
    });

    group('isNotEmpty', () {
      test('isNotEmpty({}) = false', () {
        expect(mapUtilities.isNotEmpty({}), false);
      });

      test('isNotEmpty({"a":1}) = true', () {
        expect(mapUtilities.isNotEmpty({"a":1}), true);
      });

      test('isNotEmpty(null) = false', () {
        expect(mapUtilities.isNotEmpty(null), false);
      });
    });

    group('nvl', () {
      test('nvl({"a":1}, null) = {"a":1}', () {
        expect(mapUtilities.nvl({"a":1}, null), {"a":1});
      });

      test('nvl(null, {"b":2}) = {"b":2}', () {
        expect(mapUtilities.nvl(null, {"b":2}), {"b":2});
      });

      test('nvl({"a":1}, {"b":2}) = {"a":1}', () {
        expect(mapUtilities.nvl({"a":1}, {"b":2}), {"a":1});
      });

      test('nvl({}, {"b":2}) = {}', () {
        expect(mapUtilities.nvl({}, {"b": 2}), {});
      });
    });

    group('nvlEmpty', () {
      test('nvlEmpty({"a":1}, null) = {"a":1}', () {
        expect(mapUtilities.nvlEmpty({"a":1}, null), {"a":1});
      });

      test('nvlEmpty(null, {"b":2}) = {"b":2}', () {
        expect(mapUtilities.nvlEmpty(null, {"b":2}), {"b":2});
      });

      test('nvlEmpty({"a":1}, {"b":2}) = {"a":1}', () {
        expect(mapUtilities.nvlEmpty({"a":1}, {"b":2}), {"a":1});
      });

      test('nvlEmpty({}, {"b":2}) = {}', () {
        expect(mapUtilities.nvlEmpty({}, {"b": 2}), {"b":2});
      });
    });

    group('notNull', () {
      test('notNull({"a":1}) = {"a":1}', () {
        expect(mapUtilities.notNull({"a":1}), {"a":1});
      });

      test('notNull(null) = {}', () {
        expect(mapUtilities.notNull(null), {});
      });
    });
  });
}