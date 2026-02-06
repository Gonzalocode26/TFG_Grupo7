// ignore_for_file: avoid_print

import 'package:riverpod_annotation/riverpod_annotation.dart';
import '../../data/remote/services/fat_secret_food_service.dart';
import '../../data/models/fat_secret_models.dart';

part 'search_provider.g.dart';

/// Estado de la búsqueda
/// Equivalente a las @Published properties de SearchViewModel
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

  /// Copia del estado con algunos campos modificados
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

/// Provider que maneja la búsqueda de alimentos
/// Equivalente a SearchViewModel de Swift
@riverpod
class SearchNotifier extends _$SearchNotifier {
  final _service = FatSecretFoodService();

  /// Estado inicial: sin búsquedas, sin resultados
  @override
  SearchState build() {
    return SearchState();
  }

  /// Buscar alimentos por query
  /// Equivalente a fetchFoods(query:) de Swift
  Future<void> searchFoods(String query) async {
    // Limpiar espacios en blanco
    final cleanQuery = query.trim();

    // Si está vacío, limpiar resultados
    if (cleanQuery.isEmpty) {
      state = SearchState();
      return;
    }

    // Empezar loading
    state = state.copyWith(
      isLoading: true,
      errorMessage: null,
      hasSearched: true,
    );

    try {
      // Llamar a la API
      final results = await _service.searchFood(cleanQuery);

      // Actualizar con resultados
      state = state.copyWith(
        results: results,
        isLoading: false,
      );

      print('✅ Búsqueda exitosa: ${results.length} resultados');
    } catch (e) {
      // Manejar error
      state = state.copyWith(
        results: [],
        isLoading: false,
        errorMessage: 'Error: ${e.toString()}',
      );

      print('❌ Error en búsqueda: $e');
    }
  }

  /// Limpiar búsqueda
  void clear() {
    state = SearchState();
  }
}