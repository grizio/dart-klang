library klang.utilities.boolean;

/// Returns [val1] if not null, otherwise [val2].
///
///     nvl(true, null)  // true
///     nvl(null, false) // false
///     nvl(true, false) // true
bool nvl(bool val1, bool val2) {
  if (val1 == null) {
    return val2;
  } else {
    return val1;
  }
}