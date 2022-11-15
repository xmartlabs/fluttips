import 'package:floor/floor.dart';

class DateTimeConverter extends TypeConverter<DateTime?, int?> {
  @override
  DateTime? decode(int? databaseValue) => databaseValue != null
      ? DateTime.fromMillisecondsSinceEpoch(databaseValue)
      : null;

  @override
  int? encode(DateTime? value) => value?.millisecondsSinceEpoch;
}
