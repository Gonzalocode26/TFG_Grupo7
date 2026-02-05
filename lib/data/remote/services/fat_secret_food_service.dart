import 'package:dio/dio.dart';
import '../../../core/constants/api_constants.dart';
import '../../models/fat_secret_models.dart';
import '../auth/api_interceptor.dart';


class FatSecretFoodService {
  late final Dio _dio;

  FatSecretFoodService() {
    _dio = Dio(BaseOptions(
      baseUrl: ApiConstants.baseUrl,
      connectTimeout: const Duration(seconds: 10),
      receiveTimeout: const Duration(seconds: 10),
    ));

    _dio.interceptors.add(ApiInterceptor());
  }

  Future<List<FatSecretFood>> searchFood(String query) async {
    try {
      final response = await _dio.get(
        '/foods/search/v4',
        queryParameters: {
          'search_expression': query,
          'max_results': '20',
          'format': 'json',
          'include_food_image': 'true',
        },
      );

      if (response.statusCode != 200) {
        throw Exception('Search failed: ${response.statusCode}');
      }

      // 🔍 DEBUGGING: Imprime el JSON raw
      print('📦 RAW JSON RESPONSE:');
      print(response.data);
      print('📦 TIPO: ${response.data.runtimeType}');

      final searchResponse = FatSecretSearchResponse.fromJson(response.data);
      return searchResponse.foodsSearch.results?.food ?? [];
    } catch (e) {
      print('❌ ERROR COMPLETO: $e');
      rethrow;
    }
  }

  Future<FatSecretFood?> getFood(String foodId) async {
    try {
      final response = await _dio.get(
        '/food/v4',
        queryParameters: {
          'food_id': foodId,
          'format': 'json',
          'include_food_images': 'true',
        },
      );

      if (response.statusCode != 200) {
        throw Exception('Get food failed: ${response.statusCode}');
      }

      final foodData = response.data['food'];
      return FatSecretFood.fromJson(foodData);
    } catch (e) {
      return null;
    }
  }
}