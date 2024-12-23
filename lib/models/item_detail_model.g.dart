// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'item_detail_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ItemDetailImpl _$$ItemDetailImplFromJson(Map<String, dynamic> json) =>
    _$ItemDetailImpl(
      id: (json['id'] as num).toInt(),
      name: json['name'] as String,
      originalPrice: (json['originalPrice'] as num).toInt(),
      minSellingPrice: (json['minSellingPrice'] as num).toInt(),
      ncSellingPrice: (json['ncSellingPrice'] as num).toInt(),
      information: json['information'] as String?,
      tip: json['tip'] as String?,
      warning: json['warning'] as String?,
      discountRate: (json['discountRate'] as num).toInt(),
      info: json['info'] as String?,
      options: (json['options'] as List<dynamic>)
          .map((e) => ItemOption.fromJson(e as Map<String, dynamic>))
          .toList(),
      imageUrl: json['imageUrl'] as String,
      conCategory2:
          ConCategory2.fromJson(json['conCategory2'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$ItemDetailImplToJson(_$ItemDetailImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'originalPrice': instance.originalPrice,
      'minSellingPrice': instance.minSellingPrice,
      'ncSellingPrice': instance.ncSellingPrice,
      'information': instance.information,
      'tip': instance.tip,
      'warning': instance.warning,
      'discountRate': instance.discountRate,
      'info': instance.info,
      'options': instance.options,
      'imageUrl': instance.imageUrl,
      'conCategory2': instance.conCategory2,
    };

_$ConCategory2Impl _$$ConCategory2ImplFromJson(Map<String, dynamic> json) =>
    _$ConCategory2Impl(
      id: (json['id'] as num?)?.toInt() ?? 0,
      name: json['name'] as String? ?? '',
      info: json['info'] as String?,
      conCategory1:
          ConCategory1.fromJson(json['conCategory1'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$ConCategory2ImplToJson(_$ConCategory2Impl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'info': instance.info,
      'conCategory1': instance.conCategory1,
    };

_$ConCategory1Impl _$$ConCategory1ImplFromJson(Map<String, dynamic> json) =>
    _$ConCategory1Impl(
      id: (json['id'] as num?)?.toInt() ?? 0,
      name: json['name'] as String? ?? '',
      info: json['info'] as String? ?? '',
    );

Map<String, dynamic> _$$ConCategory1ImplToJson(_$ConCategory1Impl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'info': instance.info,
    };
