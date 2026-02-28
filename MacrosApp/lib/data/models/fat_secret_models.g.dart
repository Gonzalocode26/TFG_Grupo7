// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'fat_secret_models.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$FatSecretTokenImpl _$$FatSecretTokenImplFromJson(Map<String, dynamic> json) =>
    _$FatSecretTokenImpl(
      accessToken: json['access_token'] as String,
      tokenType: json['token_type'] as String,
      expiresIn: (json['expires_in'] as num).toInt(),
    );

Map<String, dynamic> _$$FatSecretTokenImplToJson(
        _$FatSecretTokenImpl instance) =>
    <String, dynamic>{
      'access_token': instance.accessToken,
      'token_type': instance.tokenType,
      'expires_in': instance.expiresIn,
    };

_$FatSecretSearchResponseImpl _$$FatSecretSearchResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$FatSecretSearchResponseImpl(
      foodsSearch: FoodSearchContainer.fromJson(
          json['foods_search'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$FatSecretSearchResponseImplToJson(
        _$FatSecretSearchResponseImpl instance) =>
    <String, dynamic>{
      'foods_search': instance.foodsSearch,
    };

_$FoodSearchContainerImpl _$$FoodSearchContainerImplFromJson(
        Map<String, dynamic> json) =>
    _$FoodSearchContainerImpl(
      maxResults: json['max_results'] as String?,
      totalResults: json['total_results'] as String?,
      pageNumber: json['page_number'] as String?,
      results: json['results'] == null
          ? null
          : FoodList.fromJson(json['results'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$FoodSearchContainerImplToJson(
        _$FoodSearchContainerImpl instance) =>
    <String, dynamic>{
      'max_results': instance.maxResults,
      'total_results': instance.totalResults,
      'page_number': instance.pageNumber,
      'results': instance.results,
    };

_$FoodListImpl _$$FoodListImplFromJson(Map<String, dynamic> json) =>
    _$FoodListImpl(
      food: (json['food'] as List<dynamic>)
          .map((e) => FatSecretFood.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$FoodListImplToJson(_$FoodListImpl instance) =>
    <String, dynamic>{
      'food': instance.food,
    };

_$FatSecretFoodImpl _$$FatSecretFoodImplFromJson(Map<String, dynamic> json) =>
    _$FatSecretFoodImpl(
      foodId: json['food_id'] as String,
      foodName: json['food_name'] as String,
      foodType: json['food_type'] as String?,
      foodUrl: json['food_url'] as String?,
      foodImages: json['food_images'] == null
          ? null
          : FoodImagesWrapper.fromJson(
              json['food_images'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$FatSecretFoodImplToJson(_$FatSecretFoodImpl instance) =>
    <String, dynamic>{
      'food_id': instance.foodId,
      'food_name': instance.foodName,
      'food_type': instance.foodType,
      'food_url': instance.foodUrl,
      'food_images': instance.foodImages,
    };

_$FoodImagesWrapperImpl _$$FoodImagesWrapperImplFromJson(
        Map<String, dynamic> json) =>
    _$FoodImagesWrapperImpl(
      foodImage: json['food_image'],
    );

Map<String, dynamic> _$$FoodImagesWrapperImplToJson(
        _$FoodImagesWrapperImpl instance) =>
    <String, dynamic>{
      'food_image': instance.foodImage,
    };

_$FatSecretImageImpl _$$FatSecretImageImplFromJson(Map<String, dynamic> json) =>
    _$FatSecretImageImpl(
      imageUrl: json['image_url'] as String,
      imageType: json['image_type'] as String,
    );

Map<String, dynamic> _$$FatSecretImageImplToJson(
        _$FatSecretImageImpl instance) =>
    <String, dynamic>{
      'image_url': instance.imageUrl,
      'image_type': instance.imageType,
    };
