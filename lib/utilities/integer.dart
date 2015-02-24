library klang.utilities.integer;

import 'package:klang/utilities/list.dart' as listUtilities;

/// Returns [val1] if not null, otherwise [val2].
///
///     nvl(1, null) // 1
///     nvl(null, 2) // 2
///     nvl(1, 2)    // 1
int nvl(int val1, int val2) {
  if (val1 == null) {
    return val2;
  } else {
    return val1;
  }
}

/// Returns the lower value from the two given numbers.
///
///     min(1, 2)       // 1
///     min(2, 1)       // 1
///     min(1, null)    // 1
///     min(null, 2)    // 2
///     min(null, null) // null
int min(int val1, int val2) {
  if (val1 == null && val2 == null) {
    return null;
  } else if (val1 == null) {
    return val2;
  } else if (val2 == null) {
    return val1;
  } else if (val1 < val2) {
    return val1;
  } else {
    return val2;
  }
}

/// Returns the higher value from the two given numbers.
///
///     max(1, 2)       // 2
///     max(2, 1)       // 2
///     max(1, null)    // 1
///     max(null, 2)    // 2
///     max(null, null) // null
int max(int val1, int val2) {
  if (val1 == null && val2 == null) {
    return null;
  } else if (val1 == null) {
    return val2;
  } else if (val2 == null) {
    return val1;
  }else if (val1 < val2) {
    return val2;
  } else {
    return val1;
  }
}

/// Returns the lower value from the given number list.
/// If the list is null or has any not null value, returns the [defaultIfNone] value.
///
///     minFromList([1, 2, 3])          // 1
///     minFromList([3, 2, 1])          // 1
///     minFromList([1, null, 3])       // 1
///     minFromList([null, 2, 3])       // 2
///     minFromList([null, null, null]) // null
///     minFromList(null, 0)            // 0
int minFromList(Iterable<int> values, [int defaultIfNone=null]) {
  if (listUtilities.isNotEmpty(values)) {
    int value = null;
    for (int val in values) {
      value = min(value, val);
    }
    return nvl(value, defaultIfNone);
  } else {
    return defaultIfNone;
  }
}

/// Returns the higher value from the given number list.
/// If the list is null or has any not null value, returns the [defaultIfNone] value.
///
///     maxFromList([1, 2, 3])          // 3
///     maxFromList([3, 2, 1])          // 3
///     maxFromList([1, null, 3])       // 3
///     maxFromList([null, 2, 3])       // 3
///     maxFromList([null, null, null]) // null
///     maxFromList(null, 0)            // 0
int maxFromList(Iterable<int> values, [int defaultIfNone=null]) {
  if (listUtilities.isNotEmpty(values)) {
    int value = null;
    for (int val in values) {
      value = max(value, val);
    }
    return nvl(value, defaultIfNone);
  } else {
    return defaultIfNone;
  }
}