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

FatSecretToken _$FatSecretTokenFromJson(Map<String, dynamic> json) {
  return _FatSecretToken.fromJson(json);
}

/// @nodoc
mixin _$FatSecretToken {
  @JsonKey(name: 'access_token')
  String get accessToken => throw _privateConstructorUsedError;
  @JsonKey(name: 'token_type')
  String get tokenType => throw _privateConstructorUsedError;
  @JsonKey(name: 'expires_in')
  int get expiresIn => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $FatSecretTokenCopyWith<FatSecretToken> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FatSecretTokenCopyWith<$Res> {
  factory $FatSecretTokenCopyWith(
          FatSecretToken value, $Res Function(FatSecretToken) then) =
      _$FatSecretTokenCopyWithImpl<$Res, FatSecretToken>;
  @useResult
  $Res call(
      {@JsonKey(name: 'access_token') String accessToken,
      @JsonKey(name: 'token_type') String tokenType,
      @JsonKey(name: 'expires_in') int expiresIn});
}

/// @nodoc
class _$FatSecretTokenCopyWithImpl<$Res, $Val extends FatSecretToken>
    implements $FatSecretTokenCopyWith<$Res> {
  _$FatSecretTokenCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? accessToken = null,
    Object? tokenType = null,
    Object? expiresIn = null,
  }) {
    return _then(_value.copyWith(
      accessToken: null == accessToken
          ? _value.accessToken
          : accessToken // ignore: cast_nullable_to_non_nullable
              as String,
      tokenType: null == tokenType
          ? _value.tokenType
          : tokenType // ignore: cast_nullable_to_non_nullable
              as String,
      expiresIn: null == expiresIn
          ? _value.expiresIn
          : expiresIn // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$FatSecretTokenImplCopyWith<$Res>
    implements $FatSecretTokenCopyWith<$Res> {
  factory _$$FatSecretTokenImplCopyWith(_$FatSecretTokenImpl value,
          $Res Function(_$FatSecretTokenImpl) then) =
      __$$FatSecretTokenImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'access_token') String accessToken,
      @JsonKey(name: 'token_type') String tokenType,
      @JsonKey(name: 'expires_in') int expiresIn});
}

