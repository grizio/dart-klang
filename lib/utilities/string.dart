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