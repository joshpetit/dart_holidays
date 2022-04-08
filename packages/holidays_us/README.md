# Holidays US

## Usage

```dart
  var holidays = USHolidays();
  print(holidays.christmas(2020));
  print(holidays.getHolidayGenerator('christmas')!(2020));
```

A list of US holidays. You can get a holiday year generator by using the
`getHolidayGenerator(String)` method which will return the equivalent of the
holiday method. For example `holidays.getHolidayGenerator('christmas')(2020)` is the same
as `holidays.christmas(2020)`.
`

### Holiays available:

- Easter
- Thanksgiving
- Independence Day
- Valentine's Day
- Christmas
- New Year's Day
- Halloween
- Columbus Day
- Labor Day
- Father's Day
- Mother's Day
- Memorial Day
- President's Day
- Martin Luther King Day
