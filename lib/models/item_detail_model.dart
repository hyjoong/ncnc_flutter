import 'package:ncnc_flutter/models/item_option_model.dart';

class ItemDetail {
  final int id;
  final String name;
  final int originalPrice;
  final int minSellingPrice;
  final int ncSellingPrice;
  final String? information;
  final String? tip;
  final String? warning;
  final int discountRate;
  final String? info;
  final List<ItemOption> options;
  final String imageUrl;
  final ConCategory2 conCategory2;

  ItemDetail({
    required this.id,
    required this.name,
    required this.originalPrice,
    required this.minSellingPrice,
    required this.ncSellingPrice,
    this.information,
    this.tip,
    this.warning,
    required this.discountRate,
    this.info,
    required this.options,
    required this.imageUrl,
    required this.conCategory2,
  });

  factory ItemDetail.fromJson(Map<String, dynamic> json) {
    try {
      return ItemDetail(
        id: json['id'],
        name: json['name'],
        originalPrice: json['originalPrice'],
        minSellingPrice: json['minSellingPrice'],
        ncSellingPrice: json['ncSellingPrice'],
        information: json['information'],
        tip: json['tip'],
        warning: json['warning'],
        discountRate: json['discountRate'],
        info: json['info'],
        imageUrl: json['imageUrl'],
        options: (json['options'] as List)
            .map((option) => ItemOption.fromJson(option))
            .toList(),
        conCategory2: ConCategory2.fromJson(json['conCategory2']),
      );
    } catch (e) {
      rethrow;
    }
  }
}

class ConCategory2 {
  final int id;
  final String name;
  final String? info;
  final ConCategory1 conCategory1;

  ConCategory2({
    required this.id,
    required this.name,
    this.info,
    required this.conCategory1,
  });

  factory ConCategory2.fromJson(Map<String, dynamic> json) {
    try {
      return ConCategory2(
        id: json['id'] as int? ?? 0,
        name: json['name'] as String? ?? '',
        info: json['info'] as String?,
        conCategory1: ConCategory1.fromJson(json['conCategory1']),
      );
    } catch (e) {
      rethrow;
    }
  }
}

class ConCategory1 {
  final int id;
  final String name;
  final String? info;

  ConCategory1({
    required this.id,
    required this.name,
    this.info,
  });

  factory ConCategory1.fromJson(Map<String, dynamic> json) {
    try {
      return ConCategory1(
        id: json['id'] as int? ?? 0,
        name: json['name'] as String? ?? '',
        info: json['info'] as String? ?? '',
      );
    } catch (e) {
      rethrow;
    }
  }
}
