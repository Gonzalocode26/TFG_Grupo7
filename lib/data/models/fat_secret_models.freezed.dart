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
