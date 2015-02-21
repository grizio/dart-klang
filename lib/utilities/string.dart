library klang.utilities.string;

String nvl(String val1, String val2) {
  if (val1 == null) {
    return val2;
  } else {
    return val1;
  }
}