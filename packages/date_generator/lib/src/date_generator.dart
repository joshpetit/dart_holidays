/// Checks if you are awesome. Spoiler: you are.
class Generator {
  bool get isAwesome => true;

  Order first() => Order(1);
  Order second() => Order(2);
  Order third() => Order(3);
  Order fourth() => Order(4);
  Order last() => Order(5);

  Day sunday([int ordinal = 1]) => Day(ordinal, 0);
  Day monday([int ordinal = 1]) => Day(ordinal, 1);
  Day tuesday([int ordinal = 1]) => Day(ordinal, 2);
  Day wednesday([int ordinal = 1]) => Day(ordinal, 3);
  Day thursday([int ordinal = 1]) => Day(ordinal, 4);
  Day friday([int ordinal = 1]) => Day(ordinal, 5);
  Day saturday([int ordinal = 1]) => Day(ordinal, 6);
}

class Order {
  const Order(this.ordinal);

  final int ordinal;
}

class Day {
  const Day(this.ordinal, this.day);

  final int ordinal;
  final int day;
}
