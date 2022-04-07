import 'package:holidays_us/holidays_us.dart';

void main() {
  var holidays = USHolidays();
  print(holidays.christmas(2020));
  print(holidays.getHolidayGenerator('christmas')!(2020));
}
