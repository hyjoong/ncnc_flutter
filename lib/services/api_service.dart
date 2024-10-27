import 'package:http/http.dart' as http;
import 'dart:convert';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:ncnc_flutter/models/brand_model.dart';
import 'package:ncnc_flutter/models/category_model.dart';
import 'package:ncnc_flutter/models/product_model.dart';

class ApiService {
  static final String baseUrl = dotenv.env['API_ADDRESS'] ?? '';

  static Future<List<Category>> getCategories() async {
    final response = await http.get(Uri.parse('$baseUrl/con-category1s'));
    if (response.statusCode == 200) {
      final data = json.decode(response.body);
      final categories = (data['conCategory1s'] as List)
          .map((item) => Category.fromJson(item))
          .toList();
      return categories;
    } else {
      throw Exception('Failed to load categories');
    }
  }

  static Future<List<Product>> getSaleItems() async {
    final response = await http.get(
      Uri.parse('$baseUrl/con-items/soon'),
    );
    if (response.statusCode == 200) {
      final data = json.decode(response.body);
      final saleItems = (data['conItems'] as List)
          .map((item) => Product.fromJson(item))
          .toList();
      return saleItems;
    } else {
      throw Exception('Failed to load sale items');
    }
  }

  static Future<List<Brand>> getBrands(int categoryId) async {
    final response = await http.get(
      Uri.parse('$baseUrl/con-category1s/$categoryId/nested'),
    );
    if (response.statusCode == 200) {
      final data = json.decode(response.body);
      final brands = (data['conCategory1']['conCategory2s'] as List)
          .map((item) => Brand.fromJson(item))
          .toList();
      return brands;
    } else {
      throw Exception('Failed to load brands');
    }
  }

  static Future<List<Product>> getBrandProducts(int brandId) async {
    final response = await http.get(
      Uri.parse('$baseUrl/con-items/?conCategory2Id=$brandId'),
    );

    if (response.statusCode == 200) {
      final data = json.decode(response.body);
      final products = (data['conItems'] as List)
          .map((item) => Product.fromJson(item))
          .toList();
      return products;
    } else {
      throw Exception('Failed to load brand products');
    }
  }
}
