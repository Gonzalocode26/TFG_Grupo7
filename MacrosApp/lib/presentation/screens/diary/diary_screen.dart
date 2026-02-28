import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../providers/diary_provider.dart';
import '../../../data/models/meal_type.dart';
import 'widgets/meal_card.dart';

class DiaryScreen extends ConsumerWidget {
  const DiaryScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // Observar el DiaryProvider
    final diaryAsync = ref.watch(diaryNotifierProvider);

    return Scaffold(
      backgroundColor: const Color(0xFFF2F2F7),
      appBar: AppBar(
        title: const Text('Diary'),
      ),
      body: diaryAsync.when(
        data: (diaryDay) {
          if (diaryDay == null) {
            return const Center(
              child: Text('No diary day found'),
            );
          }

          // Ordenar comidas según el orden de MealType
          final sortedMeals = diaryDay.meals.toList()
            ..sort((a, b) {
              final indexA = MealType.values.indexWhere((t) => t.name == a.type.name);
              final indexB = MealType.values.indexWhere((t) => t.name == b.type.name);
              return indexA.compareTo(indexB);
            });

          return ListView.builder(
            padding: const EdgeInsets.symmetric(vertical: 16),
            itemCount: sortedMeals.length,
            itemBuilder: (context, index) {
              final meal = sortedMeals[index];

              return MealCard(
                meal: meal,
                onAddTapped: () {
                  // TODO: Abrir SearchScreen
                  print('Add food to ${meal.type.displayName}');
                },
                onDelete: (food) {
                  // Eliminar alimento
                  ref.read(diaryNotifierProvider.notifier).deleteFood(food, meal);
                },
              );
            },
          );
        },
        loading: () => const Center(
          child: CircularProgressIndicator(),
        ),
        error: (error, stack) => Center(
          child: Text('Error: $error'),
        ),
      ),
    );
  }
}