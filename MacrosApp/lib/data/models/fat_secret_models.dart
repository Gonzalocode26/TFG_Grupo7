// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

part 'fat_secret_models.freezed.dart';
part 'fat_secret_models.g.dart';

// ============================================
// TOKEN MODEL
// ============================================

@freezed
class FatSecretToken with _$FatSecretToken {
  const factory FatSecretToken({
    @JsonKey(name: 'access_token') required String accessToken,
    @JsonKey(name: 'token_type') required String tokenType,
    @JsonKey(name: 'expires_in') required int expiresIn,
  }) = _FatSecretToken;

  factory FatSecretToken.fromJson(Map<String, dynamic> json) =>
      _$FatSecretTokenFromJson(json);
}

// ============================================
// SEARCH RESPONSE
// ============================================

@freezed
class FatSecretSearchResponse with _$FatSecretSearchResponse {
  const factory FatSecretSearchResponse({
    @JsonKey(name: 'foods_search') required FoodSearchContainer foodsSearch,
  }) = _FatSecretSearchResponse;

  factory FatSecretSearchResponse.fromJson(Map<String, dynamic> json) =>
      _$FatSecretSearchResponseFromJson(json);
}

@freezed
class FoodSearchContainer with _$FoodSearchContainer {
  const factory FoodSearchContainer({
    @JsonKey(name: 'max_results') String? maxResults,
    @JsonKey(name: 'total_results') String? totalResults,
    @JsonKey(name: 'page_number') String? pageNumber,
    FoodList? results,
  }) = _FoodSearchContainer;

  factory FoodSearchContainer.fromJson(Map<String, dynamic> json) =>
      _$FoodSearchContainerFromJson(json);
}

@freezed
class FoodList with _$FoodList {
  const factory FoodList({
    required List<FatSecretFood> food,
  }) = _FoodList;

  factory FoodList.fromJson(Map<String, dynamic> json) =>
      _$FoodListFromJson(json);
}

// ============================================
// FOOD MODEL (con imágenes)
// ============================================

@freezed
class FatSecretFood with _$FatSecretFood {
  const FatSecretFood._(); // Constructor privado para custom getters

  const factory FatSecretFood({
    @JsonKey(name: 'food_id') required String foodId,
    @JsonKey(name: 'food_name') required String foodName,
    @JsonKey(name: 'food_type') String? foodType,
    @JsonKey(name: 'food_url') String? foodUrl,
    @JsonKey(name: 'food_images') FoodImagesWrapper? foodImages,
  }) = _FatSecretFood;

  factory FatSecretFood.fromJson(Map<String, dynamic> json) =>
      _$FatSecretFoodFromJson(json);

  // Getter para obtener la URL de la imagen principal
  String? get mainImageUrl {
    if (foodImages?.foodImage == null) return null;

    final images = foodImages!.foodImage;

    // Si es una lista, tomar la primera
    if (images is List && images.isNotEmpty) {
      return images[0].imageUrl;
    }

    // Si es un objeto único
    if (images is FatSecretImage) {
      return images.imageUrl;
    }

    return null;
  }
}

// Wrapper para manejar la estructura anidada de imágenes
@freezed
class FoodImagesWrapper with _$FoodImagesWrapper {
  const factory FoodImagesWrapper({
    @JsonKey(name: 'food_image') dynamic foodImage, // Puede ser List o objeto único
  }) = _FoodImagesWrapper;

  factory FoodImagesWrapper.fromJson(Map<String, dynamic> json) =>
      _$FoodImagesWrapperFromJson(json);
}

// ============================================
// IMAGE MODEL
// ============================================

@freezed
class FatSecretImage with _$FatSecretImage {
  const factory FatSecretImage({
    @JsonKey(name: 'image_url') required String imageUrl,
    @JsonKey(name: 'image_type') required String imageType,
  }) = _FatSecretImage;

  factory FatSecretImage.fromJson(Map<String, dynamic> json) =>
      _$FatSecretImageFromJson(json);
}

@freezed
class FatSecretFoodDetails with _$FatSecretFoodDetails {
  const FatSecretFoodDetails._();

  const factory FatSecretFoodDetails({
    @JsonKey(name: 'food_id') required String foodId,
    @JsonKey(name: 'food_name') required String foodName,
    @JsonKey(name: 'food_type') String? foodType,
    @JsonKey(name: 'servings') required ServingsWrapper servings,
    @JsonKey(name: 'food_images') FoodImagesWrapper? foodImages,
  }) = _FatSecretFoodDetails;

  factory FatSecretFoodDetails.fromJson(Map<String, dynamic> json) =>
      _$FatSecretFoodDetailsFromJson(json);

// Getter para obtener la URL de la imagen principal
  String? get mainImageUrl {
    if (foodImages?.foodImage == null) return null;

    final images = foodImages!.foodImage;

    // Caso 1: La API devuelve una lista de imágenes (List de Maps)
    if (images is List && images.isNotEmpty) {
      final firstImage = images[0];
      if (firstImage is Map<String, dynamic>) {
        return firstImage['image_url'] as String?;
      }
    }

    // Caso 2: La API devuelve una imagen única (Un Map)
    if (images is Map<String, dynamic>) {
      return images['image_url'] as String?;
    }

    return null;
  }
}

@freezed
class ServingsWrapper with _$ServingsWrapper {
  const factory ServingsWrapper({
    required List<FatSecretServing> serving,
  }) = _ServingsWrapper;

  factory ServingsWrapper.fromJson(Map<String, dynamic> json) =>
      _$ServingsWrapperFromJson(json);
}

@freezed
class FatSecretServing with _$FatSecretServing {
  const FatSecretServing._();

  const factory FatSecretServing({
    @JsonKey(name: 'serving_id') required String servingId,
    @JsonKey(name: 'serving_description') required String servingDescription,
    @JsonKey(name: 'calories') required String calories,
    @JsonKey(name: 'protein') required String protein,
    @JsonKey(name: 'carbohydrate') required String carbohydrate,
    @JsonKey(name: 'fat') required String fat,
  }) = _FatSecretServing;

  factory FatSecretServing.fromJson(Map<String, dynamic> json) =>
      _$FatSecretServingFromJson(json);

  // Getters para convertir String a double
  double get caloriesValue => double.tryParse(calories) ?? 0;
  double get proteinValue => double.tryParse(protein) ?? 0;
  double get carbsValue => double.tryParse(carbohydrate) ?? 0;
  double get fatValue => double.tryParse(fat) ?? 0;
}