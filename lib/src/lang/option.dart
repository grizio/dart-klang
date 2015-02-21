library klang.lang.option;

typedef dynamic OptionSomeProcessor<A>(A a);

typedef dynamic OptionNoneProcessor();

class Option<A> {
  final A _value;

  Option([this._value=null]);

  dynamic match({OptionSomeProcessor<A> some, OptionNoneProcessor none}) {
    if (_value != null) {
      return some(_value);
    } else {
      return none();
    }
  }

  Option<dynamic> map(OptionSomeProcessor<A> some) {
    if (_value != null) {
      return new Option(some(_value));
    } else {
      return new Option();
    }
  }

  void forEach(OptionSomeProcessor<A> some) {
    if (_value != null) {
      some(_value);
    }
  }

  A get() {
    return _value;
  }

  bool isDefined() {
    return _value != null;
  }

  bool isNotDefined() {
    return !isDefined();
  }
}

class TstOption {
  void tst() {
    Option<String> option1 = new Option("something");
    Option<String> option2 = new Option(null);
    var result;

    result = option1.match(
        some: (str) => str.length(),
        none: () => 0);
    print(result); // 9

    result = option2.match(
        some: (str) => str.length(),
        none: () => 0);
    print(result); // 0
  }
}