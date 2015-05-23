library klang.test.utilities.string;

import 'package:unittest/unittest.dart';
import 'package:klang/utilities/string.dart' as stringUtilities;

void tst_utilities_string() {
  group('utilities.string', () {
    group('nvl', () {
      test('nvl("a", null) = "a"', () {
        expect(stringUtilities.nvl('a', null), 'a');
      });

      test('nvl(null, "b") = "b"', () {
        expect(stringUtilities.nvl(null, 'b'), 'b');
      });

      test('nvl("a", "b") = "a"', () {
        expect(stringUtilities.nvl('a', 'b'), 'a');
      });
    });

    group('isEmpty', () {
      test('isEmpty(null) = true', () {
        expect(stringUtilities.isEmpty(null), true);
      });

      test('isEmpty("") = true', () {
        expect(stringUtilities.isEmpty(''), true);
      });

      test('isEmpty(" ") = false', () {
        expect(stringUtilities.isEmpty(' '), false);
      });

      test('isEmpty("a") = false', () {
        expect(stringUtilities.isEmpty('a'), false);
      });
    });

    group('isNotEmpty', () {
      test('isNotEmpty(null) = false', () {
        expect(stringUtilities.isNotEmpty(null), false);
      });

      test('isNotEmpty("") = false', () {
        expect(stringUtilities.isNotEmpty(''), false);
      });

      test('isNotEmpty(" ") = true', () {
        expect(stringUtilities.isNotEmpty(' '), true);
      });

      test('isNotEmpty("a") = true', () {
        expect(stringUtilities.isNotEmpty('a'), true);
      });
    });

    group('isBlank', () {
      test('isBlank(null) = true', () {
        expect(stringUtilities.isBlank(null), true);
      });

      test('isBlank("") = true', () {
        expect(stringUtilities.isBlank(''), true);
      });

      test('isBlank(" ") = true', () {
        expect(stringUtilities.isBlank(' '), true);
      });

      test('isBlank("a") = false', () {
        expect(stringUtilities.isBlank('a'), false);
      });
    });

    group('isNotBlank', () {
      test('isNotBlank(null) = false', () {
        expect(stringUtilities.isNotBlank(null), false);
      });

      test('isNotBlank("") = false', () {
        expect(stringUtilities.isNotBlank(''), false);
      });

      test('isNotBlank(" ") = false', () {
        expect(stringUtilities.isNotBlank(' '), false);
      });

      test('isNotBlank("a") = true', () {
        expect(stringUtilities.isNotBlank('a'), true);
      });
    });

    group('equals', () {
      test('equals(null, null) = true', () {
        expect(stringUtilities.equals(null, null), true);
      });

      test('equals(null, "a") = false', () {
        expect(stringUtilities.equals(null, 'a'), false);
      });

      test('equals("a", null) = false', () {
        expect(stringUtilities.equals('a', null), false);
      });

      test('equals("a", "a") = true', () {
        expect(stringUtilities.equals('a', 'a'), true);
      });

      test('equals("a", "A") = false', () {
        expect(stringUtilities.equals('a', 'A'), false);
      });
    });

    group('notEquals', () {
      test('notEquals(null, null) = false', () {
        expect(stringUtilities.notEquals(null, null), false);
      });

      test('notEquals(null, "a") = true', () {
        expect(stringUtilities.notEquals(null, 'a'), true);
      });

      test('notEquals("a", null) = true', () {
        expect(stringUtilities.notEquals('a', null), true);
      });

      test('notEquals("a", "a") = false', () {
        expect(stringUtilities.notEquals('a', 'a'), false);
      });

      test('notEquals("a", "A") = true', () {
        expect(stringUtilities.notEquals('a', 'A'), true);
      });
    });

    group('equalsIgnoreCase', () {
      test('equalsIgnoreCase(null, null) = true', () {
        expect(stringUtilities.equalsIgnoreCase(null, null), true);
      });

      test('equalsIgnoreCase(null, "a") = false', () {
        expect(stringUtilities.equalsIgnoreCase(null, 'a'), false);
      });

      test('equalsIgnoreCase("a", null) = false', () {
        expect(stringUtilities.equalsIgnoreCase('a', null), false);
      });

      test('equalsIgnoreCase("a", "a") = true', () {
        expect(stringUtilities.equalsIgnoreCase('a', 'a'), true);
      });

      test('equalsIgnoreCase("a", "A") = false', () {
        expect(stringUtilities.equalsIgnoreCase('a', 'A'), true);
      });
    });

    group('notEqualsIgnoreCase', () {
      test('notEqualsIgnoreCase(null, null) = false', () {
        expect(stringUtilities.notEqualsIgnoreCase(null, null), false);
      });

      test('notEqualsIgnoreCase(null, "a") = true', () {
        expect(stringUtilities.notEqualsIgnoreCase(null, 'a'), true);
      });

      test('notEqualsIgnoreCase("a", null) = true', () {
        expect(stringUtilities.notEqualsIgnoreCase('a', null), true);
      });

      test('notEqualsIgnoreCase("a", "a") = false', () {
        expect(stringUtilities.notEqualsIgnoreCase('a', 'a'), false);
      });

      test('notEqualsIgnoreCase("a", "A") = false', () {
        expect(stringUtilities.notEqualsIgnoreCase('a', 'A'), false);
      });
    });

    group('isSecuredPassword', () {
      test('isSecuredPassword("Abcdef012345-") = true', () {
        expect(stringUtilities.isSecuredPassword('Abcdef012345-'), true);
      });

      test('isSecuredPassword("Abcdef@012345") = true', () {
        expect(stringUtilities.isSecuredPassword('Abcdef@012345'), true);
      });

      test('isSecuredPassword("A@eiu90u+9u") = true', () {
        expect(stringUtilities.isSecuredPassword('A@eiu90u+9u'), true);
      });

      test('isSecuredPassword("Abcdef012345") = false', () {
        expect(stringUtilities.isSecuredPassword('Abcdef012345'), false);
      });

      test('isSecuredPassword("Abcdefghijk-") = false', () {
        expect(stringUtilities.isSecuredPassword('Abcdefghijk-'), false);
      });

      test('isSecuredPassword("abcdef012345-") = false', () {
        expect(stringUtilities.isSecuredPassword('abcdef012345-'), false);
      });

      test('isSecuredPassword("Ab0-") = false', () {
        expect(stringUtilities.isSecuredPassword('Ab0-'), false);
      });

      test('isSecuredPassword("abcdef012345", !needUppercaseLetter, !needLowercaseLetter, !needSymbol) = true', () {
        expect(stringUtilities.isSecuredPassword('abcdef012345', needUppercaseLetter: false, needLowercaseLetter: false, needSymbol: false), true);
      });

      test('isSecuredPassword("ABCDEF012345", !needUppercaseLetter, !needLowercaseLetter, !needSymbol) = true', () {
        expect(stringUtilities.isSecuredPassword('ABCDEF012345', needUppercaseLetter: false, needLowercaseLetter: false, needSymbol: false), true);
      });

      test('isSecuredPassword("abcdefghij", !needUppercaseLetter, !needLowercaseLetter, !needSymbol) = false', () {
        expect(stringUtilities.isSecuredPassword('abcdefghij', needUppercaseLetter: false, needLowercaseLetter: false, needSymbol: false), false);
      });

      test('isSecuredPassword("012345678", !needUppercaseLetter, !needLowercaseLetter, !needSymbol) = false', () {
        expect(stringUtilities.isSecuredPassword('012345678', needUppercaseLetter: false, needLowercaseLetter: false, needSymbol: false), false);
      });
    });

    group('isNotSecuredPassword', () {
      test('isNotSecuredPassword("Abcdef012345-") = false', () {
        expect(stringUtilities.isNotSecuredPassword('Abcdef012345-'), false);
      });

      test('isNotSecuredPassword("Abcdef@012345") = false', () {
        expect(stringUtilities.isNotSecuredPassword('Abcdef@012345'), false);
      });

      test('isNotSecuredPassword("A@eiu90u+9u") = false', () {
        expect(stringUtilities.isNotSecuredPassword('A@eiu90u+9u'), false);
      });

      test('isNotSecuredPassword("Abcdef012345") = true', () {
        expect(stringUtilities.isNotSecuredPassword('Abcdef012345'), true);
      });

      test('isNotSecuredPassword("Abcdefghijk-") = true', () {
        expect(stringUtilities.isNotSecuredPassword('Abcdefghijk-'), true);
      });

      test('isNotSecuredPassword("abcdef012345-") = true', () {
        expect(stringUtilities.isNotSecuredPassword('abcdef012345-'), true);
      });

      test('isNotSecuredPassword("Ab0-") = true', () {
        expect(stringUtilities.isNotSecuredPassword('Ab0-'), true);
      });

      test('isNotSecuredPassword("abcdef012345", !needUppercaseLetter, !needLowercaseLetter, !needSymbol) = false', () {
        expect(stringUtilities.isNotSecuredPassword('abcdef012345', needUppercaseLetter: false, needLowercaseLetter: false, needSymbol: false), false);
      });

      test('isNotSecuredPassword("ABCDEF012345", !needUppercaseLetter, !needLowercaseLetter, !needSymbol) = false', () {
        expect(stringUtilities.isNotSecuredPassword('ABCDEF012345', needUppercaseLetter: false, needLowercaseLetter: false, needSymbol: false), false);
      });

      test('isNotSecuredPassword("abcdefghij", !needUppercaseLetter, !needLowercaseLetter, !needSymbol) = true', () {
        expect(stringUtilities.isNotSecuredPassword('abcdefghij', needUppercaseLetter: false, needLowercaseLetter: false, needSymbol: false), true);
      });

      test('isNotSecuredPassword("012345678", !needUppercaseLetter, !needLowercaseLetter, !needSymbol) = true', () {
        expect(stringUtilities.isNotSecuredPassword('012345678', needUppercaseLetter: false, needLowercaseLetter: false, needSymbol: false), true);
      });
    });
  });
}