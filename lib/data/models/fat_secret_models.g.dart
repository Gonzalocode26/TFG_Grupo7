// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'fat_secret_models.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$FatSecretFoodImpl _$$FatSecretFoodImplFromJson(Map<String, dynamic> json) =>
    _$FatSecretFoodImpl(
      foodId: json['food_id'] as String,
      foodName: json['food_name'] as String,
      foodType: json['food_type'] as String?,
      foodUrl: json['food_url'] as String?,
    );

Map<String, dynamic> _$$FatSecretFoodImplToJson(_$FatSecretFoodImpl instance) =>
    <String, dynamic>{
      'food_id': instance.foodId,
      'food_name': instance.foodName,
      'food_type': instance.foodType,
      'food_url': instance.foodUrl,
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
