library klang.lang.either;

typedef dynamic EitherProcessor<A>(A a);

class Either<A, B> {
  final A _left;
  final B _right;

  Either.Left(A this._left): _right = null;

  Either.Right(B this._right): _left = null;

  dynamic match({EitherProcessor<A> left, EitherProcessor<B> right}) {
    if (left != null) {
      return left(_left);
    } else {
      return right(_right);
    }
  }

  dynamic fold(EitherProcessor<A> left, EitherProcessor<B> right) {
    return match(left: left, right: right);
  }
}

class TstEither {
  void tst() {
    Either<String, int> either1 = new Either.Left("something");
    Either<String, int> either2 = new Either.Right(-1);
    var result;

    result = either1.fold((str) => str.length, (i) => i);
    result = either1.match(left: (str) => str.length, right: (i) => i); // Same as previous line
    print(result); // 9

    result = either2.fold((str) => str.length, (i) => i);
    result = either2.match(left: (str) => str.length, right: (i) => i); // Same as previous line
    print(result); // -1
  }
}