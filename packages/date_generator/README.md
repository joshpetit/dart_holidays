# Date Generator

View on [pub.dev](https://pub.dev/packages/date_generator)

Generate dates based on the position within a month (ordinal dates)

You can install this using `flutter pub add date_generator`.

## Generating Dates

As an example, to find the second Sunday in May you would do:

```dart
Generator().second.sunday.may.of(2020);
```

And it would return the corresponding `DateTime` object for that day.

You start off with the ordinal which is the week within the month

```dart
Generator().first
```

This will look for the first week, there are methods for first, second, third,
fourth, and last. `last` being a method that returns either the 4th or 5th week
depending on how the month is.

You can also select the first by number input

```
Generator().week(1)
```

To select the last week us the number 5

Next you select the week day within that week.

```
Generator().first.saturday
```

Just like the week number you can select the week day by using the
`weekDay(int)` method. The week days are numbered from 1-7.

Next you can select the month

```
Generator().first.saturday.may
Generator().first.saturday.month(5)
```

The months are numbered 1-12.

And finally you can select the year

```
Generator().first.saturday.may.of(2019);
```

This will return a `DateTime` object given these constraints (in this case the
first saturday of may 2019.

## Holiday Groups

`HolidayGroup` is just an interface to categorize holidays together. It also has
convenience methods to get methods by strings (`getHolidayGenerator`) and get
the list of holidays supported by the group extending the class
(`holidayNames`). Users can also add to the grouping if they would like by
adding holidays through the `addHolidays(<String, HolidayFunction>{})` method.

If you like this package consider following me on Instagram
