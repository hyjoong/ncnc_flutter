// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ProductImpl _$$ProductImplFromJson(Map<String, dynamic> json) =>
    _$ProductImpl(
      conCategory2Id: (json['conCategory2Id'] as num).toInt(),
      discountRate: (json['discountRate'] as num).toDouble(),
      id: (json['id'] as num).toInt(),
      imageUrl: json['imageUrl'] as String,
      info: json['info'] as String?,
      information: json['information'] as String?,
      isOnlyAccount: (json['isOnlyAccount'] as num).toInt(),
      minSellingPrice: (json['minSellingPrice'] as num).toInt(),
      name: json['name'] as String,
      ncSellingPrice: (json['ncSellingPrice'] as num).toInt(),
      originalPrice: (json['originalPrice'] as num).toInt(),
      tip: json['tip'] as String?,
      warning: json['warning'] as String?,
    );

Map<String, dynamic> _$$ProductImplToJson(_$ProductImpl instance) =>
    <String, dynamic>{
      'conCategory2Id': instance.conCategory2Id,
      'discountRate': instance.discountRate,
      'id': instance.id,
      'imageUrl': instance.imageUrl,
      'info': instance.info,
      'information': instance.information,
      'isOnlyAccount': instance.isOnlyAccount,
      'minSellingPrice': instance.minSellingPrice,
      'name': instance.name,
      'ncSellingPrice': instance.ncSellingPrice,
      'originalPrice': instance.originalPrice,
      'tip': instance.tip,
      'warning': instance.warning,
    };
