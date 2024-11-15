class ItemOption {
  final String count;
  final DateTime expireAt;
  final String sellingPrice;
  final String? isSoonConItemOption;

  ItemOption({
    required this.count,
    required this.expireAt,
    required this.sellingPrice,
    this.isSoonConItemOption,
  });

  factory ItemOption.fromJson(Map<String, dynamic> json) {
    return ItemOption(
      count: json['count'].toString(),
      expireAt: DateTime.parse(json['expireAt']),
      sellingPrice: json['sellingPrice'].toString(),
      isSoonConItemOption: json['isSoonConItemOption'],
    );
  }
}