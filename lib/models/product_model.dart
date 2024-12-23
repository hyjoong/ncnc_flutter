import 'package:freezed_annotation/freezed_annotation.dart';

part 'product_model.freezed.dart';
part 'product_model.g.dart';

@freezed
class Product with _$Product {
  const factory Product({
    required int conCategory2Id,
    required double discountRate,
    required int id,
    required String imageUrl,
    String? info,
    String? information,
    required int isOnlyAccount,
    required int minSellingPrice,
    required String name,
    required int ncSellingPrice,
    required int originalPrice,
    String? tip,
    String? warning,
  }) = _Product;

  factory Product.fromJson(Map<String, dynamic> json) => _$ProductFromJson({
        ...json,
        'discountRate': json['discountRate'] is int
            ? (json['discountRate'] as int).toDouble()
            : json['discountRate'],
      });
}
