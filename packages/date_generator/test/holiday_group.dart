import 'package:date_generator/holiday_group.dart';
import 'package:test/test.dart';

class TestHoliday extends HolidayGroup {
  TestHoliday() {
    addHolidays({
      'test': (int year) => DateTime(year),
      'other': (int year) => DateTime(year, 5),
    });
  }
}

void main() {
  group('holiday group', () {
    var testHoliday = TestHoliday();
    test('correctly fetches holidays', () {
      var test = testHoliday.getHolidayGenerator('test');
      var other = testHoliday.getHolidayGenerator('other');
      expect(test, isNotNull);
      expect(test!(1).toIso8601String(), equals(DateTime(1).toIso8601String()));

      expect(other, isNotNull);
      expect(other!(1).toIso8601String(), equals(DateTime(1, 5).toIso8601String()));
    });

    test('correctly fetches names', () {
      var gen = testHoliday.holidayNames;
      expect(gen, isNotNull);
      expect(gen, equals(['test', 'other']));
    });
  });
}
