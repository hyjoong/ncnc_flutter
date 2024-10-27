class Brand {
  final int id;
  final String name;
  final int conCategory1Id;
  final String imageUrl;

  Brand({
    required this.id,
    required this.name,
    required this.conCategory1Id,
    required this.imageUrl,
  });

  factory Brand.fromJson(Map<String, dynamic> json) {
    return Brand(
      id: json['id'],
      name: json['name'],
      conCategory1Id: json['conCategory1Id'],
      imageUrl: json['imageUrl'],
    );
  }
}