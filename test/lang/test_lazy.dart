library klang.test.lang.lazy;

import 'package:unittest/unittest.dart';
import 'package:klang/src/lang/lazy.dart';

void tst_lang_lazy() {
  group('lang.lazy', () {
    test('simple', () {
      var lazyVar = lazy(() => 1);
      expect(lazyVar.value, 1);
    });

    test('dependant on invariant', () {
      var a = 1;
      var lazyVar = lazy(() => a);
      expect(lazyVar.value, 1);
      a = 2;
      expect(lazyVar.value, 1);
    });

    test('dependant on variant', () {
      var a = 1;
      var lazyVar = lazy(() => a);
      a = 2;
      expect(lazyVar.value, 2);
    });
  });
}