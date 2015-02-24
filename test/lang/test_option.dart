library klang.test.lang.option;

import 'package:unittest/unittest.dart';
import 'package:klang/src/lang/option.dart';

String testMatch(Option option) {
  return option.match(some: (_) => 'some', none: () => 'none');
}

dynamic returnMatch(Option option) {
  return option.match(some: (_) => _, none: () => null);
}

void tst_lang_option() {
  group('lang.option', () {
    group('Constructor, Some & None', (){
      test('new Option(1).isDefined', (){
        expect(new Option(1).isDefined, true);
      });

      test('!new Option().isDefined', (){
        expect(new Option().isDefined, false);
      });

      test('Some(1).isDefined', (){
        expect(Some(1).isDefined, true);
      });

      test('!None.isDefined', (){
        expect(None.isDefined, false);
      });

      test('!new Option(1).isNotDefined', (){
        expect(new Option(1).isNotDefined, false);
      });

      test('new Option().isNotDefined', (){
        expect(new Option().isNotDefined, true);
      });

      test('!Some(1).isNotDefined', (){
        expect(Some(1).isNotDefined, false);
      });

      test('None.isNotDefined', (){
        expect(None.isNotDefined, true);
      });
    });

    group('match', (){
      test('testMatch(Some(1)) = some', (){
        expect(testMatch(Some(1)), 'some');
      });

      test('testMatch(None) = none', (){
        expect(testMatch(None), 'none');
      });

      test('returnMatch(Some(1)) = 1', (){
        expect(returnMatch(Some(1)), 1);
      });

      test('returnMatch(None) = null', (){
        expect(returnMatch(None), null);
      });
    });

    group('match', (){
      test('testMatch(Some(1)) = some', (){
        expect(testMatch(Some(1)), 'some');
      });

      test('testMatch(None) = none', (){
        expect(testMatch(None), 'none');
      });

      test('returnMatch(Some(1)) = 1', (){
        expect(returnMatch(Some(1)), 1);
      });

      test('returnMatch(None) = null', (){
        expect(returnMatch(None), null);
      });
    });

    ///     Some(1) == Some(1) // true
    ///     None    == None    // true
    ///     Some(1) == Some(2) // false
    ///     Some(1) == 1       // false

    group('==', (){
      test('new Option(1) = new Option(1)', (){
        expect(new Option(1) == new Option(1), true);
      });

      test('new Option() = new Option()', (){
        expect(new Option() == new Option(), true);
      });

      test('Some(1) = Some(1)', (){
        expect(Some(1) == Some(1), true);
      });

      test('None = None', (){
        expect(None == None, true);
      });

      test('Some(1) = new Option(1)', (){
        expect(Some(1) == new Option(1), true);
      });

      test('None = new Option()', (){
        expect(None == new Option(), true);
      });

      test('Some(1) != Some(2)', (){
        expect(Some(1) == Some(2), false);
      });

      test('Some(1) != 1', (){
        expect(Some(1) == 1, false);
      });

      test('Some(1) != None', (){
        expect(Some(1) == None, false);
      });
    });

    group('map', (){
      test('Some(1).map((a) => a + a) = Some(2)', (){
        expect(Some(1).map((a) => a + a), Some(2));
      });

      test('None.map((a) => a + a) = None', (){
        expect(None.map((a) => a + a), None);
      });
    });

    group('forEach', (){
      test('Some(1).forEach((a) => value = a) => 1', (){
        var value = null;
        Some(1).forEach((a) => value = a);
        expect(value, 1);
      });

      test('None.forEach((a) => value = a) => null', (){
        var value = null;
        None.forEach((a) => value = a);
        expect(value, null);
      });
    });

    group('get', (){
      test('Some(1).get() = 1', (){
        expect(Some(1).get(), 1);
      });

      test('None.get() = null', (){
        expect(None.get(), null);
      });
    });

    group('value', (){
      test('Some(1).value = 1', (){
        expect(Some(1).value, 1);
      });

      test('None.value = null', (){
        expect(None.value, null);
      });
    });

    group('getOrElse', (){
      test('Some(1).getOrElse(() => 2) = 1', (){
        expect(Some(1).getOrElse(() => 2), 1);
      });

      test('None.getOrElse(() => 2) = 2', (){
        expect(None.getOrElse(() => 2), 2);
      });
    });

    group('orElse', (){
      test('Some(1).orElse(() => 2) = Some(1)', (){
        expect(Some(1).orElse(() => 2), Some(1));
      });

      test('None.orElse(() => 2) = Some(2)', (){
        expect(None.orElse(() => 2), Some(2));
      });
    });

    group('contains', (){
      test('Some(1).contains(1) = true', (){
        expect(Some(1).contains(1), true);
      });

      test('Some(1).contains(2) = false', (){
        expect(Some(1).contains(2), false);
      });

      test('None.contains(1) = false', (){
        expect(None.contains(1), false);
      });
    });

    group('count', (){
      test('Some(1).count((a) => a > 0) = 1', (){
        expect(Some(1).count((a) => a > 0), 1);
      });

      test('Some(1).count((a) => a > 2) = 0', (){
        expect(Some(1).count((a) => a > 2), 0);
      });

      test('None.count((a) => a > 0) = 0', (){
        expect(None.count((a) => a > 0), 0);
      });
    });

    group('exists', (){
      test('Some(1).exists((_) => _ > 0) = 1', (){
        expect(Some(1).exists((_) => _ > 0), true);
      });

      test('Some(1).exists((_) => _ > 2) = 0', (){
        expect(Some(1).exists((_) => _ > 2), false);
      });

      test('None.exists((_) => _ > 0) = 0', (){
        expect(None.exists((_) => _ > 0), false);
      });
    });

    group('filter', (){
      test('Some(1).filter((a) => a > 0) = Some(1)', (){
        expect(Some(1).filter((a) => a > 0), Some(1));
      });

      test('Some(1).filter((a) => a > 2) = None', (){
        expect(Some(1).filter((a) => a > 2), None);
      });

      test('None.filter((a) => a > 0) = None', (){
        expect(None.filter((a) => a > 0), None);
      });
    });

    group('filterNot', (){
      test('Some(1).filterNot((a) => a > 0) = None', (){
        expect(Some(1).filterNot((a) => a > 0), None);
      });

      test('Some(1).filterNot((a) => a > 2) = Some(1)', (){
        expect(Some(1).filterNot((a) => a > 2), Some(1));
      });

      test('None.filterNot((a) => a > 0) = None', (){
        expect(None.filterNot((a) => a > 0), None);
      });
    });

    group('find', (){
      test('Some(1).find((a) => a > 0) = Some(1)', (){
        expect(Some(1).find((a) => a > 0), Some(1));
      });

      test('Some(1).find((a) => a > 2) = Some(1)', (){
        expect(Some(1).find((a) => a > 2), None);
      });

      test('None.find((a) => a > 0) = None', (){
        expect(None.find((a) => a > 0), None);
      });
    });

    group('toString', (){
      test('Some(1).toString() = "1"', (){
        expect(Some(1).toString(), "1");
      });

      test('Some("a").toString() = "a"', (){
        expect(Some("a").toString(), "a");
      });

      test('None.toString() = "None"', (){
        expect(None.toString(), "None");
      });
    });

    group('length', (){
      test('Some(1).length = 1', (){
        expect(Some(1).length, 1);
      });

      test('None.length = 0', (){
        expect(None.length, 0);
      });
    });
  });
}