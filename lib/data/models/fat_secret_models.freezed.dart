// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'fat_secret_models.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

FatSecretFood _$FatSecretFoodFromJson(Map<String, dynamic> json) {
  return _FatSecretFood.fromJson(json);
}

/// @nodoc
mixin _$FatSecretFood {
  @JsonKey(name: 'food_id')
  String get foodId => throw _privateConstructorUsedError;
  @JsonKey(name: 'food_name')
  String get foodName => throw _privateConstructorUsedError;
  @JsonKey(name: 'food_type')
  String? get foodType => throw _privateConstructorUsedError;
  @JsonKey(name: 'food_url')
  String? get foodUrl => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $FatSecretFoodCopyWith<FatSecretFood> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FatSecretFoodCopyWith<$Res> {
  factory $FatSecretFoodCopyWith(
          FatSecretFood value, $Res Function(FatSecretFood) then) =
      _$FatSecretFoodCopyWithImpl<$Res, FatSecretFood>;
  @useResult
  $Res call(
      {@JsonKey(name: 'food_id') String foodId,
      @JsonKey(name: 'food_name') String foodName,
      @JsonKey(name: 'food_type') String? foodType,
      @JsonKey(name: 'food_url') String? foodUrl});
}

/// @nodoc
class _$FatSecretFoodCopyWithImpl<$Res, $Val extends FatSecretFood>
    implements $FatSecretFoodCopyWith<$Res> {
  _$FatSecretFoodCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? foodId = null,
    Object? foodName = null,
    Object? foodType = freezed,
    Object? foodUrl = freezed,
  }) {
    return _then(_value.copyWith(
      foodId: null == foodId
          ? _value.foodId
          : foodId // ignore: cast_nullable_to_non_nullable
              as String,
      foodName: null == foodName
          ? _value.foodName
          : foodName // ignore: cast_nullable_to_non_nullable
              as String,
      foodType: freezed == foodType
          ? _value.foodType
          : foodType // ignore: cast_nullable_to_non_nullable
              as String?,
      foodUrl: freezed == foodUrl
          ? _value.foodUrl
          : foodUrl // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$FatSecretFoodImplCopyWith<$Res>
    implements $FatSecretFoodCopyWith<$Res> {
  factory _$$FatSecretFoodImplCopyWith(
          _$FatSecretFoodImpl value, $Res Function(_$FatSecretFoodImpl) then) =
      __$$FatSecretFoodImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'food_id') String foodId,
      @JsonKey(name: 'food_name') String foodName,
      @JsonKey(name: 'food_type') String? foodType,
      @JsonKey(name: 'food_url') String? foodUrl});
}

