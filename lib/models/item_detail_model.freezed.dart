// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'item_detail_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ItemDetail _$ItemDetailFromJson(Map<String, dynamic> json) {
  return _ItemDetail.fromJson(json);
}

/// @nodoc
mixin _$ItemDetail {
  int get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  int get originalPrice => throw _privateConstructorUsedError;
  int get minSellingPrice => throw _privateConstructorUsedError;
  int get ncSellingPrice => throw _privateConstructorUsedError;
  String? get information => throw _privateConstructorUsedError;
  String? get tip => throw _privateConstructorUsedError;
  String? get warning => throw _privateConstructorUsedError;
  int get discountRate => throw _privateConstructorUsedError;
  String? get info => throw _privateConstructorUsedError;
  List<ItemOption> get options => throw _privateConstructorUsedError;
  String get imageUrl => throw _privateConstructorUsedError;
  ConCategory2 get conCategory2 => throw _privateConstructorUsedError;

  /// Serializes this ItemDetail to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ItemDetail
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ItemDetailCopyWith<ItemDetail> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ItemDetailCopyWith<$Res> {
  factory $ItemDetailCopyWith(
          ItemDetail value, $Res Function(ItemDetail) then) =
      _$ItemDetailCopyWithImpl<$Res, ItemDetail>;
  @useResult
  $Res call(
      {int id,
      String name,
      int originalPrice,
      int minSellingPrice,
      int ncSellingPrice,
      String? information,
      String? tip,
      String? warning,
      int discountRate,
      String? info,
      List<ItemOption> options,
      String imageUrl,
      ConCategory2 conCategory2});

  $ConCategory2CopyWith<$Res> get conCategory2;
}

/// @nodoc
class _$ItemDetailCopyWithImpl<$Res, $Val extends ItemDetail>
    implements $ItemDetailCopyWith<$Res> {
  _$ItemDetailCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ItemDetail
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? originalPrice = null,
    Object? minSellingPrice = null,
    Object? ncSellingPrice = null,
    Object? information = freezed,
    Object? tip = freezed,
    Object? warning = freezed,
    Object? discountRate = null,
    Object? info = freezed,
    Object? options = null,
    Object? imageUrl = null,
    Object? conCategory2 = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      originalPrice: null == originalPrice
          ? _value.originalPrice
          : originalPrice // ignore: cast_nullable_to_non_nullable
              as int,
      minSellingPrice: null == minSellingPrice
          ? _value.minSellingPrice
          : minSellingPrice // ignore: cast_nullable_to_non_nullable
              as int,
      ncSellingPrice: null == ncSellingPrice
          ? _value.ncSellingPrice
          : ncSellingPrice // ignore: cast_nullable_to_non_nullable
              as int,
      information: freezed == information
          ? _value.information
          : information // ignore: cast_nullable_to_non_nullable
              as String?,
      tip: freezed == tip
          ? _value.tip
          : tip // ignore: cast_nullable_to_non_nullable
              as String?,
      warning: freezed == warning
          ? _value.warning
          : warning // ignore: cast_nullable_to_non_nullable
              as String?,
      discountRate: null == discountRate
          ? _value.discountRate
          : discountRate // ignore: cast_nullable_to_non_nullable
              as int,
      info: freezed == info
          ? _value.info
          : info // ignore: cast_nullable_to_non_nullable
              as String?,
      options: null == options
          ? _value.options
          : options // ignore: cast_nullable_to_non_nullable
              as List<ItemOption>,
      imageUrl: null == imageUrl
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String,
      conCategory2: null == conCategory2
          ? _value.conCategory2
          : conCategory2 // ignore: cast_nullable_to_non_nullable
              as ConCategory2,
    ) as $Val);
  }

  /// Create a copy of ItemDetail
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ConCategory2CopyWith<$Res> get conCategory2 {
    return $ConCategory2CopyWith<$Res>(_value.conCategory2, (value) {
      return _then(_value.copyWith(conCategory2: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ItemDetailImplCopyWith<$Res>
    implements $ItemDetailCopyWith<$Res> {
  factory _$$ItemDetailImplCopyWith(
          _$ItemDetailImpl value, $Res Function(_$ItemDetailImpl) then) =
      __$$ItemDetailImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      String name,
      int originalPrice,
      int minSellingPrice,
      int ncSellingPrice,
      String? information,
      String? tip,
      String? warning,
      int discountRate,
      String? info,
      List<ItemOption> options,
      String imageUrl,
      ConCategory2 conCategory2});

  @override
  $ConCategory2CopyWith<$Res> get conCategory2;
}

/// @nodoc
class __$$ItemDetailImplCopyWithImpl<$Res>
    extends _$ItemDetailCopyWithImpl<$Res, _$ItemDetailImpl>
    implements _$$ItemDetailImplCopyWith<$Res> {
  __$$ItemDetailImplCopyWithImpl(
      _$ItemDetailImpl _value, $Res Function(_$ItemDetailImpl) _then)
      : super(_value, _then);

  /// Create a copy of ItemDetail
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? originalPrice = null,
    Object? minSellingPrice = null,
    Object? ncSellingPrice = null,
    Object? information = freezed,
    Object? tip = freezed,
    Object? warning = freezed,
    Object? discountRate = null,
    Object? info = freezed,
    Object? options = null,
    Object? imageUrl = null,
    Object? conCategory2 = null,
  }) {
    return _then(_$ItemDetailImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      originalPrice: null == originalPrice
          ? _value.originalPrice
          : originalPrice // ignore: cast_nullable_to_non_nullable
              as int,
      minSellingPrice: null == minSellingPrice
          ? _value.minSellingPrice
          : minSellingPrice // ignore: cast_nullable_to_non_nullable
              as int,
      ncSellingPrice: null == ncSellingPrice
          ? _value.ncSellingPrice
          : ncSellingPrice // ignore: cast_nullable_to_non_nullable
              as int,
      information: freezed == information
          ? _value.information
          : information // ignore: cast_nullable_to_non_nullable
              as String?,
      tip: freezed == tip
          ? _value.tip
          : tip // ignore: cast_nullable_to_non_nullable
              as String?,
      warning: freezed == warning
          ? _value.warning
          : warning // ignore: cast_nullable_to_non_nullable
              as String?,
      discountRate: null == discountRate
          ? _value.discountRate
          : discountRate // ignore: cast_nullable_to_non_nullable
              as int,
      info: freezed == info
          ? _value.info
          : info // ignore: cast_nullable_to_non_nullable
              as String?,
      options: null == options
          ? _value._options
          : options // ignore: cast_nullable_to_non_nullable
              as List<ItemOption>,
      imageUrl: null == imageUrl
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String,
      conCategory2: null == conCategory2
          ? _value.conCategory2
          : conCategory2 // ignore: cast_nullable_to_non_nullable
              as ConCategory2,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ItemDetailImpl implements _ItemDetail {
  const _$ItemDetailImpl(
      {required this.id,
      required this.name,
      required this.originalPrice,
      required this.minSellingPrice,
      required this.ncSellingPrice,
      this.information,
      this.tip,
      this.warning,
      required this.discountRate,
      this.info,
      required final List<ItemOption> options,
      required this.imageUrl,
      required this.conCategory2})
      : _options = options;

  factory _$ItemDetailImpl.fromJson(Map<String, dynamic> json) =>
      _$$ItemDetailImplFromJson(json);

  @override
  final int id;
  @override
  final String name;
  @override
  final int originalPrice;
  @override
  final int minSellingPrice;
  @override
  final int ncSellingPrice;
  @override
  final String? information;
  @override
  final String? tip;
  @override
  final String? warning;
  @override
  final int discountRate;
  @override
  final String? info;
  final List<ItemOption> _options;
  @override
  List<ItemOption> get options {
    if (_options is EqualUnmodifiableListView) return _options;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_options);
  }

  @override
  final String imageUrl;
  @override
  final ConCategory2 conCategory2;

  @override
  String toString() {
    return 'ItemDetail(id: $id, name: $name, originalPrice: $originalPrice, minSellingPrice: $minSellingPrice, ncSellingPrice: $ncSellingPrice, information: $information, tip: $tip, warning: $warning, discountRate: $discountRate, info: $info, options: $options, imageUrl: $imageUrl, conCategory2: $conCategory2)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ItemDetailImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.originalPrice, originalPrice) ||
                other.originalPrice == originalPrice) &&
            (identical(other.minSellingPrice, minSellingPrice) ||
                other.minSellingPrice == minSellingPrice) &&
            (identical(other.ncSellingPrice, ncSellingPrice) ||
                other.ncSellingPrice == ncSellingPrice) &&
            (identical(other.information, information) ||
                other.information == information) &&
            (identical(other.tip, tip) || other.tip == tip) &&
            (identical(other.warning, warning) || other.warning == warning) &&
            (identical(other.discountRate, discountRate) ||
                other.discountRate == discountRate) &&
            (identical(other.info, info) || other.info == info) &&
            const DeepCollectionEquality().equals(other._options, _options) &&
            (identical(other.imageUrl, imageUrl) ||
                other.imageUrl == imageUrl) &&
            (identical(other.conCategory2, conCategory2) ||
                other.conCategory2 == conCategory2));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      name,
      originalPrice,
      minSellingPrice,
      ncSellingPrice,
      information,
      tip,
      warning,
      discountRate,
      info,
      const DeepCollectionEquality().hash(_options),
      imageUrl,
      conCategory2);

  /// Create a copy of ItemDetail
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ItemDetailImplCopyWith<_$ItemDetailImpl> get copyWith =>
      __$$ItemDetailImplCopyWithImpl<_$ItemDetailImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ItemDetailImplToJson(
      this,
    );
  }
}

