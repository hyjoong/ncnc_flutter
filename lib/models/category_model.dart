class Category {
  final int id;
  final String name;
  final double discountRate;
  final String imageUrl;

  Category({
    required this.id,
    required this.name,
    required this.discountRate,
    required this.imageUrl,
  });

  factory Category.fromJson(Map<String, dynamic> json) {
    return Category(
      id: json['id'],
      name: json['name'],
      discountRate: json['discountRate'].toDouble(),
      imageUrl: json['imageUrl'],
    );
  }
}
