# Dart Holidays

Packages intended to create holidays. Also useful date generation.

View on pub.dev:

[date_generator](https://pub.dev/packages/date_generator)
[holidays_us](https://pub.dev/packages/holidays_us)

## Description

### Date Generator

Generates dates based on their position within the month:

```dart
DateTime res = gen.first.sunday.january.of(2020);
```

install with `pub get date_generator`

Also contains the `HolidayGroup` interface which is used within USHolidays

[read here](packages/date_generator/README.md) for more.

### Holidays US

Holiday group for US holidays.

```dart
var holidays = USHolidays();
holidays.christmas(2020);
holidays.getHolidayGenerator('christmas')!(2020);
```
[read here](packages/holidays_us/README.md) for more.

If you like this package consider following me on Instagram
([@josh.petitma](https://instagram.com/josh.petitma)) cuz why not 🤷

## Credits

This is a port of a package in node with a few modifications to work for dart
and extra convenience methods. See the inspiration [here](https://github.com/elidoran/node-date-generator).
