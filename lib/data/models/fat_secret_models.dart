import 'package:freezed_annotation/freezed_annotation.dart';

part 'fat_secret_models.freezed.dart';
part 'fat_secret_models.g.dart';

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

@freezed
class FatSecretImage with _$FatSecretImage {
  const factory FatSecretImage({
    @JsonKey(name: 'image_url') required String imageUrl,
    @JsonKey(name: 'image_type') required String imageType,
  }) = _FatSecretImage;

  factory FatSecretImage.fromJson(Map<String, dynamic> json) =>
      _$FatSecretImageFromJson(json);
}