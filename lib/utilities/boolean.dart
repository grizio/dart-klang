library klang.utilities.boolean;

bool nvl(bool val1, bool val2) {
  if (val1 == null) {
    return val2;
  } else {
    return val1;
  }
}