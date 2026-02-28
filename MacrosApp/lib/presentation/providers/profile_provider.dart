// ignore_for_file: avoid_print

import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:shared_preferences/shared_preferences.dart';
import '../../data/models/profile_models.dart';

part 'profile_provider.g.dart';

/// Estado del perfil con objetivos nutricionales
class ProfileState {
  final String name;
  final Gender gender;
  final int age;
  final double height;
  final double weight;
  final UserActivity activityLevel;
  final GoalType selectedGoal;

  final double calorieGoal;
  final double proteinGoal;
  final double carbsGoal;
  final double fatGoal;

  final bool isAutoCalculate;

  ProfileState({
    this.name = 'User',
    this.gender = Gender.male,
    this.age = 25,
    this.height = 175.0,
    this.weight = 75.0,
    this.activityLevel = UserActivity.moderatelyActive,
    this.selectedGoal = GoalType.maintenance,
    this.calorieGoal = 2000,
    this.proteinGoal = 150,
    this.carbsGoal = 250,
    this.fatGoal = 60,
    this.isAutoCalculate = true,
  });

  ProfileState copyWith({
    String? name,
    Gender? gender,
    int? age,
    double? height,
    double? weight,
    UserActivity? activityLevel,
    GoalType? selectedGoal,
    double? calorieGoal,
    double? proteinGoal,
    double? carbsGoal,
    double? fatGoal,
    bool? isAutoCalculate,
  }) {
    return ProfileState(
      name: name ?? this.name,
      gender: gender ?? this.gender,
      age: age ?? this.age,
      height: height ?? this.height,
      weight: weight ?? this.weight,
      activityLevel: activityLevel ?? this.activityLevel,
      selectedGoal: selectedGoal ?? this.selectedGoal,
      calorieGoal: calorieGoal ?? this.calorieGoal,
      proteinGoal: proteinGoal ?? this.proteinGoal,
      carbsGoal: carbsGoal ?? this.carbsGoal,
      fatGoal: fatGoal ?? this.fatGoal,
      isAutoCalculate: isAutoCalculate ?? this.isAutoCalculate,
    );
  }
}

/// Provider que maneja el perfil y objetivos nutricionales
/// Equivalente a ProfileViewModel de Swift
@riverpod
class ProfileNotifier extends _$ProfileNotifier {
  /// Cargar datos guardados de SharedPreferences
  @override
  Future<ProfileState> build() async {
    final prefs = await SharedPreferences.getInstance();

    return ProfileState(
      name: prefs.getString('user_name') ?? 'User',
      gender: Gender.values.firstWhere(
            (g) => g.name == prefs.getString('user_gender'),
        orElse: () => Gender.male,
      ),
      age: prefs.getInt('user_age') ?? 25,
      height: prefs.getDouble('user_height') ?? 175.0,
      weight: prefs.getDouble('user_weight') ?? 75.0,
      activityLevel: UserActivity.values.firstWhere(
            (a) => a.multiplier == prefs.getDouble('user_activity'),
        orElse: () => UserActivity.moderatelyActive,
      ),
      selectedGoal: GoalType.values.firstWhere(
            (g) => g.name == prefs.getString('user_goal'),
        orElse: () => GoalType.maintenance,
      ),
      calorieGoal: prefs.getDouble('calorie_goal') ?? 2000,
      proteinGoal: prefs.getDouble('protein_goal') ?? 150,
      carbsGoal: prefs.getDouble('carbs_goal') ?? 250,
      fatGoal: prefs.getDouble('fat_goal') ?? 60,
      isAutoCalculate: prefs.getBool('auto_calculate') ?? true,
    );
  }

  /// Guardar en SharedPreferences
  Future<void> save() async {
    final currentState = state.value;
    if (currentState == null) return;

    final prefs = await SharedPreferences.getInstance();

    await prefs.setString('user_name', currentState.name);
    await prefs.setString('user_gender', currentState.gender.name);
    await prefs.setInt('user_age', currentState.age);
    await prefs.setDouble('user_height', currentState.height);
    await prefs.setDouble('user_weight', currentState.weight);
    await prefs.setDouble('user_activity', currentState.activityLevel.multiplier);
    await prefs.setString('user_goal', currentState.selectedGoal.name);
    await prefs.setDouble('calorie_goal', currentState.calorieGoal);
    await prefs.setDouble('protein_goal', currentState.proteinGoal);
    await prefs.setDouble('carbs_goal', currentState.carbsGoal);
    await prefs.setDouble('fat_goal', currentState.fatGoal);
    await prefs.setBool('auto_calculate', currentState.isAutoCalculate);

    print('✅ Perfil guardado');
  }

  /// Actualizar un campo
  void updateField(ProfileState newState) {
    state = AsyncData(newState);
  }

  /// Recalcular macros con fórmula Mifflin-St Jeor
  /// Equivalente a recalculateMacros() de Swift
  void recalculateMacros() {
    final currentState = state.value;
    if (currentState == null || !currentState.isAutoCalculate) return;

    // Fórmula Mifflin-St Jeor
    final weightPart = currentState.weight * 10;
    final heightPart = currentState.height * 6.25;
    final agePart = currentState.age.toDouble() * 5;
    final genderCorrection = currentState.gender == Gender.male ? 5.0 : -161.0;

    final bmr = weightPart + heightPart - agePart + genderCorrection;
    final tdee = bmr * currentState.activityLevel.multiplier;
    final targetCalories = tdee * currentState.selectedGoal.factor;

    // Proteína: 2g por kg
    final targetProtein = currentState.weight * 2.0;

    // Carbohidratos: según nivel de actividad
    double carbPercentage = switch (currentState.activityLevel) {
      UserActivity.sedentary => 0.40,
      UserActivity.lightlyActive => 0.45,
      UserActivity.moderatelyActive => 0.50,
      UserActivity.veryActive || UserActivity.extraActive => 0.55,
    };

    if (currentState.selectedGoal == GoalType.weightLoss) {
      carbPercentage -= 0.05;
    }

    final caloriesForCarbs = targetCalories * carbPercentage;
    final targetCarbs = caloriesForCarbs / 4;

    // Grasas: el resto de calorías
    final caloriesUsed = (targetProtein * 4) + (targetCarbs * 4);
    final remainingCalories = targetCalories - caloriesUsed;
    final calculatedFat = remainingCalories / 9;
    final minFat = currentState.weight * 0.5;
    final targetFat = calculatedFat > minFat ? calculatedFat : minFat;

    // Actualizar estado
    state = AsyncData(currentState.copyWith(
      calorieGoal: targetCalories,
      proteinGoal: targetProtein,
      carbsGoal: targetCarbs,
      fatGoal: targetFat,
    ));

    print('🎯 Macros calculados: ${targetCalories.toInt()} kcal | '
        'P: ${targetProtein.toInt()}g | C: ${targetCarbs.toInt()}g | F: ${targetFat.toInt()}g');
  }
}