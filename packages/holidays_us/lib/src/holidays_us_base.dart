import 'package:date_generator/date_generator.dart';
import 'package:date_generator/holiday_group.dart';

/// Holidays within the United States
class USHolidays extends HolidayGroup {
  USHolidays() {
    addHolidays({
      'easter': easter,
      'thanksgiving': thanksgiving,
      'independenceDay': independenceDay,
      'valentinesDay': valentinesDay,
      'christmas': christmas,
      'newYearsDay': newYearsDay,
      'halloween': halloween,
      'columbusDay': columbusDay,
      'laborDay': laborDay,
      'fathersDay': fathersDay,
      'mothersDay': mothersDay,
      'memorialDay': memorialDay,
      'presidentsDay': presidentsDay,
      'martinLutherKingDay': martinLutherKingDay,
    });
  }

  /// MLK Day is the third monday in January
  DateTime martinLutherKingDay(int year) =>
      Generator().third.monday.january.of(year);

  /// President's is the third monday in February
  DateTime presidentsDay(int year) =>
      Generator().third.monday.february.of(year);

  /// Memorial day is the last monday of May
  DateTime memorialDay(int year) => Generator().last.monday.may.of(year);

  /// Mother's day is the second Sunday of May
  DateTime mothersDay(int year) => Generator().second.sunday.may.of(year);

  /// Father's day is the third Sunday of June
  DateTime fathersDay(int year) => Generator().third.sunday.june.of(year);

  /// Labor day is the first monday of September
  DateTime laborDay(int year) => Generator().first.monday.september.of(year);

  /// Columbus day is the second monday of October
  DateTime columbusDay(int year) => Generator().second.monday.october.of(year);
  DateTime halloween(int year) => DateTime(year, 10, 31);
  DateTime newYearsDay(int year) => DateTime(year, 1, 1);
  DateTime christmas(int year) => DateTime(year, 12, 25);
  DateTime valentinesDay(int year) => DateTime(year, 2, 14);
  DateTime independenceDay(int year) => DateTime(year, 7, 4);

  /// Thanks giving is the fourth thursday of November
  DateTime thanksgiving(int year) =>
      Generator().fourth.thursday.november.of(year);

  /// It taks 10 mathmeticians and 100 prayers to calculate easter's date.
  DateTime easter(int year) {
    int Y = year;
    int a = Y % 19;
    int b = Y ~/ 100;
    int c = Y % 100;
    int d = b ~/ 4;
    int e = b % 4;
    int f = (b + 8) ~/ 25;
    int g = (b - f + 1) ~/ 3;
    int h = (19 * a + b - d - g + 15) % 30;
    int i = c ~/ 4;
    int k = c % 4;
    int L = (32 + 2 * e + 2 * i - h - k) % 7;
    int m = (a + 11 * h + 22 * L) ~/ 451;
    int month = (h + L - 7 * m + 114) ~/ 31;
    int day = ((h + L - 7 * m + 114) % 31) + 1;
    DateTime dt = DateTime(year, month, day);
    return dt;
  }
}
