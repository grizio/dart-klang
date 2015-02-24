library klang.lang.either;

/// This function type is used to process an element for [Either] methods.
typedef dynamic EitherProcessor<A>(A a);

/// This class represents a variable which can be of two types.
/// It is an alternative of [Option] where the [None] value is replaced by [Left], which contains useful information.
/// A common use case for this class is an operation returning a value or an error.
///
///    Either<String, int> leftExample = Left("error description")
///    Either<String, int> rightExample = Right(10)
///    leftExample.match(left: (error) => print(error), right: (value) => print("value: "  value)) // prints "error description"
///    rightExample.match(left: (error) => print(error), right: (value) => print("value: "  value)) // prints "value: 10"
class Either<A, B> {
  /// The left value
  final A _left;

  /// The right value
  final B _right;

  /// Creates an [Either] object with a left value.
  Either.Left(A this._left): _right = null;

  /// Creates an [Either] object with a right value.
  Either.Right(B this._right): _left = null;

  bool get isLeft => _left != null;

  bool get isRight => _right != null;

  /// Calls a different function in terms of this [Either] is [Left] or [Right].
  dynamic match({EitherProcessor<A> left, EitherProcessor<B> right}) {
    if (isLeft) {
      return left(_left);
    } else {
      return right(_right);
    }
  }

  /// Calls a different function in terms of this [Either] is [Left] or [Right].
  /// Unlike [match], this function does not accept named parameters so they cannot be inverse in declaration.
  dynamic fold(EitherProcessor<A> left, EitherProcessor<B> right) {
    return match(left: left, right: right);
  }
}

/// Creates an [Either] object with a left value.
Either Left(dynamic value) => new Either.Left(value);

/// Creates an [Either] object with a right value.
Either Right(dynamic value) => new Either.Right(value);