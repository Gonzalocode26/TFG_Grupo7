import 'package:isar/isar.dart';
import 'meal.dart';

part 'diary_day.g.dart';

@collection
class DiaryDay {
  Id id = Isar.autoIncrement;

  @Index(unique: true)
  late DateTime date;
  final meals = IsarLinks<Meal>();
}