class SaleItem {
  final int conCategory2Id;
  final double discountRate;
  final int id;
  final String imageUrl;
  final String? info;
  final String? information;
  final int isOnlyAccount;
  final int minSellingPrice;
  final String name;
  final int ncSellingPrice;
  final int originalPrice;
  final String? tip;
  final String? warning;

  SaleItem({
    required this.conCategory2Id,
    required this.discountRate,
    required this.id,
    required this.imageUrl,
    this.info,
    this.information,
    required this.isOnlyAccount,
    required this.minSellingPrice,
    required this.name,
    required this.ncSellingPrice,
    required this.originalPrice,
    required this.tip,
    required this.warning,
  });

  factory SaleItem.fromJson(Map<String, dynamic> json) {
    return SaleItem(
      conCategory2Id: json['conCategory2Id'],
      discountRate: json['discountRate'].toDouble(),
      id: json['id'],
      imageUrl: json['imageUrl'],
      info: json['info'],
      information: json['information'],
      isOnlyAccount: json['isOnlyAccount'],
      minSellingPrice: json['minSellingPrice'],
      name: json['name'],
      ncSellingPrice: json['ncSellingPrice'],
      originalPrice: json['originalPrice'],
      tip: json['tip'],
      warning: json['warning'],
    );
  }
}
