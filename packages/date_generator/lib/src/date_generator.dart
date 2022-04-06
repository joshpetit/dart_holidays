/// Generates new date objects.
class Generator {
  Order get first => Order(1);
  Order get second => Order(2);
  Order get third => Order(3);
  Order get fourth => Order(4);
  Order get last => Order(5);

  /// Equivalent of doing [first], [second], [third], [fourth], and [last].
  /// 5 is equsl to last
  Order week(int weekNumber) => Order(weekNumber.clamp(1, 5));
}

/// The week number within a month.
class Order {
  const Order(this.ordinal);

  final int ordinal;

  Day get sunday => Day(ordinal, 1);
  Day get monday => Day(ordinal, 2);
  Day get tuesday => Day(ordinal, 3);
  Day get wednesday => Day(ordinal, 4);
  Day get thursday => Day(ordinal, 5);
  Day get friday => Day(ordinal, 6);
  Day get saturday => Day(ordinal, 7);
}

class Day {
  const Day(this.ordinal, this.day);

  final int ordinal;
  final int day;

  Month month(int monthNumber) => Month(ordinal, day, monthNumber.clamp(1, 12));

  Month get january => month(1);
  Month get february => month(2);
  Month get march => month(3);
  Month get april => month(4);
  Month get may => month(5);
  Month get june => month(6);
  Month get july => month(7);
  Month get august => month(8);
  Month get september => month(9);
  Month get october => month(10);
  Month get november => month(11);
  Month get december => month(12);
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
