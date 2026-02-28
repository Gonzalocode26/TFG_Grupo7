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