library klang.utilities.map;

/// Checks if the given [map] is empty or null.
///
///     isEmpty({})       // true
///     isEmpty({'a': 1}) // false
///     isEmpty(null)     // true
bool isEmpty(Map map) {
  return map == null || map.isEmpty;
}

/// Checks if the given [map] is not empty nor null.
///
///     isEmpty({})       // false
///     isEmpty({'a': 1}) // true
///     isEmpty(null)     // false
bool isNotEmpty(Map map) {
  return !isEmpty(map);
}

/// Returns the first map if it is not null, otherwise the second.
/// See [nvlEmpty] if you want the first map not empty.
///
///     nvl({'a':1}, null)    // {'a':1}
///     nvl(null, {'b':2})    // {'b':2}
///     nvl({'a':1}, {'b':2}) // {'a':1}
///     nvl({}, {'b':2})      // {}
Map nvl(Map map1, Map map2) {
  return map1 != null ? map1 : map2;
}

/// Returns the first map if it is not empty, otherwise the second.
/// Unlike [nvl], if the first map is empty, returns the second one too.
///
///     nvlEmpty({'a':1}, null)    // {'a':1}
///     nvlEmpty(null, {'b':2})    // {'b':2}
///     nvlEmpty({'a':1}, {'b':2}) // {'a':1}
///     nvlEmpty({}, {'b':2})      // {'b':2}
Map nvlEmpty(Map map1, Map map2) {
  return isNotEmpty(map1) ? map1 : map2;
}

/// Returns the given map or an empty map if given one is null.
///
///     notNull({'a':1}) // {'a':1}
///     notNull(null)    // {}
Map notNull(Map map) {
  return nvl(map, {});
}