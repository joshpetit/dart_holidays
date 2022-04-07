import 'package:date_generator/date_generator.dart';

void main() {
  var gen = Generator();

  var res = gen.first.sunday.january.of(2020);
  print(res);
  res = gen.second.thursday.march.of(1900);
  print(res);

  // Equivalents
  res = gen.last.monday.december.of(2021);
  var same = gen.week(5).monday.december.of(2021);
  var othersame = gen.week(5).weekDay(2).december.of(2021);
  var yetanothersame = gen.week(5).weekDay(2).month(12).of(2021);
  print(res.toIso8601String() == same.toIso8601String() &&
      same.toIso8601String() == othersame.toIso8601String() &&
      othersame.toIso8601String() == yetanothersame.toIso8601String());

  res = gen.last.monday.december.of(2021);
  same = gen.last.monday.month(12).of(2021);
  print(res.toIso8601String() == same.toIso8601String());

  res = gen.last.monday.december.of(2021);
  same = gen.week(5).monday.month(12).of(2021);
  print(res.toIso8601String() == same.toIso8601String());

  res = gen.second.weekDay(2).december.of(2021);
  same = gen.week(2).monday.month(12).of(2021);
  print(res.toIso8601String() == same.toIso8601String());
}
