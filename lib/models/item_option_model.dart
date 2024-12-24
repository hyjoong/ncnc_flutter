import 'package:freezed_annotation/freezed_annotation.dart';

part 'item_option_model.freezed.dart';
part 'item_option_model.g.dart';

@freezed
class ItemOption with _$ItemOption {
  const factory ItemOption({
    required String count,
    required DateTime expireAt,
    required String sellingPrice,
    String? isSoonConItemOption,
  }) = _ItemOption;

  factory ItemOption.fromJson(Map<String, dynamic> json) =>
      _$ItemOptionFromJson({
        ...json,
        'count': json['count'].toString(),
        'expireAt': json['expireAt'],
        'sellingPrice': json['sellingPrice'].toString(),
      });
}
