library klang.utilities.list;

/// Checks if the given [list] is empty or null.
///
///     isEmpty([])   // true
///     isEmpty([1])  // false
///     isEmpty(null) // true
bool isEmpty(Iterable list) {
  return list == null || list.isEmpty;
}

/// Checks if the given [list] is not empty nor null.
///
///     isEmpty([])   // false
///     isEmpty([1])  // true
///     isEmpty(null) // false
bool isNotEmpty(Iterable list) {
  return !isEmpty(list);
}