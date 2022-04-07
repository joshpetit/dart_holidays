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

  /// Equivalent of using [sunday] through [saturday]. Starts with Sunday as
  // index 1
  GeneratorDay weekDay(int weekDayNumber) => GeneratorDay(ordinal, weekDayNumber.clamp(1, 7));

  GeneratorDay get sunday => GeneratorDay(ordinal, 1);
  GeneratorDay get monday => GeneratorDay(ordinal, 2);
  GeneratorDay get tuesday => GeneratorDay(ordinal, 3);
  GeneratorDay get wednesday => GeneratorDay(ordinal, 4);
  GeneratorDay get thursday => GeneratorDay(ordinal, 5);
  GeneratorDay get friday => GeneratorDay(ordinal, 6);
  GeneratorDay get saturday => GeneratorDay(ordinal, 7);
}

class GeneratorDay {
  const GeneratorDay(this.ordinal, this.weekday);

  /// Week number within the month
  final int ordinal;
  /// Weekday 1-7
  final int weekday;

  /// Equivalent of using [january] through [december]. Starts with january as
  // index 1
  GeneratorMonth month(int monthNumber) =>
      GeneratorMonth(ordinal, weekday, monthNumber.clamp(1, 12));

  GeneratorMonth get january => month(1);
  GeneratorMonth get february => month(2);
  GeneratorMonth get march => month(3);
  GeneratorMonth get april => month(4);
  GeneratorMonth get may => month(5);
  GeneratorMonth get june => month(6);
  GeneratorMonth get july => month(7);
  GeneratorMonth get august => month(8);
  GeneratorMonth get september => month(9);
  GeneratorMonth get october => month(10);
  GeneratorMonth get november => month(11);
  GeneratorMonth get december => month(12);
}

class GeneratorMonth {
  const GeneratorMonth(
    this.ordinal,
    this.weekday,
    this.month,
  );

  /// Weekday 1-7
  final int weekday;
  /// Week number within the month
  final int ordinal;
  final int month;

  /// Find this month within a specified year and return its [DateTime] object.
  DateTime of(int year) {
    var date = DateTime(year, month, 1);
    var days = weekday - date.weekday;
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
