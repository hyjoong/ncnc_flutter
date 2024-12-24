import 'package:freezed_annotation/freezed_annotation.dart';

part 'brand_model.freezed.dart';
part 'brand_model.g.dart';

@freezed
class Brand with _$Brand {
  const factory Brand({
    required int id,
    required String name,
    required int conCategory1Id,
    required String imageUrl,
  }) = _Brand;

  factory Brand.fromJson(Map<String, dynamic> json) => _$BrandFromJson(json);
}