import 'package:date_generator/holiday_group.dart';

class MyHolidays extends HolidayGroup {
  MyHolidays() {
    addHolidays({'myBirthday': myBirthday});
  }

  DateTime myBirthday(int year) => DateTime(year, 8, 18);
}

void main() {
  var holidays = MyHolidays();

  print(holidays.holidayNames);
  // [myBirthday]

  print(holidays.myBirthday(2020));
  // August 18 2020

  print(holidays.getHolidayGenerator('myBirthday'));
  // Closure
}
