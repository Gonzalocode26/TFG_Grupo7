import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:tfg_grupo7/l10n/app_localizations.dart';
import '../../../providers/diary_provider.dart';
import '../../../providers/profile_provider.dart';
import '../../../../data/local/database/entities/diary_day.dart';

class DailyProgressCard extends ConsumerWidget {
  const DailyProgressCard({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final l10n = AppLocalizations.of(context)!;
    final diaryState = ref.watch(diaryNotifierProvider);
    final profileAsync = ref.watch(profileNotifierProvider);

    return profileAsync.when(
      data: (profile) {
        final totals = _calculateDayTotals(diaryState);

        return Container(
          margin: const EdgeInsets.fromLTRB(16, 16, 16, 8),
          padding: const EdgeInsets.all(20),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(20),
            boxShadow: [
              BoxShadow(
                color: Colors.black.withValues(alpha: 0.05),
                blurRadius: 10,
                offset: const Offset(0, 4),
              ),
            ],
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Header
              Text(
                l10n.todaysProgress, // ← Traducción aplicada
                style: const TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 16),

              // Calorías Principales
              _buildMainCalories(
                consumed: totals.calories,
                goal: profile.calorieGoal,
                l10n: l10n, // ← Pasamos el diccionario al helper
              ),
              const SizedBox(height: 24),

              // Macros (Fila con 3 columnas)
              Row(
                children: [
                  Expanded(
                    child: _buildMacroColumn(
                      label: l10n.protein, // ← Traducción aplicada
                      consumed: totals.protein,
                      goal: profile.proteinGoal,
                      color: Colors.red,
                    ),
                  ),
                  Expanded(
                    child: _buildMacroColumn(
                      label: l10n.carbs, // ← Traducción aplicada
                      consumed: totals.carbs,
                      goal: profile.carbsGoal,
                      color: Colors.blue,
                    ),
                  ),
                  Expanded(
                    child: _buildMacroColumn(
                      label: l10n.fat, // ← Traducción aplicada
                      consumed: totals.fat,
                      goal: profile.fatGoal,
                      color: Colors.orange,
                    ),
                  ),
                ],
              ),
            ],
          ),
        );
      },
      loading: () => _buildLoadingCard(),
      error: (_, __) => const SizedBox.shrink(),
    );
  }

  Widget _buildMainCalories({
    required double consumed,
    required double goal,
    required AppLocalizations l10n, // ← Nuevo parámetro
  }) {
    final percentage = goal > 0 ? (consumed / goal).clamp(0.0, 1.0) : 0.0;
    final remaining = (goal - consumed).clamp(0, double.infinity);

    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            RichText(
              text: TextSpan(
                style: const TextStyle(
                  fontSize: 32,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
                children: [
                  TextSpan(text: '${consumed.toInt()}'),
                  TextSpan(
                    text: ' / ${goal.toInt()} kcal',
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.grey.shade500,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 4),
              child: Text(
                '${remaining.toInt()} ${l10n.left}', // ← Traducción aplicada
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w600,
                  color: Colors.grey.shade600,
                ),
              ),
            ),
          ],
        ),
        const SizedBox(height: 12),
        ClipRRect(
          borderRadius: BorderRadius.circular(10),
          child: LinearProgressIndicator(
            value: percentage,
            minHeight: 12,
            backgroundColor: Colors.grey.shade100,
            valueColor: AlwaysStoppedAnimation<Color>(
              percentage >= 1.0 ? Colors.red : Colors.purple,
            ),
          ),
        ),
      ],
    );
  }

  Widget _buildMacroColumn({
    required String label,
    required double consumed,
    required double goal,
    required Color color,
  }) {
    final percentage = goal > 0 ? (consumed / goal).clamp(0.0, 1.0) : 0.0;

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 4),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            label, // ← Ya viene traducido desde el build
            style: TextStyle(
              fontSize: 13,
              color: Colors.grey.shade600,
              fontWeight: FontWeight.w600,
            ),
          ),
          const SizedBox(height: 4),
          Row(
            crossAxisAlignment: CrossAxisAlignment.baseline,
            textBaseline: TextBaseline.alphabetic,
            children: [
              Text(
                '${consumed.toInt()}g',
                style: const TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(width: 4),
              Text(
                '/ ${goal.toInt()}g',
                style: TextStyle(
                  fontSize: 11,
                  color: Colors.grey.shade500,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ],
          ),
          const SizedBox(height: 8),
          SizedBox(
            height: 6,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(3),
              child: LinearProgressIndicator(
                value: percentage,
                backgroundColor: Colors.grey.shade100,
                valueColor: AlwaysStoppedAnimation<Color>(
                  percentage >= 1.0 ? Colors.red : color,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildLoadingCard() {
    return Container(
      height: 180,
      margin: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
      ),
      child: const Center(child: CircularProgressIndicator()),
    );
  }

  _DayTotals _calculateDayTotals(AsyncValue<DiaryDay?> diaryState) {
    final day = diaryState.value;

    if (day == null) {
      return _DayTotals(calories: 0, protein: 0, carbs: 0, fat: 0);
    }

    double totalCalories = 0;
    double totalProtein = 0;
    double totalCarbs = 0;
    double totalFat = 0;

    for (final meal in day.meals) {
      for (final food in meal.foods) {
        totalCalories += food.calories;
        totalProtein += food.protein;
        totalCarbs += food.carbs;
        totalFat += food.fat;
      }
    }

    return _DayTotals(
      calories: totalCalories,
      protein: totalProtein,
      carbs: totalCarbs,
      fat: totalFat,
    );
  }
}

class _DayTotals {
  final double calories;
  final double protein;
  final double carbs;
  final double fat;

  _DayTotals({
    required this.calories,
    required this.protein,
    required this.carbs,
    required this.fat,
  });
}