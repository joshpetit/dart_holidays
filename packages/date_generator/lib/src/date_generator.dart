/// Generates dates
class Generator {
  Order first() => Order(1);
  Order second() => Order(2);
  Order third() => Order(3);
  Order fourth() => Order(4);
  Order last() => Order(5);

  /// Equivalent of doing [first], [second], [third], [fourth], and [last].
  /// 5 is equsl to last
  Order week(int weekNumber) => Order(weekNumber.clamp(1, 5));
}

/// The week number within a month.
class Order {
  const Order(this.ordinal);

  final int ordinal;

  Day sunday() => Day(ordinal, 1);
  Day monday() => Day(ordinal, 2);
  Day tuesday() => Day(ordinal, 3);
  Day wednesday() => Day(ordinal, 4);
  Day thursday() => Day(ordinal, 5);
  Day friday() => Day(ordinal, 6);
  Day saturday() => Day(ordinal, 7);
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
    if (days < 1) {
      days = 7 + days;
    }
    date = DateTime(date.year, date.month, days + ((ordinal - 1) * 7));

    if (date.month != month) {
      date = DateTime(date.year, date.month, date.day - 7);
    }
    return date;
  }
}
