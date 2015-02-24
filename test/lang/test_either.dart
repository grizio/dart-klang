library klang.test.lang.either;

import 'package:unittest/unittest.dart';
import 'package:klang/src/lang/either.dart';

String testMatchLeftOrRight(Either either) {
  return either.match(left: (_) => 'left', right: (_) => 'right');
}

String testFoldLeftOrRight(Either either) {
  return either.fold((_) => 'left', (_) => 'right');
}

void tst_lang_either() {
  group('lang.either', () {
    group('Left & Right', () {
      test('new Either.Left(1).isLeft', (){
        expect(new Either.Left(1).isLeft, true);
      });

      test('Left(1).isLeft', (){
        expect(Left(1).isLeft, true);
      });

      test('new Either.Right(1).isRight', (){
        expect(new Either.Right(1).isRight, true);
      });

      test('Right(1).isRight', (){
        expect(Right(1).isRight, true);
      });

      test('!new Either.Left(1).isRight', (){
        expect(new Either.Left(1).isRight, false);
      });

      test('!Left(1).isRight', (){
        expect(Left(1).isRight, false);
      });

      test('!new Either.Right(1).isLeft', (){
        expect(new Either.Right(1).isLeft, false);
      });

      test('!Right(1).isLeft', (){
        expect(Right(1).isLeft, false);
      });
    });

    group('match', (){
      test('testMatchLeftOrRight(Left(1)) = left', (){
        expect(testMatchLeftOrRight(Left(1)), 'left');
      });

      test('testMatchLeftOrRight(Right(1)) = right', (){
        expect(testMatchLeftOrRight(Right(1)), 'right');
      });

      test('Left(1).match(left: (_) => _, right: (_) => _)', (){
        expect(Left(1).match(left: (_) => _, right: (_) => _), 1);
      });

      test('Right(1).match(left: (_) => _, right: (_) => _)', (){
        expect(Right(1).match(left: (_) => _, right: (_) => _), 1);
      });
    });

    group('fold', (){
      test('testFoldLeftOrRight(Left(1)) = left', (){
        expect(testFoldLeftOrRight(Left(1)), 'left');
      });

      test('testFoldLeftOrRight(Right(1)) = right', (){
        expect(testFoldLeftOrRight(Right(1)), 'right');
      });
    });
  });
}