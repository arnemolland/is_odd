import 'package:is_odd/is_odd.dart';
import 'package:test/test.dart';

void main() {
  group('Unit tests', () {
    late int oddNumber;
    late int evenNumber;

    setUp(() {
      oddNumber = 1;
      evenNumber = 2;
    });

    test('isOdd() returns true for odd number', () {
      expect(isOdd(oddNumber), isTrue);
    });

    test('isOdd() returns false for even number', () {
      expect(isOdd(evenNumber), isFalse);
    });

    test('isOdd() correct int boundary', () {
      const maxValue = 2 ^ 53 + 1;
      final values = List<int>.generate(maxValue, (int index) => index);

      for (var val in values) {
        final isOdd = val % 2 != 0;

        if (isOdd) {
          expect(isOdd, isTrue);
        } else {
          expect(isOdd, isFalse);
        }
      }
    });
  });
}
