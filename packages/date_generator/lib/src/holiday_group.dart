typedef HolidayFunction = DateTime Function(int);

abstract class HolidayGroup {
  HolidayGroup();
  final Map<String, HolidayFunction> _holidayFunctions = {};

  void addHolidays(Map<String, HolidayFunction> holidays) {
    _holidayFunctions.addAll(holidays);
  }

  /// Returns a function to fetch requested holiday date for particular date
  HolidayFunction? getHolidayGenerator(String holidayName) =>
      _holidayFunctions[holidayName];

  List<String> get holidayNames => _holidayFunctions.keys.toList();
}
