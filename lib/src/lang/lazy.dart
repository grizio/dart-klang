library klang.lang.lazy;

typedef LazyInitialization();

class Lazy<A> {
  A _value;
  final LazyInitialization lazyInitialization;

  Lazy(this.lazyInitialization);

  A get value {
    if (_value == null) {
      _value = lazyInitialization();
    }
    return _value;
  }
}

Lazy lazy(LazyInitialization lazyInitialization) => new Lazy(lazyInitialization);