/// @nodoc
class __$$FatSecretTokenImplCopyWithImpl<$Res>
    extends _$FatSecretTokenCopyWithImpl<$Res, _$FatSecretTokenImpl>
    implements _$$FatSecretTokenImplCopyWith<$Res> {
  __$$FatSecretTokenImplCopyWithImpl(
      _$FatSecretTokenImpl _value, $Res Function(_$FatSecretTokenImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? accessToken = null,
    Object? tokenType = null,
    Object? expiresIn = null,
  }) {
    return _then(_$FatSecretTokenImpl(
      accessToken: null == accessToken
          ? _value.accessToken
          : accessToken // ignore: cast_nullable_to_non_nullable
              as String,
      tokenType: null == tokenType
          ? _value.tokenType
          : tokenType // ignore: cast_nullable_to_non_nullable
              as String,
      expiresIn: null == expiresIn
          ? _value.expiresIn
          : expiresIn // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$FatSecretTokenImpl implements _FatSecretToken {
  const _$FatSecretTokenImpl(
      {@JsonKey(name: 'access_token') required this.accessToken,
      @JsonKey(name: 'token_type') required this.tokenType,
      @JsonKey(name: 'expires_in') required this.expiresIn});

  factory _$FatSecretTokenImpl.fromJson(Map<String, dynamic> json) =>
      _$$FatSecretTokenImplFromJson(json);

  @override
  @JsonKey(name: 'access_token')
  final String accessToken;
  @override
  @JsonKey(name: 'token_type')
  final String tokenType;
  @override
  @JsonKey(name: 'expires_in')
  final int expiresIn;

  @override
  String toString() {
    return 'FatSecretToken(accessToken: $accessToken, tokenType: $tokenType, expiresIn: $expiresIn)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FatSecretTokenImpl &&
            (identical(other.accessToken, accessToken) ||
                other.accessToken == accessToken) &&
            (identical(other.tokenType, tokenType) ||
                other.tokenType == tokenType) &&
            (identical(other.expiresIn, expiresIn) ||
                other.expiresIn == expiresIn));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, accessToken, tokenType, expiresIn);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FatSecretTokenImplCopyWith<_$FatSecretTokenImpl> get copyWith =>
      __$$FatSecretTokenImplCopyWithImpl<_$FatSecretTokenImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$FatSecretTokenImplToJson(
      this,
    );
  }
}

abstract class _FatSecretToken implements FatSecretToken {
  const factory _FatSecretToken(
          {@JsonKey(name: 'access_token') required final String accessToken,
          @JsonKey(name: 'token_type') required final String tokenType,
          @JsonKey(name: 'expires_in') required final int expiresIn}) =
      _$FatSecretTokenImpl;

  factory _FatSecretToken.fromJson(Map<String, dynamic> json) =
      _$FatSecretTokenImpl.fromJson;

  @override
  @JsonKey(name: 'access_token')
  String get accessToken;
  @override
  @JsonKey(name: 'token_type')
  String get tokenType;
  @override
  @JsonKey(name: 'expires_in')
  int get expiresIn;
  @override
  @JsonKey(ignore: true)
  _$$FatSecretTokenImplCopyWith<_$FatSecretTokenImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

FatSecretSearchResponse _$FatSecretSearchResponseFromJson(
    Map<String, dynamic> json) {
  return _FatSecretSearchResponse.fromJson(json);
}

/// @nodoc
mixin _$FatSecretSearchResponse {
  @JsonKey(name: 'foods_search')
  FoodSearchContainer get foodsSearch => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $FatSecretSearchResponseCopyWith<FatSecretSearchResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FatSecretSearchResponseCopyWith<$Res> {
  factory $FatSecretSearchResponseCopyWith(FatSecretSearchResponse value,
          $Res Function(FatSecretSearchResponse) then) =
      _$FatSecretSearchResponseCopyWithImpl<$Res, FatSecretSearchResponse>;
  @useResult
  $Res call({@JsonKey(name: 'foods_search') FoodSearchContainer foodsSearch});

  $FoodSearchContainerCopyWith<$Res> get foodsSearch;
}

/// @nodoc
class _$FatSecretSearchResponseCopyWithImpl<$Res,
        $Val extends FatSecretSearchResponse>
    implements $FatSecretSearchResponseCopyWith<$Res> {
  _$FatSecretSearchResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? foodsSearch = null,
  }) {
    return _then(_value.copyWith(
      foodsSearch: null == foodsSearch
          ? _value.foodsSearch
          : foodsSearch // ignore: cast_nullable_to_non_nullable
              as FoodSearchContainer,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $FoodSearchContainerCopyWith<$Res> get foodsSearch {
    return $FoodSearchContainerCopyWith<$Res>(_value.foodsSearch, (value) {
      return _then(_value.copyWith(foodsSearch: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$FatSecretSearchResponseImplCopyWith<$Res>
    implements $FatSecretSearchResponseCopyWith<$Res> {
  factory _$$FatSecretSearchResponseImplCopyWith(
          _$FatSecretSearchResponseImpl value,
          $Res Function(_$FatSecretSearchResponseImpl) then) =
      __$$FatSecretSearchResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@JsonKey(name: 'foods_search') FoodSearchContainer foodsSearch});

  @override
  $FoodSearchContainerCopyWith<$Res> get foodsSearch;
}

/// @nodoc
class __$$FatSecretSearchResponseImplCopyWithImpl<$Res>
    extends _$FatSecretSearchResponseCopyWithImpl<$Res,
        _$FatSecretSearchResponseImpl>
    implements _$$FatSecretSearchResponseImplCopyWith<$Res> {
  __$$FatSecretSearchResponseImplCopyWithImpl(
      _$FatSecretSearchResponseImpl _value,
      $Res Function(_$FatSecretSearchResponseImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? foodsSearch = null,
  }) {
    return _then(_$FatSecretSearchResponseImpl(
      foodsSearch: null == foodsSearch
          ? _value.foodsSearch
          : foodsSearch // ignore: cast_nullable_to_non_nullable
              as FoodSearchContainer,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$FatSecretSearchResponseImpl implements _FatSecretSearchResponse {
  const _$FatSecretSearchResponseImpl(
      {@JsonKey(name: 'foods_search') required this.foodsSearch});

  factory _$FatSecretSearchResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$FatSecretSearchResponseImplFromJson(json);

  @override
  @JsonKey(name: 'foods_search')
  final FoodSearchContainer foodsSearch;

  @override
  String toString() {
    return 'FatSecretSearchResponse(foodsSearch: $foodsSearch)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FatSecretSearchResponseImpl &&
            (identical(other.foodsSearch, foodsSearch) ||
                other.foodsSearch == foodsSearch));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, foodsSearch);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FatSecretSearchResponseImplCopyWith<_$FatSecretSearchResponseImpl>
      get copyWith => __$$FatSecretSearchResponseImplCopyWithImpl<
          _$FatSecretSearchResponseImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$FatSecretSearchResponseImplToJson(
      this,
    );
  }
}

abstract class _FatSecretSearchResponse implements FatSecretSearchResponse {
  const factory _FatSecretSearchResponse(
          {@JsonKey(name: 'foods_search')
          required final FoodSearchContainer foodsSearch}) =
      _$FatSecretSearchResponseImpl;

  factory _FatSecretSearchResponse.fromJson(Map<String, dynamic> json) =
      _$FatSecretSearchResponseImpl.fromJson;

  @override
  @JsonKey(name: 'foods_search')
  FoodSearchContainer get foodsSearch;
  @override
  @JsonKey(ignore: true)
  _$$FatSecretSearchResponseImplCopyWith<_$FatSecretSearchResponseImpl>
      get copyWith => throw _privateConstructorUsedError;
}

FoodSearchContainer _$FoodSearchContainerFromJson(Map<String, dynamic> json) {
  return _FoodSearchContainer.fromJson(json);
}

/// @nodoc
mixin _$FoodSearchContainer {
  @JsonKey(name: 'max_results')
  String? get maxResults => throw _privateConstructorUsedError;
  @JsonKey(name: 'total_results')
  String? get totalResults => throw _privateConstructorUsedError;
  @JsonKey(name: 'page_number')
  String? get pageNumber => throw _privateConstructorUsedError;
  FoodList? get results => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $FoodSearchContainerCopyWith<FoodSearchContainer> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FoodSearchContainerCopyWith<$Res> {
  factory $FoodSearchContainerCopyWith(
          FoodSearchContainer value, $Res Function(FoodSearchContainer) then) =
      _$FoodSearchContainerCopyWithImpl<$Res, FoodSearchContainer>;
  @useResult
  $Res call(
      {@JsonKey(name: 'max_results') String? maxResults,
      @JsonKey(name: 'total_results') String? totalResults,
      @JsonKey(name: 'page_number') String? pageNumber,
      FoodList? results});

  $FoodListCopyWith<$Res>? get results;
}

/// @nodoc
class _$FoodSearchContainerCopyWithImpl<$Res, $Val extends FoodSearchContainer>
    implements $FoodSearchContainerCopyWith<$Res> {
  _$FoodSearchContainerCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? maxResults = freezed,
    Object? totalResults = freezed,
    Object? pageNumber = freezed,
    Object? results = freezed,
  }) {
    return _then(_value.copyWith(
      maxResults: freezed == maxResults
          ? _value.maxResults
          : maxResults // ignore: cast_nullable_to_non_nullable
              as String?,
      totalResults: freezed == totalResults
          ? _value.totalResults
          : totalResults // ignore: cast_nullable_to_non_nullable
              as String?,
      pageNumber: freezed == pageNumber
          ? _value.pageNumber
          : pageNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      results: freezed == results
          ? _value.results
          : results // ignore: cast_nullable_to_non_nullable
              as FoodList?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $FoodListCopyWith<$Res>? get results {
    if (_value.results == null) {
      return null;
    }

    return $FoodListCopyWith<$Res>(_value.results!, (value) {
      return _then(_value.copyWith(results: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$FoodSearchContainerImplCopyWith<$Res>
    implements $FoodSearchContainerCopyWith<$Res> {
  factory _$$FoodSearchContainerImplCopyWith(_$FoodSearchContainerImpl value,
          $Res Function(_$FoodSearchContainerImpl) then) =
      __$$FoodSearchContainerImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'max_results') String? maxResults,
      @JsonKey(name: 'total_results') String? totalResults,
      @JsonKey(name: 'page_number') String? pageNumber,
      FoodList? results});

  @override
  $FoodListCopyWith<$Res>? get results;
}

/// @nodoc
class __$$FoodSearchContainerImplCopyWithImpl<$Res>
    extends _$FoodSearchContainerCopyWithImpl<$Res, _$FoodSearchContainerImpl>
    implements _$$FoodSearchContainerImplCopyWith<$Res> {
  __$$FoodSearchContainerImplCopyWithImpl(_$FoodSearchContainerImpl _value,
      $Res Function(_$FoodSearchContainerImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? maxResults = freezed,
    Object? totalResults = freezed,
    Object? pageNumber = freezed,
    Object? results = freezed,
  }) {
    return _then(_$FoodSearchContainerImpl(
      maxResults: freezed == maxResults
          ? _value.maxResults
          : maxResults // ignore: cast_nullable_to_non_nullable
              as String?,
      totalResults: freezed == totalResults
          ? _value.totalResults
          : totalResults // ignore: cast_nullable_to_non_nullable
              as String?,
      pageNumber: freezed == pageNumber
          ? _value.pageNumber
          : pageNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      results: freezed == results
          ? _value.results
          : results // ignore: cast_nullable_to_non_nullable
              as FoodList?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$FoodSearchContainerImpl implements _FoodSearchContainer {
  const _$FoodSearchContainerImpl(
      {@JsonKey(name: 'max_results') this.maxResults,
      @JsonKey(name: 'total_results') this.totalResults,
      @JsonKey(name: 'page_number') this.pageNumber,
      this.results});

  factory _$FoodSearchContainerImpl.fromJson(Map<String, dynamic> json) =>
      _$$FoodSearchContainerImplFromJson(json);

  @override
  @JsonKey(name: 'max_results')
  final String? maxResults;
  @override
  @JsonKey(name: 'total_results')
  final String? totalResults;
  @override
  @JsonKey(name: 'page_number')
  final String? pageNumber;
  @override
  final FoodList? results;

  @override
  String toString() {
    return 'FoodSearchContainer(maxResults: $maxResults, totalResults: $totalResults, pageNumber: $pageNumber, results: $results)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FoodSearchContainerImpl &&
            (identical(other.maxResults, maxResults) ||
                other.maxResults == maxResults) &&
            (identical(other.totalResults, totalResults) ||
                other.totalResults == totalResults) &&
            (identical(other.pageNumber, pageNumber) ||
                other.pageNumber == pageNumber) &&
            (identical(other.results, results) || other.results == results));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, maxResults, totalResults, pageNumber, results);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FoodSearchContainerImplCopyWith<_$FoodSearchContainerImpl> get copyWith =>
      __$$FoodSearchContainerImplCopyWithImpl<_$FoodSearchContainerImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$FoodSearchContainerImplToJson(
      this,
    );
  }
}

abstract class _FoodSearchContainer implements FoodSearchContainer {
  const factory _FoodSearchContainer(
      {@JsonKey(name: 'max_results') final String? maxResults,
      @JsonKey(name: 'total_results') final String? totalResults,
      @JsonKey(name: 'page_number') final String? pageNumber,
      final FoodList? results}) = _$FoodSearchContainerImpl;

  factory _FoodSearchContainer.fromJson(Map<String, dynamic> json) =
      _$FoodSearchContainerImpl.fromJson;

  @override
  @JsonKey(name: 'max_results')
  String? get maxResults;
  @override
  @JsonKey(name: 'total_results')
  String? get totalResults;
  @override
  @JsonKey(name: 'page_number')
  String? get pageNumber;
  @override
  FoodList? get results;
  @override
  @JsonKey(ignore: true)
  _$$FoodSearchContainerImplCopyWith<_$FoodSearchContainerImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

FoodList _$FoodListFromJson(Map<String, dynamic> json) {
  return _FoodList.fromJson(json);
}

/// @nodoc
mixin _$FoodList {
  List<FatSecretFood> get food => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $FoodListCopyWith<FoodList> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FoodListCopyWith<$Res> {
  factory $FoodListCopyWith(FoodList value, $Res Function(FoodList) then) =
      _$FoodListCopyWithImpl<$Res, FoodList>;
  @useResult
  $Res call({List<FatSecretFood> food});
}

/// @nodoc
class _$FoodListCopyWithImpl<$Res, $Val extends FoodList>
    implements $FoodListCopyWith<$Res> {
  _$FoodListCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? food = null,
  }) {
    return _then(_value.copyWith(
      food: null == food
          ? _value.food
          : food // ignore: cast_nullable_to_non_nullable
              as List<FatSecretFood>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$FoodListImplCopyWith<$Res>
    implements $FoodListCopyWith<$Res> {
  factory _$$FoodListImplCopyWith(
          _$FoodListImpl value, $Res Function(_$FoodListImpl) then) =
      __$$FoodListImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<FatSecretFood> food});
}

/// @nodoc
class __$$FoodListImplCopyWithImpl<$Res>
    extends _$FoodListCopyWithImpl<$Res, _$FoodListImpl>
    implements _$$FoodListImplCopyWith<$Res> {
  __$$FoodListImplCopyWithImpl(
      _$FoodListImpl _value, $Res Function(_$FoodListImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? food = null,
  }) {
    return _then(_$FoodListImpl(
      food: null == food
          ? _value._food
          : food // ignore: cast_nullable_to_non_nullable
              as List<FatSecretFood>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$FoodListImpl implements _FoodList {
  const _$FoodListImpl({required final List<FatSecretFood> food})
      : _food = food;

  factory _$FoodListImpl.fromJson(Map<String, dynamic> json) =>
      _$$FoodListImplFromJson(json);

  final List<FatSecretFood> _food;
  @override
  List<FatSecretFood> get food {
    if (_food is EqualUnmodifiableListView) return _food;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_food);
  }

  @override
  String toString() {
    return 'FoodList(food: $food)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FoodListImpl &&
            const DeepCollectionEquality().equals(other._food, _food));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_food));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FoodListImplCopyWith<_$FoodListImpl> get copyWith =>
      __$$FoodListImplCopyWithImpl<_$FoodListImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$FoodListImplToJson(
      this,
    );
  }
}

abstract class _FoodList implements FoodList {
  const factory _FoodList({required final List<FatSecretFood> food}) =
      _$FoodListImpl;

  factory _FoodList.fromJson(Map<String, dynamic> json) =
      _$FoodListImpl.fromJson;

  @override
  List<FatSecretFood> get food;
  @override
  @JsonKey(ignore: true)
  _$$FoodListImplCopyWith<_$FoodListImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

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
  @JsonKey(name: 'food_images')
  FoodImagesWrapper? get foodImages => throw _privateConstructorUsedError;

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
      @JsonKey(name: 'food_url') String? foodUrl,
      @JsonKey(name: 'food_images') FoodImagesWrapper? foodImages});

  $FoodImagesWrapperCopyWith<$Res>? get foodImages;
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
    Object? foodImages = freezed,
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
      foodImages: freezed == foodImages
          ? _value.foodImages
          : foodImages // ignore: cast_nullable_to_non_nullable
              as FoodImagesWrapper?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $FoodImagesWrapperCopyWith<$Res>? get foodImages {
    if (_value.foodImages == null) {
      return null;
    }

    return $FoodImagesWrapperCopyWith<$Res>(_value.foodImages!, (value) {
      return _then(_value.copyWith(foodImages: value) as $Val);
    });
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
      @JsonKey(name: 'food_url') String? foodUrl,
      @JsonKey(name: 'food_images') FoodImagesWrapper? foodImages});

  @override
  $FoodImagesWrapperCopyWith<$Res>? get foodImages;
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
    Object? foodImages = freezed,
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
      foodImages: freezed == foodImages
          ? _value.foodImages
          : foodImages // ignore: cast_nullable_to_non_nullable
              as FoodImagesWrapper?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$FatSecretFoodImpl extends _FatSecretFood {
  const _$FatSecretFoodImpl(
      {@JsonKey(name: 'food_id') required this.foodId,
      @JsonKey(name: 'food_name') required this.foodName,
      @JsonKey(name: 'food_type') this.foodType,
      @JsonKey(name: 'food_url') this.foodUrl,
      @JsonKey(name: 'food_images') this.foodImages})
      : super._();

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
  @JsonKey(name: 'food_images')
  final FoodImagesWrapper? foodImages;

  @override
  String toString() {
    return 'FatSecretFood(foodId: $foodId, foodName: $foodName, foodType: $foodType, foodUrl: $foodUrl, foodImages: $foodImages)';
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
            (identical(other.foodUrl, foodUrl) || other.foodUrl == foodUrl) &&
            (identical(other.foodImages, foodImages) ||
                other.foodImages == foodImages));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, foodId, foodName, foodType, foodUrl, foodImages);

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

abstract class _FatSecretFood extends FatSecretFood {
  const factory _FatSecretFood(
          {@JsonKey(name: 'food_id') required final String foodId,
          @JsonKey(name: 'food_name') required final String foodName,
          @JsonKey(name: 'food_type') final String? foodType,
          @JsonKey(name: 'food_url') final String? foodUrl,
          @JsonKey(name: 'food_images') final FoodImagesWrapper? foodImages}) =
      _$FatSecretFoodImpl;
  const _FatSecretFood._() : super._();

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
  @JsonKey(name: 'food_images')
  FoodImagesWrapper? get foodImages;
  @override
  @JsonKey(ignore: true)
  _$$FatSecretFoodImplCopyWith<_$FatSecretFoodImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

FoodImagesWrapper _$FoodImagesWrapperFromJson(Map<String, dynamic> json) {
  return _FoodImagesWrapper.fromJson(json);
}

/// @nodoc
mixin _$FoodImagesWrapper {
  @JsonKey(name: 'food_image')
  dynamic get foodImage => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $FoodImagesWrapperCopyWith<FoodImagesWrapper> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FoodImagesWrapperCopyWith<$Res> {
  factory $FoodImagesWrapperCopyWith(
          FoodImagesWrapper value, $Res Function(FoodImagesWrapper) then) =
      _$FoodImagesWrapperCopyWithImpl<$Res, FoodImagesWrapper>;
  @useResult
  $Res call({@JsonKey(name: 'food_image') dynamic foodImage});
}

/// @nodoc
class _$FoodImagesWrapperCopyWithImpl<$Res, $Val extends FoodImagesWrapper>
    implements $FoodImagesWrapperCopyWith<$Res> {
  _$FoodImagesWrapperCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? foodImage = freezed,
  }) {
    return _then(_value.copyWith(
      foodImage: freezed == foodImage
          ? _value.foodImage
          : foodImage // ignore: cast_nullable_to_non_nullable
              as dynamic,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$FoodImagesWrapperImplCopyWith<$Res>
    implements $FoodImagesWrapperCopyWith<$Res> {
  factory _$$FoodImagesWrapperImplCopyWith(_$FoodImagesWrapperImpl value,
          $Res Function(_$FoodImagesWrapperImpl) then) =
      __$$FoodImagesWrapperImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@JsonKey(name: 'food_image') dynamic foodImage});
}

/// @nodoc
class __$$FoodImagesWrapperImplCopyWithImpl<$Res>
    extends _$FoodImagesWrapperCopyWithImpl<$Res, _$FoodImagesWrapperImpl>
    implements _$$FoodImagesWrapperImplCopyWith<$Res> {
  __$$FoodImagesWrapperImplCopyWithImpl(_$FoodImagesWrapperImpl _value,
      $Res Function(_$FoodImagesWrapperImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? foodImage = freezed,
  }) {
    return _then(_$FoodImagesWrapperImpl(
      foodImage: freezed == foodImage
          ? _value.foodImage
          : foodImage // ignore: cast_nullable_to_non_nullable
              as dynamic,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$FoodImagesWrapperImpl implements _FoodImagesWrapper {
  const _$FoodImagesWrapperImpl({@JsonKey(name: 'food_image') this.foodImage});

  factory _$FoodImagesWrapperImpl.fromJson(Map<String, dynamic> json) =>
      _$$FoodImagesWrapperImplFromJson(json);

  @override
  @JsonKey(name: 'food_image')
  final dynamic foodImage;

  @override
  String toString() {
    return 'FoodImagesWrapper(foodImage: $foodImage)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FoodImagesWrapperImpl &&
            const DeepCollectionEquality().equals(other.foodImage, foodImage));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(foodImage));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FoodImagesWrapperImplCopyWith<_$FoodImagesWrapperImpl> get copyWith =>
      __$$FoodImagesWrapperImplCopyWithImpl<_$FoodImagesWrapperImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$FoodImagesWrapperImplToJson(
      this,
    );
  }
}

abstract class _FoodImagesWrapper implements FoodImagesWrapper {
  const factory _FoodImagesWrapper(
          {@JsonKey(name: 'food_image') final dynamic foodImage}) =
      _$FoodImagesWrapperImpl;

  factory _FoodImagesWrapper.fromJson(Map<String, dynamic> json) =
      _$FoodImagesWrapperImpl.fromJson;

  @override
  @JsonKey(name: 'food_image')
  dynamic get foodImage;
  @override
  @JsonKey(ignore: true)
  _$$FoodImagesWrapperImplCopyWith<_$FoodImagesWrapperImpl> get copyWith =>
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

FatSecretFoodDetails _$FatSecretFoodDetailsFromJson(Map<String, dynamic> json) {
  return _FatSecretFoodDetails.fromJson(json);
}

/// @nodoc
mixin _$FatSecretFoodDetails {
  @JsonKey(name: 'food_id')
  String get foodId => throw _privateConstructorUsedError;
  @JsonKey(name: 'food_name')
  String get foodName => throw _privateConstructorUsedError;
  @JsonKey(name: 'food_type')
  String? get foodType => throw _privateConstructorUsedError;
  @JsonKey(name: 'servings')
  ServingsWrapper get servings => throw _privateConstructorUsedError;
  @JsonKey(name: 'food_images')
  FoodImagesWrapper? get foodImages => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $FatSecretFoodDetailsCopyWith<FatSecretFoodDetails> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FatSecretFoodDetailsCopyWith<$Res> {
  factory $FatSecretFoodDetailsCopyWith(FatSecretFoodDetails value,
          $Res Function(FatSecretFoodDetails) then) =
      _$FatSecretFoodDetailsCopyWithImpl<$Res, FatSecretFoodDetails>;
  @useResult
  $Res call(
      {@JsonKey(name: 'food_id') String foodId,
      @JsonKey(name: 'food_name') String foodName,
      @JsonKey(name: 'food_type') String? foodType,
      @JsonKey(name: 'servings') ServingsWrapper servings,
      @JsonKey(name: 'food_images') FoodImagesWrapper? foodImages});

  $ServingsWrapperCopyWith<$Res> get servings;
  $FoodImagesWrapperCopyWith<$Res>? get foodImages;
}

/// @nodoc
class _$FatSecretFoodDetailsCopyWithImpl<$Res,
        $Val extends FatSecretFoodDetails>
    implements $FatSecretFoodDetailsCopyWith<$Res> {
  _$FatSecretFoodDetailsCopyWithImpl(this._value, this._then);

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
    Object? servings = null,
    Object? foodImages = freezed,
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
      servings: null == servings
          ? _value.servings
          : servings // ignore: cast_nullable_to_non_nullable
              as ServingsWrapper,
      foodImages: freezed == foodImages
          ? _value.foodImages
          : foodImages // ignore: cast_nullable_to_non_nullable
              as FoodImagesWrapper?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $ServingsWrapperCopyWith<$Res> get servings {
    return $ServingsWrapperCopyWith<$Res>(_value.servings, (value) {
      return _then(_value.copyWith(servings: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $FoodImagesWrapperCopyWith<$Res>? get foodImages {
    if (_value.foodImages == null) {
      return null;
    }

    return $FoodImagesWrapperCopyWith<$Res>(_value.foodImages!, (value) {
      return _then(_value.copyWith(foodImages: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$FatSecretFoodDetailsImplCopyWith<$Res>
    implements $FatSecretFoodDetailsCopyWith<$Res> {
  factory _$$FatSecretFoodDetailsImplCopyWith(_$FatSecretFoodDetailsImpl value,
          $Res Function(_$FatSecretFoodDetailsImpl) then) =
      __$$FatSecretFoodDetailsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'food_id') String foodId,
      @JsonKey(name: 'food_name') String foodName,
      @JsonKey(name: 'food_type') String? foodType,
      @JsonKey(name: 'servings') ServingsWrapper servings,
      @JsonKey(name: 'food_images') FoodImagesWrapper? foodImages});

  @override
  $ServingsWrapperCopyWith<$Res> get servings;
  @override
  $FoodImagesWrapperCopyWith<$Res>? get foodImages;
}

/// @nodoc
class __$$FatSecretFoodDetailsImplCopyWithImpl<$Res>
    extends _$FatSecretFoodDetailsCopyWithImpl<$Res, _$FatSecretFoodDetailsImpl>
    implements _$$FatSecretFoodDetailsImplCopyWith<$Res> {
  __$$FatSecretFoodDetailsImplCopyWithImpl(_$FatSecretFoodDetailsImpl _value,
      $Res Function(_$FatSecretFoodDetailsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? foodId = null,
    Object? foodName = null,
    Object? foodType = freezed,
    Object? servings = null,
    Object? foodImages = freezed,
  }) {
    return _then(_$FatSecretFoodDetailsImpl(
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
      servings: null == servings
          ? _value.servings
          : servings // ignore: cast_nullable_to_non_nullable
              as ServingsWrapper,
      foodImages: freezed == foodImages
          ? _value.foodImages
          : foodImages // ignore: cast_nullable_to_non_nullable
              as FoodImagesWrapper?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$FatSecretFoodDetailsImpl extends _FatSecretFoodDetails {
  const _$FatSecretFoodDetailsImpl(
      {@JsonKey(name: 'food_id') required this.foodId,
      @JsonKey(name: 'food_name') required this.foodName,
      @JsonKey(name: 'food_type') this.foodType,
      @JsonKey(name: 'servings') required this.servings,
      @JsonKey(name: 'food_images') this.foodImages})
      : super._();

  factory _$FatSecretFoodDetailsImpl.fromJson(Map<String, dynamic> json) =>
      _$$FatSecretFoodDetailsImplFromJson(json);

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
  @JsonKey(name: 'servings')
  final ServingsWrapper servings;
  @override
  @JsonKey(name: 'food_images')
  final FoodImagesWrapper? foodImages;

  @override
  String toString() {
    return 'FatSecretFoodDetails(foodId: $foodId, foodName: $foodName, foodType: $foodType, servings: $servings, foodImages: $foodImages)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FatSecretFoodDetailsImpl &&
            (identical(other.foodId, foodId) || other.foodId == foodId) &&
            (identical(other.foodName, foodName) ||
                other.foodName == foodName) &&
            (identical(other.foodType, foodType) ||
                other.foodType == foodType) &&
            (identical(other.servings, servings) ||
                other.servings == servings) &&
            (identical(other.foodImages, foodImages) ||
                other.foodImages == foodImages));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, foodId, foodName, foodType, servings, foodImages);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FatSecretFoodDetailsImplCopyWith<_$FatSecretFoodDetailsImpl>
      get copyWith =>
          __$$FatSecretFoodDetailsImplCopyWithImpl<_$FatSecretFoodDetailsImpl>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$FatSecretFoodDetailsImplToJson(
      this,
    );
  }
}

abstract class _FatSecretFoodDetails extends FatSecretFoodDetails {
  const factory _FatSecretFoodDetails(
          {@JsonKey(name: 'food_id') required final String foodId,
          @JsonKey(name: 'food_name') required final String foodName,
          @JsonKey(name: 'food_type') final String? foodType,
          @JsonKey(name: 'servings') required final ServingsWrapper servings,
          @JsonKey(name: 'food_images') final FoodImagesWrapper? foodImages}) =
      _$FatSecretFoodDetailsImpl;
  const _FatSecretFoodDetails._() : super._();

  factory _FatSecretFoodDetails.fromJson(Map<String, dynamic> json) =
      _$FatSecretFoodDetailsImpl.fromJson;

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
  @JsonKey(name: 'servings')
  ServingsWrapper get servings;
  @override
  @JsonKey(name: 'food_images')
  FoodImagesWrapper? get foodImages;
  @override
  @JsonKey(ignore: true)
  _$$FatSecretFoodDetailsImplCopyWith<_$FatSecretFoodDetailsImpl>
      get copyWith => throw _privateConstructorUsedError;
}

ServingsWrapper _$ServingsWrapperFromJson(Map<String, dynamic> json) {
  return _ServingsWrapper.fromJson(json);
}

/// @nodoc
mixin _$ServingsWrapper {
  List<FatSecretServing> get serving => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ServingsWrapperCopyWith<ServingsWrapper> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ServingsWrapperCopyWith<$Res> {
  factory $ServingsWrapperCopyWith(
          ServingsWrapper value, $Res Function(ServingsWrapper) then) =
      _$ServingsWrapperCopyWithImpl<$Res, ServingsWrapper>;
  @useResult
  $Res call({List<FatSecretServing> serving});
}

/// @nodoc
class _$ServingsWrapperCopyWithImpl<$Res, $Val extends ServingsWrapper>
    implements $ServingsWrapperCopyWith<$Res> {
  _$ServingsWrapperCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? serving = null,
  }) {
    return _then(_value.copyWith(
      serving: null == serving
          ? _value.serving
          : serving // ignore: cast_nullable_to_non_nullable
              as List<FatSecretServing>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ServingsWrapperImplCopyWith<$Res>
    implements $ServingsWrapperCopyWith<$Res> {
  factory _$$ServingsWrapperImplCopyWith(_$ServingsWrapperImpl value,
          $Res Function(_$ServingsWrapperImpl) then) =
      __$$ServingsWrapperImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<FatSecretServing> serving});
}

/// @nodoc
class __$$ServingsWrapperImplCopyWithImpl<$Res>
    extends _$ServingsWrapperCopyWithImpl<$Res, _$ServingsWrapperImpl>
    implements _$$ServingsWrapperImplCopyWith<$Res> {
  __$$ServingsWrapperImplCopyWithImpl(
      _$ServingsWrapperImpl _value, $Res Function(_$ServingsWrapperImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? serving = null,
  }) {
    return _then(_$ServingsWrapperImpl(
      serving: null == serving
          ? _value._serving
          : serving // ignore: cast_nullable_to_non_nullable
              as List<FatSecretServing>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ServingsWrapperImpl implements _ServingsWrapper {
  const _$ServingsWrapperImpl({required final List<FatSecretServing> serving})
      : _serving = serving;

  factory _$ServingsWrapperImpl.fromJson(Map<String, dynamic> json) =>
      _$$ServingsWrapperImplFromJson(json);

  final List<FatSecretServing> _serving;
  @override
  List<FatSecretServing> get serving {
    if (_serving is EqualUnmodifiableListView) return _serving;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_serving);
  }

  @override
  String toString() {
    return 'ServingsWrapper(serving: $serving)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ServingsWrapperImpl &&
            const DeepCollectionEquality().equals(other._serving, _serving));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_serving));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ServingsWrapperImplCopyWith<_$ServingsWrapperImpl> get copyWith =>
      __$$ServingsWrapperImplCopyWithImpl<_$ServingsWrapperImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ServingsWrapperImplToJson(
      this,
    );
  }
}

abstract class _ServingsWrapper implements ServingsWrapper {
  const factory _ServingsWrapper(
      {required final List<FatSecretServing> serving}) = _$ServingsWrapperImpl;

  factory _ServingsWrapper.fromJson(Map<String, dynamic> json) =
      _$ServingsWrapperImpl.fromJson;

  @override
  List<FatSecretServing> get serving;
  @override
  @JsonKey(ignore: true)
  _$$ServingsWrapperImplCopyWith<_$ServingsWrapperImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

FatSecretServing _$FatSecretServingFromJson(Map<String, dynamic> json) {
  return _FatSecretServing.fromJson(json);
}

/// @nodoc
mixin _$FatSecretServing {
  @JsonKey(name: 'serving_id')
  String get servingId => throw _privateConstructorUsedError;
  @JsonKey(name: 'serving_description')
  String get servingDescription => throw _privateConstructorUsedError;
  @JsonKey(name: 'calories')
  String get calories => throw _privateConstructorUsedError;
  @JsonKey(name: 'protein')
  String get protein => throw _privateConstructorUsedError;
  @JsonKey(name: 'carbohydrate')
  String get carbohydrate => throw _privateConstructorUsedError;
  @JsonKey(name: 'fat')
  String get fat => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $FatSecretServingCopyWith<FatSecretServing> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FatSecretServingCopyWith<$Res> {
  factory $FatSecretServingCopyWith(
          FatSecretServing value, $Res Function(FatSecretServing) then) =
      _$FatSecretServingCopyWithImpl<$Res, FatSecretServing>;
  @useResult
  $Res call(
      {@JsonKey(name: 'serving_id') String servingId,
      @JsonKey(name: 'serving_description') String servingDescription,
      @JsonKey(name: 'calories') String calories,
      @JsonKey(name: 'protein') String protein,
      @JsonKey(name: 'carbohydrate') String carbohydrate,
      @JsonKey(name: 'fat') String fat});
}

/// @nodoc
class _$FatSecretServingCopyWithImpl<$Res, $Val extends FatSecretServing>
    implements $FatSecretServingCopyWith<$Res> {
  _$FatSecretServingCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? servingId = null,
    Object? servingDescription = null,
    Object? calories = null,
    Object? protein = null,
    Object? carbohydrate = null,
    Object? fat = null,
  }) {
    return _then(_value.copyWith(
      servingId: null == servingId
          ? _value.servingId
          : servingId // ignore: cast_nullable_to_non_nullable
              as String,
      servingDescription: null == servingDescription
          ? _value.servingDescription
          : servingDescription // ignore: cast_nullable_to_non_nullable
              as String,
      calories: null == calories
          ? _value.calories
          : calories // ignore: cast_nullable_to_non_nullable
              as String,
      protein: null == protein
          ? _value.protein
          : protein // ignore: cast_nullable_to_non_nullable
              as String,
      carbohydrate: null == carbohydrate
          ? _value.carbohydrate
          : carbohydrate // ignore: cast_nullable_to_non_nullable
              as String,
      fat: null == fat
          ? _value.fat
          : fat // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$FatSecretServingImplCopyWith<$Res>
    implements $FatSecretServingCopyWith<$Res> {
  factory _$$FatSecretServingImplCopyWith(_$FatSecretServingImpl value,
          $Res Function(_$FatSecretServingImpl) then) =
      __$$FatSecretServingImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'serving_id') String servingId,
      @JsonKey(name: 'serving_description') String servingDescription,
      @JsonKey(name: 'calories') String calories,
      @JsonKey(name: 'protein') String protein,
      @JsonKey(name: 'carbohydrate') String carbohydrate,
      @JsonKey(name: 'fat') String fat});
}

/// @nodoc
class __$$FatSecretServingImplCopyWithImpl<$Res>
    extends _$FatSecretServingCopyWithImpl<$Res, _$FatSecretServingImpl>
    implements _$$FatSecretServingImplCopyWith<$Res> {
  __$$FatSecretServingImplCopyWithImpl(_$FatSecretServingImpl _value,
      $Res Function(_$FatSecretServingImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? servingId = null,
    Object? servingDescription = null,
    Object? calories = null,
    Object? protein = null,
    Object? carbohydrate = null,
    Object? fat = null,
  }) {
    return _then(_$FatSecretServingImpl(
      servingId: null == servingId
          ? _value.servingId
          : servingId // ignore: cast_nullable_to_non_nullable
              as String,
      servingDescription: null == servingDescription
          ? _value.servingDescription
          : servingDescription // ignore: cast_nullable_to_non_nullable
              as String,
      calories: null == calories
          ? _value.calories
          : calories // ignore: cast_nullable_to_non_nullable
              as String,
      protein: null == protein
          ? _value.protein
          : protein // ignore: cast_nullable_to_non_nullable
              as String,
      carbohydrate: null == carbohydrate
          ? _value.carbohydrate
          : carbohydrate // ignore: cast_nullable_to_non_nullable
              as String,
      fat: null == fat
          ? _value.fat
          : fat // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$FatSecretServingImpl extends _FatSecretServing {
  const _$FatSecretServingImpl(
      {@JsonKey(name: 'serving_id') required this.servingId,
      @JsonKey(name: 'serving_description') required this.servingDescription,
      @JsonKey(name: 'calories') required this.calories,
      @JsonKey(name: 'protein') required this.protein,
      @JsonKey(name: 'carbohydrate') required this.carbohydrate,
      @JsonKey(name: 'fat') required this.fat})
      : super._();

  factory _$FatSecretServingImpl.fromJson(Map<String, dynamic> json) =>
      _$$FatSecretServingImplFromJson(json);

  @override
  @JsonKey(name: 'serving_id')
  final String servingId;
  @override
  @JsonKey(name: 'serving_description')
  final String servingDescription;
  @override
  @JsonKey(name: 'calories')
  final String calories;
  @override
  @JsonKey(name: 'protein')
  final String protein;
  @override
  @JsonKey(name: 'carbohydrate')
  final String carbohydrate;
  @override
  @JsonKey(name: 'fat')
  final String fat;

  @override
  String toString() {
    return 'FatSecretServing(servingId: $servingId, servingDescription: $servingDescription, calories: $calories, protein: $protein, carbohydrate: $carbohydrate, fat: $fat)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FatSecretServingImpl &&
            (identical(other.servingId, servingId) ||
                other.servingId == servingId) &&
            (identical(other.servingDescription, servingDescription) ||
                other.servingDescription == servingDescription) &&
            (identical(other.calories, calories) ||
                other.calories == calories) &&
            (identical(other.protein, protein) || other.protein == protein) &&
            (identical(other.carbohydrate, carbohydrate) ||
                other.carbohydrate == carbohydrate) &&
            (identical(other.fat, fat) || other.fat == fat));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, servingId, servingDescription,
      calories, protein, carbohydrate, fat);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FatSecretServingImplCopyWith<_$FatSecretServingImpl> get copyWith =>
      __$$FatSecretServingImplCopyWithImpl<_$FatSecretServingImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$FatSecretServingImplToJson(
      this,
    );
  }
}

abstract class _FatSecretServing extends FatSecretServing {
  const factory _FatSecretServing(
          {@JsonKey(name: 'serving_id') required final String servingId,
          @JsonKey(name: 'serving_description')
          required final String servingDescription,
          @JsonKey(name: 'calories') required final String calories,
          @JsonKey(name: 'protein') required final String protein,
          @JsonKey(name: 'carbohydrate') required final String carbohydrate,
          @JsonKey(name: 'fat') required final String fat}) =
      _$FatSecretServingImpl;
  const _FatSecretServing._() : super._();

  factory _FatSecretServing.fromJson(Map<String, dynamic> json) =
      _$FatSecretServingImpl.fromJson;

  @override
  @JsonKey(name: 'serving_id')
  String get servingId;
  @override
  @JsonKey(name: 'serving_description')
  String get servingDescription;
  @override
  @JsonKey(name: 'calories')
  String get calories;
  @override
  @JsonKey(name: 'protein')
  String get protein;
  @override
  @JsonKey(name: 'carbohydrate')
  String get carbohydrate;
  @override
  @JsonKey(name: 'fat')
  String get fat;
  @override
  @JsonKey(ignore: true)
  _$$FatSecretServingImplCopyWith<_$FatSecretServingImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
