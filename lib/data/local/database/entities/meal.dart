import 'package:isar/isar.dart';
import 'food_item.dart';
import '../../../models/meal_type.dart';

part 'meal.g.dart';

@collection
class Meal {
  Id id = Isar.autoIncrement;

  @enumerated
  late MealType type;
  final foods = IsarLinks<FoodItem>();
}