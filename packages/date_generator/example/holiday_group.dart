import 'package:date_generator/holiday_group.dart';

class MyHolidays extends HolidayGroup {
  MyHolidays()
      : super(
          holidayFunctions: {
            'myBirthday': myBirthday,
          },
        );

  static DateTime myBirthday(int year) => DateTime(year, 8, 18);
}
