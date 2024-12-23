// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'item_option_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ItemOption _$ItemOptionFromJson(Map<String, dynamic> json) {
  return _ItemOption.fromJson(json);
}

/// @nodoc
mixin _$ItemOption {
  String get count => throw _privateConstructorUsedError;
  DateTime get expireAt => throw _privateConstructorUsedError;
  String get sellingPrice => throw _privateConstructorUsedError;
  String? get isSoonConItemOption => throw _privateConstructorUsedError;

  /// Serializes this ItemOption to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ItemOption
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ItemOptionCopyWith<ItemOption> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ItemOptionCopyWith<$Res> {
  factory $ItemOptionCopyWith(
          ItemOption value, $Res Function(ItemOption) then) =
      _$ItemOptionCopyWithImpl<$Res, ItemOption>;
  @useResult
  $Res call(
      {String count,
      DateTime expireAt,
      String sellingPrice,
      String? isSoonConItemOption});
}

/// @nodoc
class _$ItemOptionCopyWithImpl<$Res, $Val extends ItemOption>
    implements $ItemOptionCopyWith<$Res> {
  _$ItemOptionCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ItemOption
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? count = null,
    Object? expireAt = null,
    Object? sellingPrice = null,
    Object? isSoonConItemOption = freezed,
  }) {
    return _then(_value.copyWith(
      count: null == count
          ? _value.count
          : count // ignore: cast_nullable_to_non_nullable
              as String,
      expireAt: null == expireAt
          ? _value.expireAt
          : expireAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      sellingPrice: null == sellingPrice
          ? _value.sellingPrice
          : sellingPrice // ignore: cast_nullable_to_non_nullable
              as String,
      isSoonConItemOption: freezed == isSoonConItemOption
          ? _value.isSoonConItemOption
          : isSoonConItemOption // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ItemOptionImplCopyWith<$Res>
    implements $ItemOptionCopyWith<$Res> {
  factory _$$ItemOptionImplCopyWith(
          _$ItemOptionImpl value, $Res Function(_$ItemOptionImpl) then) =
      __$$ItemOptionImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String count,
      DateTime expireAt,
      String sellingPrice,
      String? isSoonConItemOption});
}

/// @nodoc
class __$$ItemOptionImplCopyWithImpl<$Res>
    extends _$ItemOptionCopyWithImpl<$Res, _$ItemOptionImpl>
    implements _$$ItemOptionImplCopyWith<$Res> {
  __$$ItemOptionImplCopyWithImpl(
      _$ItemOptionImpl _value, $Res Function(_$ItemOptionImpl) _then)
      : super(_value, _then);

  /// Create a copy of ItemOption
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? count = null,
    Object? expireAt = null,
    Object? sellingPrice = null,
    Object? isSoonConItemOption = freezed,
  }) {
    return _then(_$ItemOptionImpl(
      count: null == count
          ? _value.count
          : count // ignore: cast_nullable_to_non_nullable
              as String,
      expireAt: null == expireAt
          ? _value.expireAt
          : expireAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      sellingPrice: null == sellingPrice
          ? _value.sellingPrice
          : sellingPrice // ignore: cast_nullable_to_non_nullable
              as String,
      isSoonConItemOption: freezed == isSoonConItemOption
          ? _value.isSoonConItemOption
          : isSoonConItemOption // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ItemOptionImpl implements _ItemOption {
  const _$ItemOptionImpl(
      {required this.count,
      required this.expireAt,
      required this.sellingPrice,
      this.isSoonConItemOption});

  factory _$ItemOptionImpl.fromJson(Map<String, dynamic> json) =>
      _$$ItemOptionImplFromJson(json);

  @override
  final String count;
  @override
  final DateTime expireAt;
  @override
  final String sellingPrice;
  @override
  final String? isSoonConItemOption;

  @override
  String toString() {
    return 'ItemOption(count: $count, expireAt: $expireAt, sellingPrice: $sellingPrice, isSoonConItemOption: $isSoonConItemOption)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ItemOptionImpl &&
            (identical(other.count, count) || other.count == count) &&
            (identical(other.expireAt, expireAt) ||
                other.expireAt == expireAt) &&
            (identical(other.sellingPrice, sellingPrice) ||
                other.sellingPrice == sellingPrice) &&
            (identical(other.isSoonConItemOption, isSoonConItemOption) ||
                other.isSoonConItemOption == isSoonConItemOption));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, count, expireAt, sellingPrice, isSoonConItemOption);

  /// Create a copy of ItemOption
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ItemOptionImplCopyWith<_$ItemOptionImpl> get copyWith =>
      __$$ItemOptionImplCopyWithImpl<_$ItemOptionImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ItemOptionImplToJson(
      this,
    );
  }
}

abstract class _ItemOption implements ItemOption {
  const factory _ItemOption(
      {required final String count,
      required final DateTime expireAt,
      required final String sellingPrice,
      final String? isSoonConItemOption}) = _$ItemOptionImpl;

  factory _ItemOption.fromJson(Map<String, dynamic> json) =
      _$ItemOptionImpl.fromJson;

  @override
  String get count;
  @override
  DateTime get expireAt;
  @override
  String get sellingPrice;
  @override
  String? get isSoonConItemOption;

  /// Create a copy of ItemOption
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ItemOptionImplCopyWith<_$ItemOptionImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
