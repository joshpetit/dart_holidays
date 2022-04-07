import 'package:date_generator/date_generator.dart';
import 'package:date_generator/holiday_group.dart';

class USHolidays extends HolidayGroup {
  USHolidays() {
    addHolidays({
      /* 'easter': easter, */
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

  DateTime martinLutherKingDay(int year) =>
      Generator().third.monday.january.of(year);
  DateTime presidentsDay(int year) =>
      Generator().third.monday.february.of(year);
  DateTime memorialDay(int year) => Generator().last.monday.may.of(year);
  DateTime mothersDay(int year) => Generator().second.sunday.may.of(year);
  DateTime fathersDay(int year) => Generator().third.sunday.june.of(year);
  DateTime laborDay(int year) => Generator().first.monday.september.of(year);
  DateTime columbusDay(int year) => Generator().second.monday.october.of(year);
  DateTime halloween(int year) => DateTime(year, 10, 31);
  DateTime newYearsDay(int year) => DateTime(year, 1, 1);
  DateTime christmas(int year) => DateTime(year, 12, 25);
  DateTime valentinesDay(int year) => DateTime(year, 2, 14);
  DateTime independenceDay(int year) => DateTime(year, 7, 4);
  DateTime thanksgiving(int year) =>
      Generator().fourth.thursday.november.of(year);
  /* DateTime easter(int year) { */
  /*   // implementation of anonymous gregorian algorithm */
  /*   double L, a, b, c, d, day, e, f, g, h, i, k, m, month; */
  /**/
  /*   a = year % 19; */
  /*   b = year / 100; */
  /*   b.floor(); */
  /**/
  /*   c = year % 100; */
  /*   d = b / 4; */
  /*   d.floor(); */
  /**/
  /*   e = b % 4; */
  /*   f = ((b + 8) / 25); */
  /*   f.floor(); */
  /**/
  /*   g = ((b - f + 1) / 3); */
  /*   g.floor(); */
  /**/
  /*   h = (19 * a + b - d - g + 15) % 30; */
  /*   i = c / 4; */
  /*   i.floor(); */
  /*   k = c % 4; */
  /*   L = (32 + 2 * e + 2 * i - h - k) % 7; */
  /**/
  /*   m = (a + 11 * h + 22 * L) / 451; */
  /*   m.floor(); */
  /*   month = ((h + L - 7 * m + 114) / 31) - 1; */
  /*   month.floor(); */
  /**/
  /*   day = ((h + L - 7 * m + 114) % 31) + 1; */
  /*   DateTime date = DateTime(year, month.toInt(), day.toInt()); */
  /*   return date; */
  /* } */
}
