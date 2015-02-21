library klang.utilities.integer;

import 'package:klang/utilities/list.dart' as listUtilities;

int nvl(int val1, int val2) {
  if (val1 == null) {
    return val2;
  } else {
    return val1;
  }
}

int min(int val1, int val2) {
  if (val1 < val2) {
    return val1;
  } else {
    return val2;
  }
}

int max(int val1, int val2) {
  if (val1 < val2) {
    return val2;
  } else {
    return val1;
  }
}

int minFromList(Iterable<int> values, [int defaultIfNone=0]) {
  if (listUtilities.isNotEmpty(values)) {
    int value = values.first;
    for (int val in values) {
      value = min(value, val);
    }
    return value;
  } else {
    return defaultIfNone;
  }
}

int maxFromList(Iterable<int> values, [int defaultIfNone=0]) {
  if (listUtilities.isNotEmpty(values)) {
    int value = values.first;
    for (int val in values) {
      value = max(value, val);
    }
    return value;
  } else {
    return defaultIfNone;
  }
}