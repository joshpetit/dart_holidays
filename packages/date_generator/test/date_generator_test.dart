import 'package:date_generator/date_generator.dart';
import 'package:test/test.dart';

void main() {
  final gen = Generator();
  group('Oridials created correctly', () {
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

  group('Days created correctly', () {
    final gen = Generator();
    Day day;
    test('That sunday created correctly', () {
      day = gen.sunday();
      expect(day.ordinal, equals(1));
      expect(day.day, equals(0));
    });
    test('That monday created correctly', () {
      day = gen.monday();
      expect(day.ordinal, equals(1));
      expect(day.day, equals(1));
    });
    test('That tuesday created correctly', () {
      day = gen.tuesday();
      expect(day.ordinal, equals(1));
      expect(day.day, equals(2));
    });
    test('That wednesday created correctly', () {
      day = gen.wednesday();
      expect(day.ordinal, equals(1));
      expect(day.day, equals(3));
    });
    test('That thursday created correctly', () {
      day = gen.thursday();
      expect(day.ordinal, equals(1));
      expect(day.day, equals(4));
    });
    test('That friday created correctly', () {
      day = gen.friday();
      expect(day.ordinal, equals(1));
      expect(day.day, equals(5));
    });
    test('That saturday created correctly', () {
      day = gen.saturday();
      expect(day.ordinal, equals(1));
      expect(day.day, equals(6));
    });

    test('That sunday created with correct ordinal', () {
      day = gen.sunday(2);
      expect(day.ordinal, equals(2));
      expect(day.day, equals(0));
    });
    test('That monday created with correct ordinal', () {
      day = gen.monday(2);
      expect(day.ordinal, equals(2));
      expect(day.day, equals(1));
    });
    test('That tuesday created with correct ordinal', () {
      day = gen.tuesday(2);
      expect(day.ordinal, equals(2));
      expect(day.day, equals(2));
    });
    test('That wednesday created with correct ordinal', () {
      day = gen.wednesday(2);
      expect(day.ordinal, equals(2));
      expect(day.day, equals(3));
    });
    test('That thursday created with correct ordinal', () {
      day = gen.thursday(2);
      expect(day.ordinal, equals(2));
      expect(day.day, equals(4));
    });
    test('That friday created with correct ordinal', () {
      day = gen.friday(2);
      expect(day.ordinal, equals(2));
      expect(day.day, equals(5));
    });
    test('That saturday created with correct ordinal', () {
      day = gen.saturday(2);
      expect(day.ordinal, equals(2));
      expect(day.day, equals(6));
    });
  });

  group('Order creates the correct days', ([int ordinal = 1]) {
    Order order;
    Day day;
    test('That january created correctly', () {
      order = gen.first();
      day = order.sunday();
      expect(day.ordinal, equals(1));
      expect(day.day, equals(0));
    });

    test('That sunday created correctly', () {
      order = gen.first();
      day = order.sunday();
      expect(day.ordinal, equals(1));
      expect(day.day, equals(0));
    });
    test('That monday created correctly', () {
      order = gen.first();
      day = order.monday();
      expect(day.ordinal, equals(1));
      expect(day.day, equals(1));
    });
    test('That tuesday created correctly', () {
      order = gen.first();
      day = order.tuesday();
      expect(day.ordinal, equals(1));
      expect(day.day, equals(2));
    });
    test('That wednesday created correctly', () {
      order = gen.first();
      day = order.wednesday();
      expect(day.ordinal, equals(1));
      expect(day.day, equals(3));
    });
    test('That thursday created correctly', () {
      order = gen.first();
      day = order.thursday();
      expect(day.ordinal, equals(1));
      expect(day.day, equals(4));
    });
    test('That friday created correctly', () {
      order = gen.first();
      day = order.friday();
      expect(day.ordinal, equals(1));
      expect(day.day, equals(5));
    });
    test('That saturday created correctly', () {
      order = gen.first();
      day = order.saturday();
      expect(day.ordinal, equals(1));
      expect(day.day, equals(6));
    });
  });
}
