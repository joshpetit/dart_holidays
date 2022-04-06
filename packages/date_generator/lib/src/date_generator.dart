// TODO(joshpetit): Create .weekday(int) .month(int)
class Generator {
  bool get isAwesome => true;

  Order first() => Order(1);
  Order second() => Order(2);
  Order third() => Order(3);
  Order fourth() => Order(4);
  Order last() => Order(5);

  Order week(int weekNumber) => Order(weekNumber.clamp(1, 5));
}

class Order {
  const Order(this.ordinal);

  final int ordinal;

  Day sunday() => Day(ordinal, 0);
  Day monday() => Day(ordinal, 1);
  Day tuesday() => Day(ordinal, 2);
  Day wednesday() => Day(ordinal, 3);
  Day thursday() => Day(ordinal, 4);
  Day friday() => Day(ordinal, 5);
  Day saturday() => Day(ordinal, 6);
}

class Day {
  const Day(this.ordinal, this.day);

  final int ordinal;
  final int day;

  Month month(int monthNumber) => Month(ordinal, day, monthNumber.clamp(1, 12));

  Month january() => month(1);
  Month february() => month(2);
  Month march() => month(3);
  Month april() => month(4);
  Month may() => month(5);
  Month june() => month(6);
  Month july() => month(7);
  Month august() => month(8);
  Month september() => month(9);
  Month october() => month(10);
  Month november() => month(11);
  Month december() => month(12);
}

class Month {
  const Month(
    this.ordinal,
    this.day,
    this.month,
  );

  final int day;
  final int ordinal;
  final int month;

  DateTime of(int year) {
    var date = DateTime(year, month, 1);
    var days = day - date.weekday;
    if (days < 0) {
      days = 7 + days;
    }
    date = DateTime(date.year, date.month, 1 + days + ((ordinal - 1) * 7));

    if (date.month != month) {
      date = DateTime(date.year, date.month, date.day - 7);
    }
    return date;
  }
}
