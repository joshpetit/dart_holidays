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

  group('Order creates the correct days', () {
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

  group('Months created correctly', () {
    Order order;
    Day day;
    Month month;

    test('should have month 0 for january', () {
      order = gen.first();
      day = order.sunday();
      month = day.january();
      expect(month.ordinal, equals(1));
      expect(month.day, equals(0));
      expect(month.month, equals(0));
    });

    test('should have month 1 for february', () {
      order = gen.second();
      day = order.monday();
      month = day.february();
      expect(month.ordinal, equals(2));
      expect(month.day, equals(1));
      expect(month.month, equals(1));
    });

    test('should have month 2 for march', () {
      order = gen.third();
      day = order.tuesday();
      month = day.march();
      expect(month.ordinal, equals(3));
      expect(month.day, equals(2));
      expect(month.month, equals(2));
    });

    test('should have month 3 for april', () {
      order = gen.fourth();
      day = order.wednesday();
      month = day.april();
      expect(month.ordinal, equals(4));
      expect(month.day, equals(3));
      expect(month.month, equals(3));
    });

    test('should have month 4 for may', () {
      order = gen.last();
      day = order.thursday();
      month = day.may();
      expect(month.ordinal, equals(5));
      expect(month.day, equals(4));
      expect(month.month, equals(4));
    });

    test('should have month 5 for june', () {
      order = gen.first();
      day = order.friday();
      month = day.june();
      expect(month.ordinal, equals(1));
      expect(month.day, equals(5));
      expect(month.month, equals(5));
    });

    test('should have month 6 for july', () {
      order = gen.second();
      day = order.saturday();
      month = day.july();
      expect(month.ordinal, equals(2));
      expect(month.day, equals(6));
      expect(month.month, equals(6));
    });

    test('should have month 7 for august', () {
      order = gen.third();
      day = order.sunday();
      month = day.august();
      expect(month.ordinal, equals(3));
      expect(month.day, equals(0));
      expect(month.month, equals(7));
    });

    test('should have month 8 for september', () {
      order = gen.fourth();
      day = order.monday();
      month = day.september();
      expect(month.ordinal, equals(4));
      expect(month.day, equals(1));
      expect(month.month, equals(8));
    });

    test('should have month 9 for october', () {
      order = gen.last();
      day = order.tuesday();
      month = day.october();
      expect(month.ordinal, equals(5));
      expect(month.day, equals(2));
      expect(month.month, equals(9));
    });

    test('should have month 10 for november', () {
      order = gen.first();
      day = order.wednesday();
      month = day.november();
      expect(month.ordinal, equals(1));
      expect(month.day, equals(3));
      expect(month.month, equals(10));
    });

    test('should have month 11 for december', () {
      order = gen.second();
      day = order.thursday();
      month = day.december();
      expect(month.ordinal, equals(2));
      expect(month.day, equals(4));
      expect(month.month, equals(11));
    });

    test('should have month 5 in(5)', () {
      order = gen.second();
      day = order.thursday();
      month = day.inside(5);
      expect(month.ordinal, equals(2));
      expect(month.day, equals(4));
      expect(month.month, equals(5));
    });

    test('should allow month(#)', () {
      order = gen.second();
      day = order.thursday();
      month = day.month(5);
      expect(month.ordinal, equals(2));
      expect(month.day, equals(4));
      expect(month.month, equals(5));
    });

  });
}
