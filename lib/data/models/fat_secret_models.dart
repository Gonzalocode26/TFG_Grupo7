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
// FOOD MODEL
// ============================================

@freezed
class FatSecretFood with _$FatSecretFood {
  const factory FatSecretFood({
    @JsonKey(name: 'food_id') required String foodId,
    @JsonKey(name: 'food_name') required String foodName,
    @JsonKey(name: 'food_type') String? foodType,
    @JsonKey(name: 'food_url') String? foodUrl,
  }) = _FatSecretFood;

  factory FatSecretFood.fromJson(Map<String, dynamic> json) =>
      _$FatSecretFoodFromJson(json);
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