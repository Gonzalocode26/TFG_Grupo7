import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:tfg_grupo7/data/models/profile_models.dart';
import 'package:tfg_grupo7/presentation/providers/profile_provider.dart';

void main() {
  group('ProfileProvider - Mifflin-St Jeor Formula Tests', () {
    late ProviderContainer container;

    setUp(() {
      container = ProviderContainer();
    });

    tearDown(() {
      container.dispose();
    });

    // ═══════════════════════════════════════════════════════════
    // TEST 1: BMR para Hombre (Caso Base)
    // ═══════════════════════════════════════════════════════════
    test('Debe calcular BMR correctamente para hombre sedentario con objetivo de mantenimiento', () {
      // ARRANGE
      final testProfile = ProfileState(
        name: 'Test Male User',
        age: 30,
        weight: 80.0,
        height: 180.0,
        gender: Gender.male,
        activityLevel: UserActivity.sedentary,
        selectedGoal: GoalType.maintenance,
        calorieGoal: 0,
        proteinGoal: 0,
        carbsGoal: 0,
        fatGoal: 0,
        isAutoCalculate: true,
      );

      // CÁLCULO MANUAL ESPERADO:
      // BMR = (80 * 10) + (180 * 6.25) - (30 * 5) + 5 = 1780
      // TDEE = 1780 * 1.2 = 2136
      const expectedCalories = 2136.0;
      const expectedProtein = 160.0; // 80 * 2

      // ACT
      container.read(profileNotifierProvider.notifier).updateField(testProfile);
      container.read(profileNotifierProvider.notifier).recalculateMacros();

      // ASSERT
      final result = container.read(profileNotifierProvider).value!;

      expect(result.calorieGoal, closeTo(expectedCalories, 1));
      expect(result.proteinGoal, closeTo(expectedProtein, 1));
    });

    // ═══════════════════════════════════════════════════════════
    // TEST 2: BMR para Mujer (Ajuste de Género)
    // ═══════════════════════════════════════════════════════════
    test('Debe calcular BMR correctamente para mujer activa con objetivo de pérdida de peso', () {
      // ARRANGE
      final testProfile = ProfileState(
        name: 'Test Female User',
        age: 25,
        weight: 60.0,
        height: 165.0,
        gender: Gender.female,
        activityLevel: UserActivity.moderatelyActive,
        selectedGoal: GoalType.weightLoss,
        calorieGoal: 0,
        proteinGoal: 0,
        carbsGoal: 0,
        fatGoal: 0,
        isAutoCalculate: true,
      );

      // CÁLCULO MANUAL ESPERADO:
      // BMR = (60 * 10) + (165 * 6.25) - (25 * 5) - 161 = 1345.25
      // TDEE = 1345.25 * 1.55 = 2085.1375
      // Cals (Loss 0.85) = 2085.1375 * 0.85 = 1772.366...
      const expectedCalories = 1772.37;
      const expectedProtein = 120.0;

      // ACT
      container.read(profileNotifierProvider.notifier).updateField(testProfile);
      container.read(profileNotifierProvider.notifier).recalculateMacros();

      // ASSERT
      final result = container.read(profileNotifierProvider).value!;

      expect(result.calorieGoal, closeTo(expectedCalories, 1));
      expect(result.proteinGoal, closeTo(expectedProtein, 1));
    });

    // ═══════════════════════════════════════════════════════════
    // TEST 3: Objetivo de Ganancia Muscular (Factor 1.10)
    // ═══════════════════════════════════════════════════════════
    test('Debe aplicar factor 1.10 para objetivo de ganancia de peso', () {
      // ARRANGE
      final testProfile = ProfileState(
        name: 'Test Bulking User',
        age: 28,
        weight: 75.0,
        height: 175.0,
        gender: Gender.male,
        activityLevel: UserActivity.veryActive,
        selectedGoal: GoalType.weightGain,
        calorieGoal: 0,
        proteinGoal: 0,
        carbsGoal: 0,
        fatGoal: 0,
        isAutoCalculate: true,
      );

      // BMR = 1708.75 | TDEE = 2947.59 | Calorías (1.10) = 3242.35
      const expectedCalories = 3242.35;

      // ACT
      container.read(profileNotifierProvider.notifier).updateField(testProfile);
      container.read(profileNotifierProvider.notifier).recalculateMacros();

      // ASSERT
      final result = container.read(profileNotifierProvider).value!;
      expect(result.calorieGoal, closeTo(expectedCalories, 5));
    });

    // ═══════════════════════════════════════════════════════════
    // TEST 4: Distribución de Macronutrientes
    // ═══════════════════════════════════════════════════════════
    test('La distribución de macros debe sumar correctamente', () {
      // ARRANGE
      final testProfile = ProfileState(
        name: 'Test Macro User',
        age: 30,
        weight: 70.0,
        height: 170.0,
        gender: Gender.male,
        activityLevel: UserActivity.moderatelyActive,
        selectedGoal: GoalType.maintenance,
        calorieGoal: 0,
        proteinGoal: 0,
        carbsGoal: 0,
        fatGoal: 0,
        isAutoCalculate: true,
      );

      // ACT
      container.read(profileNotifierProvider.notifier).updateField(testProfile);
      container.read(profileNotifierProvider.notifier).recalculateMacros();

      final result = container.read(profileNotifierProvider).value!;

      // ASSERT: Proteína + Carbohidratos + Grasas debe aproximarse a calorías totales
      // (proteína × 4) + (carbos × 4) + (grasas × 9) ≈ calorías_objetivo
      final calculatedCalories =
          (result.proteinGoal * 4) +
              (result.carbsGoal * 4) +
              (result.fatGoal * 9);

      expect(calculatedCalories, closeTo(result.calorieGoal, 50));
    });

    // ═══════════════════════════════════════════════════════════
    // TEST 5: Edge Case - Edad Mínima
    // ═══════════════════════════════════════════════════════════
    test('Debe manejar correctamente edad mínima (18 años)', () {
      final testProfile = ProfileState(
        name: 'Young User',
        age: 18,
        weight: 65.0,
        height: 170.0,
        gender: Gender.male,
        activityLevel: UserActivity.sedentary,
        selectedGoal: GoalType.maintenance,
        calorieGoal: 0,
        proteinGoal: 0,
        carbsGoal: 0,
        fatGoal: 0,
        isAutoCalculate: true,
      );

      container.read(profileNotifierProvider.notifier).updateField(testProfile);
      container.read(profileNotifierProvider.notifier).recalculateMacros();

      final result = container.read(profileNotifierProvider).value!;
      expect(result.calorieGoal, greaterThan(0));
    });

    // ═══════════════════════════════════════════════════════════
    // TEST 6: Edge Case - Peso Alto
    // ═══════════════════════════════════════════════════════════
    test('Debe manejar correctamente peso alto (120 kg)', () {
      final testProfile = ProfileState(
        name: 'Heavy User',
        age: 35,
        weight: 120.0,
        height: 190.0,
        gender: Gender.male,
        activityLevel: UserActivity.veryActive,
        selectedGoal: GoalType.weightLoss,
        calorieGoal: 0,
        proteinGoal: 0,
        carbsGoal: 0,
        fatGoal: 0,
        isAutoCalculate: true,
      );

      container.read(profileNotifierProvider.notifier).updateField(testProfile);
      container.read(profileNotifierProvider.notifier).recalculateMacros();

      final result = container.read(profileNotifierProvider).value!;

      expect(result.proteinGoal, closeTo(240, 1));
      expect(result.calorieGoal, greaterThan(2000));
    });
  });
}