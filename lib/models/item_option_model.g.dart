// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'item_option_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ItemOptionImpl _$$ItemOptionImplFromJson(Map<String, dynamic> json) =>
    _$ItemOptionImpl(
      count: json['count'] as String,
      expireAt: DateTime.parse(json['expireAt'] as String),
      sellingPrice: json['sellingPrice'] as String,
      isSoonConItemOption: json['isSoonConItemOption'] as String?,
    );

Map<String, dynamic> _$$ItemOptionImplToJson(_$ItemOptionImpl instance) =>
    <String, dynamic>{
      'count': instance.count,
      'expireAt': instance.expireAt.toIso8601String(),
      'sellingPrice': instance.sellingPrice,
      'isSoonConItemOption': instance.isSoonConItemOption,
    };