abstract class _ItemDetail implements ItemDetail {
  const factory _ItemDetail(
      {required final int id,
      required final String name,
      required final int originalPrice,
      required final int minSellingPrice,
      required final int ncSellingPrice,
      final String? information,
      final String? tip,
      final String? warning,
      required final int discountRate,
      final String? info,
      required final List<ItemOption> options,
      required final String imageUrl,
      required final ConCategory2 conCategory2}) = _$ItemDetailImpl;

  factory _ItemDetail.fromJson(Map<String, dynamic> json) =
      _$ItemDetailImpl.fromJson;

  @override
  int get id;
  @override
  String get name;
  @override
  int get originalPrice;
  @override
  int get minSellingPrice;
  @override
  int get ncSellingPrice;
  @override
  String? get information;
  @override
  String? get tip;
  @override
  String? get warning;
  @override
  int get discountRate;
  @override
  String? get info;
  @override
  List<ItemOption> get options;
  @override
  String get imageUrl;
  @override
  ConCategory2 get conCategory2;

  /// Create a copy of ItemDetail
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ItemDetailImplCopyWith<_$ItemDetailImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

ConCategory2 _$ConCategory2FromJson(Map<String, dynamic> json) {
  return _ConCategory2.fromJson(json);
}

/// @nodoc
mixin _$ConCategory2 {
  int get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String? get info => throw _privateConstructorUsedError;
  ConCategory1 get conCategory1 => throw _privateConstructorUsedError;

  /// Serializes this ConCategory2 to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ConCategory2
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ConCategory2CopyWith<ConCategory2> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ConCategory2CopyWith<$Res> {
  factory $ConCategory2CopyWith(
          ConCategory2 value, $Res Function(ConCategory2) then) =
      _$ConCategory2CopyWithImpl<$Res, ConCategory2>;
  @useResult
  $Res call({int id, String name, String? info, ConCategory1 conCategory1});

  $ConCategory1CopyWith<$Res> get conCategory1;
}

/// @nodoc
class _$ConCategory2CopyWithImpl<$Res, $Val extends ConCategory2>
    implements $ConCategory2CopyWith<$Res> {
  _$ConCategory2CopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ConCategory2
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? info = freezed,
    Object? conCategory1 = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      info: freezed == info
          ? _value.info
          : info // ignore: cast_nullable_to_non_nullable
              as String?,
      conCategory1: null == conCategory1
          ? _value.conCategory1
          : conCategory1 // ignore: cast_nullable_to_non_nullable
              as ConCategory1,
    ) as $Val);
  }

  /// Create a copy of ConCategory2
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ConCategory1CopyWith<$Res> get conCategory1 {
    return $ConCategory1CopyWith<$Res>(_value.conCategory1, (value) {
      return _then(_value.copyWith(conCategory1: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ConCategory2ImplCopyWith<$Res>
    implements $ConCategory2CopyWith<$Res> {
  factory _$$ConCategory2ImplCopyWith(
          _$ConCategory2Impl value, $Res Function(_$ConCategory2Impl) then) =
      __$$ConCategory2ImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int id, String name, String? info, ConCategory1 conCategory1});

  @override
  $ConCategory1CopyWith<$Res> get conCategory1;
}

/// @nodoc
class __$$ConCategory2ImplCopyWithImpl<$Res>
    extends _$ConCategory2CopyWithImpl<$Res, _$ConCategory2Impl>
    implements _$$ConCategory2ImplCopyWith<$Res> {
  __$$ConCategory2ImplCopyWithImpl(
      _$ConCategory2Impl _value, $Res Function(_$ConCategory2Impl) _then)
      : super(_value, _then);

  /// Create a copy of ConCategory2
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? info = freezed,
    Object? conCategory1 = null,
  }) {
    return _then(_$ConCategory2Impl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      info: freezed == info
          ? _value.info
          : info // ignore: cast_nullable_to_non_nullable
              as String?,
      conCategory1: null == conCategory1
          ? _value.conCategory1
          : conCategory1 // ignore: cast_nullable_to_non_nullable
              as ConCategory1,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ConCategory2Impl implements _ConCategory2 {
  const _$ConCategory2Impl(
      {this.id = 0, this.name = '', this.info, required this.conCategory1});

  factory _$ConCategory2Impl.fromJson(Map<String, dynamic> json) =>
      _$$ConCategory2ImplFromJson(json);

  @override
  @JsonKey()
  final int id;
  @override
  @JsonKey()
  final String name;
  @override
  final String? info;
  @override
  final ConCategory1 conCategory1;

  @override
  String toString() {
    return 'ConCategory2(id: $id, name: $name, info: $info, conCategory1: $conCategory1)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ConCategory2Impl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.info, info) || other.info == info) &&
            (identical(other.conCategory1, conCategory1) ||
                other.conCategory1 == conCategory1));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, name, info, conCategory1);

  /// Create a copy of ConCategory2
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ConCategory2ImplCopyWith<_$ConCategory2Impl> get copyWith =>
      __$$ConCategory2ImplCopyWithImpl<_$ConCategory2Impl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ConCategory2ImplToJson(
      this,
    );
  }
}

abstract class _ConCategory2 implements ConCategory2 {
  const factory _ConCategory2(
      {final int id,
      final String name,
      final String? info,
      required final ConCategory1 conCategory1}) = _$ConCategory2Impl;

  factory _ConCategory2.fromJson(Map<String, dynamic> json) =
      _$ConCategory2Impl.fromJson;

  @override
  int get id;
  @override
  String get name;
  @override
  String? get info;
  @override
  ConCategory1 get conCategory1;

  /// Create a copy of ConCategory2
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ConCategory2ImplCopyWith<_$ConCategory2Impl> get copyWith =>
      throw _privateConstructorUsedError;
}

ConCategory1 _$ConCategory1FromJson(Map<String, dynamic> json) {
  return _ConCategory1.fromJson(json);
}

/// @nodoc
mixin _$ConCategory1 {
  int get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String? get info => throw _privateConstructorUsedError;

  /// Serializes this ConCategory1 to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ConCategory1
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ConCategory1CopyWith<ConCategory1> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ConCategory1CopyWith<$Res> {
  factory $ConCategory1CopyWith(
          ConCategory1 value, $Res Function(ConCategory1) then) =
      _$ConCategory1CopyWithImpl<$Res, ConCategory1>;
  @useResult
  $Res call({int id, String name, String? info});
}

/// @nodoc
class _$ConCategory1CopyWithImpl<$Res, $Val extends ConCategory1>
    implements $ConCategory1CopyWith<$Res> {
  _$ConCategory1CopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ConCategory1
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? info = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      info: freezed == info
          ? _value.info
          : info // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ConCategory1ImplCopyWith<$Res>
    implements $ConCategory1CopyWith<$Res> {
  factory _$$ConCategory1ImplCopyWith(
          _$ConCategory1Impl value, $Res Function(_$ConCategory1Impl) then) =
      __$$ConCategory1ImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int id, String name, String? info});
}

/// @nodoc
class __$$ConCategory1ImplCopyWithImpl<$Res>
    extends _$ConCategory1CopyWithImpl<$Res, _$ConCategory1Impl>
    implements _$$ConCategory1ImplCopyWith<$Res> {
  __$$ConCategory1ImplCopyWithImpl(
      _$ConCategory1Impl _value, $Res Function(_$ConCategory1Impl) _then)
      : super(_value, _then);

  /// Create a copy of ConCategory1
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? info = freezed,
  }) {
    return _then(_$ConCategory1Impl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      info: freezed == info
          ? _value.info
          : info // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ConCategory1Impl implements _ConCategory1 {
  const _$ConCategory1Impl({this.id = 0, this.name = '', this.info = ''});

  factory _$ConCategory1Impl.fromJson(Map<String, dynamic> json) =>
      _$$ConCategory1ImplFromJson(json);

  @override
  @JsonKey()
  final int id;
  @override
  @JsonKey()
  final String name;
  @override
  @JsonKey()
  final String? info;

  @override
  String toString() {
    return 'ConCategory1(id: $id, name: $name, info: $info)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ConCategory1Impl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.info, info) || other.info == info));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, name, info);

  /// Create a copy of ConCategory1
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ConCategory1ImplCopyWith<_$ConCategory1Impl> get copyWith =>
      __$$ConCategory1ImplCopyWithImpl<_$ConCategory1Impl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ConCategory1ImplToJson(
      this,
    );
  }
}

abstract class _ConCategory1 implements ConCategory1 {
  const factory _ConCategory1(
      {final int id,
      final String name,
      final String? info}) = _$ConCategory1Impl;

  factory _ConCategory1.fromJson(Map<String, dynamic> json) =
      _$ConCategory1Impl.fromJson;

  @override
  int get id;
  @override
  String get name;
  @override
  String? get info;

  /// Create a copy of ConCategory1
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ConCategory1ImplCopyWith<_$ConCategory1Impl> get copyWith =>
      throw _privateConstructorUsedError;
}
