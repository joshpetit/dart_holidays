typedef HolidayFunction = DateTime Function(int);

abstract class HolidayGroup {
  const HolidayGroup({
    required this.holidayFunctions,
  });

  final Map<String, HolidayFunction> holidayFunctions;

  /// Returns a function to fetch requested holiday date for particular date
  HolidayFunction? getHolidayGenerator(String holidayName) =>
      holidayFunctions[holidayName];
}
