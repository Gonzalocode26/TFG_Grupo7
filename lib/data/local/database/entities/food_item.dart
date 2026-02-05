import 'package:isar/isar.dart';

part 'food_item.g.dart';


@collection
class FoodItem {
  Id id = Isar.autoIncrement;

  late String name;
  late double calories;
  late double protein;
  late double carbs;
  late double fat;
  late double servingQty;
  late String servingUnit;

  String? photo;

  @ignore
  String get iconName {
    final lowerUnit = servingUnit.toLowerCase();
    final lowerName = name.toLowerCase();

    if (lowerUnit.contains('ml')) {
      return 'drop.fill';
    }

    if (lowerName.contains('chicken') ||
        lowerName.contains('beef') ||
        lowerName.contains('steak') ||
        lowerName.contains('pork') ||
        lowerName.contains('meat')) {
      return 'fork.knife';
    }
    return 'carrot.fill';
  }
}