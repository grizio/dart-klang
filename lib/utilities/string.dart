library klang.utilities.string;

/// Returns [val1] if not null, otherwise [val2].
///
///     nvl('a', null) // 'a'
///     nvl(null, 'b') // 'b'
///     nvl('a', 'b')  // 'a'
String nvl(String val1, String val2) {
  if (val1 == null) {
    return val2;
  } else {
    return val1;
  }
}

/// Checks if given string is null or empty.
///
///     isEmpty(null) // true
///     isEmpty('')   // true
///     isEmpty(' ')  // false
///     isEmpty('a')  // false
bool isEmpty(String str) => str == null || str.isEmpty;

/// Checks if given string is not null nor empty.
///
///     isNotEmpty(null) // false
///     isNotEmpty('')   // false
///     isNotEmpty(' ')  // true
///     isNotEmpty('a')  // true
bool isNotEmpty(String str) => !isEmpty(str);

/// Checks if given string is null or blank.
///
///     isBlank(null) // true
///     isBlank('')   // true
///     isBlank(' ')  // true
///     isBlank('a')  // false
bool isBlank(String str) => str == null || str.trim().isEmpty;

/// Checks if given string is not null nor blank.
///
///     isNotBlank(null) // false
///     isNotBlank('')   // false
///     isNotBlank(' ')  // false
///     isNotBlank('a')  // true
bool isNotBlank(String str) => !isBlank(str);

/// Checks if given strings are equals.
///
///     equals(null, null) // true
///     equals(null, 'a')  // false
///     equals('a', null)  // false
///     equals('a', 'a')   // true
///     equals('a', 'A')   // false
bool equals(String str1, String str2) => str1 == null && str2 == null || str1 != null && str2 != null && str1 == str2;

/// Checks if given strings are not equals.
///
///     notEquals(null, null) // false
///     notEquals(null, 'a')  // true
///     notEquals('a', null)  // true
///     notEquals('a', 'a')   // false
///     notEquals('a', 'A')   // true
bool notEquals(String str1, String str2) => !equals(str1, str2);

/// Checks if given strings are equals (case insensitive).
///
///     equalsIgnoreCase(null, null) // true
///     equalsIgnoreCase(null, 'a')  // false
///     equalsIgnoreCase('a', null)  // false
///     equalsIgnoreCase('a', 'a')   // true
///     equalsIgnoreCase('a', 'A')   // true
bool equalsIgnoreCase(String str1, String str2) => str1 == null && str2 == null || str1 != null && str2 != null && str1.toLowerCase() == str2.toLowerCase();

/// Checks if given strings are not equals (case insensitive).
///
///     notEqualsIgnoreCase(null, null) // false
///     notEqualsIgnoreCase(null, 'a')  // true
///     notEqualsIgnoreCase('a', null)  // true
///     notEqualsIgnoreCase('a', 'a')   // false
///     notEqualsIgnoreCase('a', 'A')   // false
bool notEqualsIgnoreCase(String str1, String str2) => !equalsIgnoreCase(str1, str2);

/// Checks if a given [str] is a secured string for password considering some rules.
///
/// * If [needLetter], [str] must have at least one letter (lowercase or uppercase).
/// * If [needNumber], [str] must have at least one number.
/// * If [needUppercaseLetter], [str) must have at least one uppercase letter.
/// * If [needLowercaseLetter], [str] must have at least one lowercase letter.
/// * If [needSymbol], [str] must have at least one character which is not a letter or a number.
/// * [str] length must be equals or greater than given [minLength].
bool isSecuredPassword(String str,
                       {bool needLetter: true,
                        bool needNumber: true,
                        bool needUppercaseLetter: true,
                        bool needLowercaseLetter: true,
                        bool needSymbol: true,
                        int minLength: 8}) {
  if (str == null || str.length < minLength) {
    return false;
  } else if (needLetter && !str.contains(new RegExp(r'[a-zA-Z]'))) {
    return false;
  } else if (needNumber && !str.contains(new RegExp(r'[0-9]'))) {
    return false;
  } else if (needUppercaseLetter && !str.contains(new RegExp(r'[A-Z]'))) {
    return false;
  } else if (needLowercaseLetter && !str.contains(new RegExp(r'[a-z]'))) {
    return false;
  } else if (needSymbol && !str.contains(new RegExp(r'[^a-zA-Z0-9]'))) {
    return false;
  } else {
    return true;
  }
}

/// Checks if a given [str] is not a secured string for password considering some rules.
/// See [isSecuredPassword] for rules.
bool isNotSecuredPassword(String str,
                          {bool needLetter: true,
                           bool needNumber: true,
                           bool needUppercaseLetter: true,
                           needLowercaseLetter: true,
                           bool needSymbol: true,
                           int minLength: 8}) {
  return !isSecuredPassword(
      str,
      needLetter: needLetter,
      needNumber: needNumber,
      needUppercaseLetter: needUppercaseLetter,
      needLowercaseLetter: needLowercaseLetter,
      needSymbol: needSymbol,
      minLength: minLength);
}