/// @nodoc
class __$$FatSecretFoodImplCopyWithImpl<$Res>
    extends _$FatSecretFoodCopyWithImpl<$Res, _$FatSecretFoodImpl>
    implements _$$FatSecretFoodImplCopyWith<$Res> {
  __$$FatSecretFoodImplCopyWithImpl(
      _$FatSecretFoodImpl _value, $Res Function(_$FatSecretFoodImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? foodId = null,
    Object? foodName = null,
    Object? foodType = freezed,
    Object? foodUrl = freezed,
  }) {
    return _then(_$FatSecretFoodImpl(
      foodId: null == foodId
          ? _value.foodId
          : foodId // ignore: cast_nullable_to_non_nullable
              as String,
      foodName: null == foodName
          ? _value.foodName
          : foodName // ignore: cast_nullable_to_non_nullable
              as String,
      foodType: freezed == foodType
          ? _value.foodType
          : foodType // ignore: cast_nullable_to_non_nullable
              as String?,
      foodUrl: freezed == foodUrl
          ? _value.foodUrl
          : foodUrl // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$FatSecretFoodImpl implements _FatSecretFood {
  const _$FatSecretFoodImpl(
      {@JsonKey(name: 'food_id') required this.foodId,
      @JsonKey(name: 'food_name') required this.foodName,
      @JsonKey(name: 'food_type') this.foodType,
      @JsonKey(name: 'food_url') this.foodUrl});

  factory _$FatSecretFoodImpl.fromJson(Map<String, dynamic> json) =>
      _$$FatSecretFoodImplFromJson(json);

  @override
  @JsonKey(name: 'food_id')
  final String foodId;
  @override
  @JsonKey(name: 'food_name')
  final String foodName;
  @override
  @JsonKey(name: 'food_type')
  final String? foodType;
  @override
  @JsonKey(name: 'food_url')
  final String? foodUrl;

  @override
  String toString() {
    return 'FatSecretFood(foodId: $foodId, foodName: $foodName, foodType: $foodType, foodUrl: $foodUrl)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FatSecretFoodImpl &&
            (identical(other.foodId, foodId) || other.foodId == foodId) &&
            (identical(other.foodName, foodName) ||
                other.foodName == foodName) &&
            (identical(other.foodType, foodType) ||
                other.foodType == foodType) &&
            (identical(other.foodUrl, foodUrl) || other.foodUrl == foodUrl));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, foodId, foodName, foodType, foodUrl);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FatSecretFoodImplCopyWith<_$FatSecretFoodImpl> get copyWith =>
      __$$FatSecretFoodImplCopyWithImpl<_$FatSecretFoodImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$FatSecretFoodImplToJson(
      this,
    );
  }
}

abstract class _FatSecretFood implements FatSecretFood {
  const factory _FatSecretFood(
      {@JsonKey(name: 'food_id') required final String foodId,
      @JsonKey(name: 'food_name') required final String foodName,
      @JsonKey(name: 'food_type') final String? foodType,
      @JsonKey(name: 'food_url') final String? foodUrl}) = _$FatSecretFoodImpl;

  factory _FatSecretFood.fromJson(Map<String, dynamic> json) =
      _$FatSecretFoodImpl.fromJson;

  @override
  @JsonKey(name: 'food_id')
  String get foodId;
  @override
  @JsonKey(name: 'food_name')
  String get foodName;
  @override
  @JsonKey(name: 'food_type')
  String? get foodType;
  @override
  @JsonKey(name: 'food_url')
  String? get foodUrl;
  @override
  @JsonKey(ignore: true)
  _$$FatSecretFoodImplCopyWith<_$FatSecretFoodImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

FatSecretImage _$FatSecretImageFromJson(Map<String, dynamic> json) {
  return _FatSecretImage.fromJson(json);
}

/// @nodoc
mixin _$FatSecretImage {
  @JsonKey(name: 'image_url')
  String get imageUrl => throw _privateConstructorUsedError;
  @JsonKey(name: 'image_type')
  String get imageType => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $FatSecretImageCopyWith<FatSecretImage> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FatSecretImageCopyWith<$Res> {
  factory $FatSecretImageCopyWith(
          FatSecretImage value, $Res Function(FatSecretImage) then) =
      _$FatSecretImageCopyWithImpl<$Res, FatSecretImage>;
  @useResult
  $Res call(
      {@JsonKey(name: 'image_url') String imageUrl,
      @JsonKey(name: 'image_type') String imageType});
}

/// @nodoc
class _$FatSecretImageCopyWithImpl<$Res, $Val extends FatSecretImage>
    implements $FatSecretImageCopyWith<$Res> {
  _$FatSecretImageCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? imageUrl = null,
    Object? imageType = null,
  }) {
    return _then(_value.copyWith(
      imageUrl: null == imageUrl
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String,
      imageType: null == imageType
          ? _value.imageType
          : imageType // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$FatSecretImageImplCopyWith<$Res>
    implements $FatSecretImageCopyWith<$Res> {
  factory _$$FatSecretImageImplCopyWith(_$FatSecretImageImpl value,
          $Res Function(_$FatSecretImageImpl) then) =
      __$$FatSecretImageImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'image_url') String imageUrl,
      @JsonKey(name: 'image_type') String imageType});
}

/// @nodoc
class __$$FatSecretImageImplCopyWithImpl<$Res>
    extends _$FatSecretImageCopyWithImpl<$Res, _$FatSecretImageImpl>
    implements _$$FatSecretImageImplCopyWith<$Res> {
  __$$FatSecretImageImplCopyWithImpl(
      _$FatSecretImageImpl _value, $Res Function(_$FatSecretImageImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? imageUrl = null,
    Object? imageType = null,
  }) {
    return _then(_$FatSecretImageImpl(
      imageUrl: null == imageUrl
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String,
      imageType: null == imageType
          ? _value.imageType
          : imageType // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$FatSecretImageImpl implements _FatSecretImage {
  const _$FatSecretImageImpl(
      {@JsonKey(name: 'image_url') required this.imageUrl,
      @JsonKey(name: 'image_type') required this.imageType});

  factory _$FatSecretImageImpl.fromJson(Map<String, dynamic> json) =>
      _$$FatSecretImageImplFromJson(json);

  @override
  @JsonKey(name: 'image_url')
  final String imageUrl;
  @override
  @JsonKey(name: 'image_type')
  final String imageType;

  @override
  String toString() {
    return 'FatSecretImage(imageUrl: $imageUrl, imageType: $imageType)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FatSecretImageImpl &&
            (identical(other.imageUrl, imageUrl) ||
                other.imageUrl == imageUrl) &&
            (identical(other.imageType, imageType) ||
                other.imageType == imageType));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, imageUrl, imageType);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FatSecretImageImplCopyWith<_$FatSecretImageImpl> get copyWith =>
      __$$FatSecretImageImplCopyWithImpl<_$FatSecretImageImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$FatSecretImageImplToJson(
      this,
    );
  }
}

abstract class _FatSecretImage implements FatSecretImage {
  const factory _FatSecretImage(
          {@JsonKey(name: 'image_url') required final String imageUrl,
          @JsonKey(name: 'image_type') required final String imageType}) =
      _$FatSecretImageImpl;

  factory _FatSecretImage.fromJson(Map<String, dynamic> json) =
      _$FatSecretImageImpl.fromJson;

  @override
  @JsonKey(name: 'image_url')
  String get imageUrl;
  @override
  @JsonKey(name: 'image_type')
  String get imageType;
  @override
  @JsonKey(ignore: true)
  _$$FatSecretImageImplCopyWith<_$FatSecretImageImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
