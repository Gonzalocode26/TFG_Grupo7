import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:tfg_grupo7/presentation/screens/diary/widgets/daily_progress_card.dart';
import '../../providers/diary_provider.dart';
import '../../../data/models/meal_type.dart';
import 'widgets/meal_card.dart';
import '../search/search_screen.dart';

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

          return ListView(
            padding: const EdgeInsets.symmetric(vertical: 16),
            children: [
              const DailyProgressCard(),

              ...sortedMeals.map((meal) {
                return MealCard(
                  meal: meal,
                  onAddTapped: () {
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (context){
                          return SearchScreen(mealType: meal.type);
                        })
                    );
                  },
                  onDelete: (food) {
                    // Eliminar alimento
                    ref.read(diaryNotifierProvider.notifier).deleteFood(food, meal);
                  },
                );
              }),
            ],
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