
import 'package:riverpod_annotation/riverpod_annotation.dart';
import '../../data/remote/services/fat_secret_food_service.dart';
import '../../data/remote/services/translation_service.dart';
import '../../data/models/fat_secret_models.dart';
import 'dart:ui' as ui;

part 'search_provider.g.dart';

class SearchState {
  final List<FatSecretFood> results;
  final bool isLoading;
  final String? errorMessage;
  final bool hasSearched;

  SearchState({
    this.results = const [],
    this.isLoading = false,
    this.errorMessage,
    this.hasSearched = false,
  });

  SearchState copyWith({
    List<FatSecretFood>? results,
    bool? isLoading,
    String? errorMessage,
    bool? hasSearched,
  }) {
    return SearchState(
      results: results ?? this.results,
      isLoading: isLoading ?? this.isLoading,
      errorMessage: errorMessage ?? this.errorMessage,
      hasSearched: hasSearched ?? this.hasSearched,
    );
  }
}

@riverpod
class SearchNotifier extends _$SearchNotifier {
  final _foodService = FatSecretFoodService();
  final _translationService = TranslationService();

  @override
  SearchState build() {
    return SearchState();
  }

  Future<void> searchFoods(String query) async {
    final cleanQuery = query.trim();

    if (cleanQuery.isEmpty) {
      state = SearchState();
      return;
    }

    state = state.copyWith(
      isLoading: true,
      errorMessage: null,
      hasSearched: true,
    );

    try {
      final languageCode = ui.PlatformDispatcher.instance.locale.languageCode;
      final isEnglish = languageCode == 'en';

      String queryForApi = cleanQuery;

      if (!isEnglish) {
        queryForApi = await _translationService.translate(cleanQuery, 'EN');
      }

      final results = await _foodService.searchFood(queryForApi);

      List<FatSecretFood> finalResults = results;

      if (!isEnglish) {
        finalResults = await Future.wait(results.map((food) async {
          final translatedName = await _translationService.translate(
            food.foodName,
            languageCode,
          );
          return food.copyWith(foodName: translatedName);
        }));
      }

      state = state.copyWith(
        results: finalResults,
        isLoading: false,
      );
      print('✅ Búsqueda exitosa: ${results.length} resultados');
    } catch (e) {
      state = state.copyWith(
        results: [],
        isLoading: false,
        errorMessage: 'Error: ${e.toString()}',
      );
      print('❌ Error en búsqueda: $e');
    }
  }

  void clear() {
    state = SearchState();
  }
}