library klang.test.main;

import 'lang/test_either.dart';
import 'lang/test_option.dart';
import 'utilities/test_boolean.dart';
import 'utilities/test_integer.dart';
import 'utilities/test_list.dart';
import 'utilities/test_string.dart';

void main() {
  tst_lang_either();
  tst_lang_option();

  tst_utilities_boolean();
  tst_utilities_integer();
  tst_utilities_list();
  tst_utilities_string();
}