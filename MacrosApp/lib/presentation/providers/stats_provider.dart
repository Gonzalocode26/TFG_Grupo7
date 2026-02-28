import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:isar/isar.dart';
import '../../data/local/database/isar_service.dart';
import '../../data/local/database/entities/diary_day.dart';
import '../../data/local/database/entities/meal.dart';
import '../../data/local/database/entities/food_item.dart';
import '../../data/models/daily_chart_data.dart';

part 'stats_provider.g.dart';

/// Estado de las estadísticas
class StatsState {
  final List<DailyChartData> weeklyData;
  final List<DiaryDay> historyDays;
  final DateTime currentWeekStart;
  final DateTime? selectedDate;

  StatsState({
    this.weeklyData = const [],
    this.historyDays = const [],
    required this.currentWeekStart,
    this.selectedDate,
  });

  StatsState copyWith({
    List<DailyChartData>? weeklyData,
    List<DiaryDay>? historyDays,
    DateTime? currentWeekStart,
    DateTime? selectedDate,
    bool clearSelectedDate = false,
  }) {
    return StatsState(
      weeklyData: weeklyData ?? this.weeklyData,
      historyDays: historyDays ?? this.historyDays,
      currentWeekStart: currentWeekStart ?? this.currentWeekStart,
      selectedDate: clearSelectedDate ? null : (selectedDate ?? this.selectedDate),
    );
  }

  /// Días filtrados según la fecha seleccionada
  List<DiaryDay> get filteredDays {
    if (selectedDate == null) return historyDays;

    return historyDays.where((day) {
      return day.date.year == selectedDate!.year &&
          day.date.month == selectedDate!.month &&
          day.date.day == selectedDate!.day;
    }).toList();
  }

  /// String del rango de la semana
  String get weekRangeString {
    final start = currentWeekStart;
    final end = currentWeekStart.add(const Duration(days: 6));

    final startText = '${start.day}/${start.month}';
    final endText = '${end.day}/${end.month}';

    return '$startText - $endText';
  }
}

/// Provider que maneja las estadísticas semanales
/// Equivalente a StatsViewModel de Swift
@riverpod
class StatsNotifier extends _$StatsNotifier {
  late Isar _isar;

  @override
  StatsState build() {
    _isar = IsarService().db;
    final weekStart = _getStartOfWeek(DateTime.now());

    // Cargar datos iniciales
    _fetchWeeklyDays(weekStart);

    return StatsState(currentWeekStart: weekStart);
  }

  /// Obtener el inicio de la semana (lunes)
  /// Equivalente a getStartOfWeek(for:) de Swift
  DateTime _getStartOfWeek(DateTime date) {
    // Restar días hasta llegar al lunes (weekday 1)
    final daysToSubtract = date.weekday - 1;
    final weekStart = date.subtract(Duration(days: daysToSubtract));

    // Resetear hora a 00:00:00
    return DateTime(weekStart.year, weekStart.month, weekStart.day);
  }

  /// Cargar días de la semana desde Isar
  /// Equivalente a fetchWeeklyDays() de Swift
  Future<void> _fetchWeeklyDays(DateTime weekStart) async {
    final endDate = weekStart.add(const Duration(days: 6, hours: 23, minutes: 59));

    // Buscar todos los días de esta semana
    final days = await _isar.diaryDays
        .filter()
        .dateBetween(weekStart, endDate)
        .sortByDate()
        .findAll();

    // Cargar relaciones
    for (var day in days) {
      await day.meals.load();
      for (var meal in day.meals) {
        await meal.foods.load();
      }
    }

    // Convertir a DailyChartData
    final chartData = days.map((day) {
      final allFoods = day.meals.expand((m) => m.foods).toList();

      final totalCalories = allFoods.fold(0.0, (sum, f) => sum + f.calories);
      final totalProtein = allFoods.fold(0.0, (sum, f) => sum + f.protein);
      final totalCarbs = allFoods.fold(0.0, (sum, f) => sum + f.carbs);
      final totalFat = allFoods.fold(0.0, (sum, f) => sum + f.fat);

      return DailyChartData(
        date: day.date,
        calories: totalCalories,
        protein: totalProtein,
        carbs: totalCarbs,
        fats: totalFat,
      );
    }).toList();

    // Actualizar estado
    state = state.copyWith(
      weeklyData: chartData,
      historyDays: days,
    );

    print('📊 Stats cargados: ${chartData.length} días encontrados');
  }

  /// Cambiar de semana
  /// Equivalente a changeWeek(by:) de Swift
  Future<void> changeWeek(int offset) async {
    final newWeekStart = state.currentWeekStart.add(Duration(days: offset * 7));

    // No permitir ir al futuro
    final now = DateTime.now();
    if (newWeekStart.isAfter(now)) return;

    state = state.copyWith(
      currentWeekStart: newWeekStart,
      clearSelectedDate: true,
    );

    await _fetchWeeklyDays(newWeekStart);
  }

  /// Seleccionar un día específico para filtrar
  void selectDate(DateTime? date) {
    if (date == null) {
      state = state.copyWith(clearSelectedDate: true);
    } else {
      state = state.copyWith(selectedDate: date);
    }
  }

  /// Eliminar un alimento y recargar stats
  /// Equivalente a deletefood(food:meal:) de Swift
  Future<void> deleteFood(FoodItem food, Meal meal) async {
    await _isar.writeTxn(() async {
      meal.foods.remove(food);
      await meal.foods.save();
      await _isar.foodItems.delete(food.id);
    });

    // Recargar datos de la semana actual
    await _fetchWeeklyDays(state.currentWeekStart);
  }
}