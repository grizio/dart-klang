library klang.lang.lazy;

/// This function is used to generate the [Lazy] value.
typedef LazyInitialization();

/// Creates a new Lazy value which will be computed only when accessed the first time.
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

/// Creates a new [Lazy] value by providing the function generator.
/// Usage:
///
///     // Procedural:
///     var myVar = lazy(() { print('called'); return 0; });
///     // ... other computations
///     myVar.value; // prints "called" and returns 0.
///     myVar.value; // prints nothing, value already computed and returns 0.
///
///     // Object:
///     class A {
///       var myVar = 0;
///       var myLazyVar = lazy(() { return myVar * 2; });
///     }
///     var a = new A();
///     a.myVar = 2;
///     print(a.myLazyVar.value); // prints "4", we use the current value of a.myVar.
///     a.myVar = 4;
///     print(a.myLazyVar.value); // prints "4" because the value was already computed.
Lazy lazy(LazyInitialization lazyInitialization) => new Lazy(lazyInitialization);