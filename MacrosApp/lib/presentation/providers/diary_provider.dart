import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:isar/isar.dart';
import '../../data/local/database/isar_service.dart';
import '../../data/local/database/entities/diary_day.dart';
import '../../data/local/database/entities/meal.dart';
import '../../data/local/database/entities/food_item.dart';
import '../../data/models/meal_type.dart';
import '../../data/models/food_details.dart';

part 'diary_provider.g.dart';

/// Provider que maneja el DiaryDay actual
/// Equivalente a DiaryDayViewModel de Swift
@riverpod
class DiaryNotifier extends _$DiaryNotifier {
  late Isar _isar;

  /// build() es como el init() de Swift
  /// Se ejecuta al crear el provider por primera vez
  @override
  Future<DiaryDay?> build() async {
    _isar = IsarService().db;
    return await _loadOrCreateToday();
  }

  /// Carga el día de hoy o crea uno nuevo
  /// Equivalente a loadOrCreateToday() de Swift
  Future<DiaryDay?> _loadOrCreateToday() async {
    final todayStart = DateTime.now().copyWith(
      hour: 0,
      minute: 0,
      second: 0,
      millisecond: 0,
      microsecond: 0,
    );

    // Buscar en Isar si ya existe el día de hoy
    final existing = await _isar.diaryDays
        .filter()
        .dateBetween(
      todayStart,
      todayStart.add(const Duration(hours: 23, minutes: 59)),
    )
        .findFirst();

    if (existing != null) {
      // Cargar las relaciones (meals y sus foods)
      await existing.meals.load();
      for (var meal in existing.meals) {
        await meal.foods.load();
      }
      return existing;
    }

    // Si no existe, crear uno nuevo
    final newDay = DiaryDay()..date = todayStart;

    // Crear las 4 comidas vacías
    await _isar.writeTxn(() async {
      await _isar.diaryDays.put(newDay);

      for (var mealType in MealType.values) {
        final meal = Meal()..type = mealType;
        await _isar.meals.put(meal);
        newDay.meals.add(meal);
      }

      await newDay.meals.save();
    });

    return newDay;
  }

  /// Agregar un alimento a una comida
  /// Equivalente a addFood(from:to:) de Swift
  Future<void> addFood(FoodDetails details, MealType mealType) async {
    final day = state.value;
    if (day == null) return;

    // Encontrar la comida del tipo especificado
    final meal = day.meals.firstWhere((m) => m.type == mealType);

    // Crear FoodItem desde FoodDetails
    final foodItem = FoodItem()
      ..name = details.name
      ..calories = details.calories
      ..protein = details.protein
      ..carbs = details.carbs
      ..fat = details.fat
      ..servingQty = details.servingSize
      ..servingUnit = details.servingUnit
      ..photo = details.photoURL;

    // Guardar en Isar
    await _isar.writeTxn(() async {
      await _isar.foodItems.put(foodItem);
      meal.foods.add(foodItem);
      await meal.foods.save();
    });

    // Notificar a la UI que los datos cambiaron
    ref.invalidateSelf();
  }

  /// Eliminar un alimento de una comida
  /// Equivalente a deleteFood(_:meal:) de Swift
  Future<void> deleteFood(FoodItem food, Meal meal) async {
    await _isar.writeTxn(() async {
      meal.foods.remove(food);
      await meal.foods.save();
      await _isar.foodItems.delete(food.id);
    });

    // Notificar cambios
    ref.invalidateSelf();
  }
}