import 'package:date_generator/date_generator.dart';
import 'package:test/test.dart';

void main() {
  group('Oridials created correctly', () {
    final gen = Generator();

    test('First ordial correct', () {
      expect(gen.first().ordinal, equals(1));
    });

    test('Second ordial correct', () {
      expect(gen.second().ordinal, equals(2));
    });

    test('Third ordial correct', () {
      expect(gen.third().ordinal, equals(3));
    });

    test('Fourth ordial correct', () {
      expect(gen.fourth().ordinal, equals(4));
    });

    test('Last ordial correct', () {
      expect(gen.last().ordinal, equals(5));
    });
  });
}
