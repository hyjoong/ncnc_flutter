import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:ncnc_flutter/models/item_option_model.dart';

part 'item_detail_model.freezed.dart';
part 'item_detail_model.g.dart';

@freezed
class ItemDetail with _$ItemDetail {
  const factory ItemDetail({
    required int id,
    required String name,
    required int originalPrice,
    required int minSellingPrice,
    required int ncSellingPrice,
    String? information,
    String? tip,
    String? warning,
    required int discountRate,
    String? info,
    required List<ItemOption> options,
    required String imageUrl,
    required ConCategory2 conCategory2,
  }) = _ItemDetail;

  factory ItemDetail.fromJson(Map<String, dynamic> json) =>
      _$ItemDetailFromJson(json);
}

@freezed
class ConCategory2 with _$ConCategory2 {
  const factory ConCategory2({
    @Default(0) int id,
    @Default('') String name,
    String? info,
    required ConCategory1 conCategory1,
  }) = _ConCategory2;

  factory ConCategory2.fromJson(Map<String, dynamic> json) =>
      _$ConCategory2FromJson(json);
}

@freezed
class ConCategory1 with _$ConCategory1 {
  const factory ConCategory1({
    @Default(0) int id,
    @Default('') String name,
    @Default('') String? info,
  }) = _ConCategory1;

  factory ConCategory1.fromJson(Map<String, dynamic> json) =>
      _$ConCategory1FromJson(json);
}