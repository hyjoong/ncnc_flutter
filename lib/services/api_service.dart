import 'package:ncnc_flutter/models/brand_model.dart';
import 'package:ncnc_flutter/models/category_model.dart';
import 'package:ncnc_flutter/models/item_detail_model.dart';
import 'package:ncnc_flutter/models/product_model.dart';
import 'package:ncnc_flutter/services/dio_client.dart';

class ApiService {
  static final ApiService _instance = ApiService._internal();
  factory ApiService() => _instance;

  final DioClient _client = DioClient();

  ApiService._internal();

  Future<List<Category>> getCategories() async {
    try {
      final response = await _client.get(
        '/con-category1s',
        maxStale: const Duration(days: 30),
      );
      final categories = (response.data['conCategory1s'] as List)
          .map((item) => Category.fromJson(item))
          .toList();
      return categories;
    } catch (e) {
      throw Exception('카테고리 목록을 불러오는데 실패했습니다');
    }
  }

  Future<List<Product>> getSaleItems() async {
    try {
      final response = await _client.get('/con-items/soon');
      final saleItems = (response.data['conItems'] as List)
          .map((item) => Product.fromJson(item))
          .toList();
      return saleItems;
    } catch (e) {
      throw Exception('할인 상품 목록을 불러오는데 실패했습니다');
    }
  }

  Future<List<Brand>> getBrands(int categoryId) async {
    try {
      final response = await _client.get(
        '/con-category1s/$categoryId/nested',
        maxStale: const Duration(days: 30),
      );
      final brands = (response.data['conCategory1']['conCategory2s'] as List)
          .map((item) => Brand.fromJson(item))
          .toList();
      return brands;
    } catch (e) {
      throw Exception('브랜드 목록을 불러오는데 실패했습니다');
    }
  }

  Future<List<Product>> getBrandProducts(int brandId) async {
    try {
      final response = await _client.get(
        '/con-items/?conCategory2Id=$brandId',
        maxStale: const Duration(hours: 24),
      );
      final products = (response.data['conItems'] as List)
          .map((item) => Product.fromJson(item))
          .toList();
      return products;
    } catch (e) {
      throw Exception('브랜드 상품 목록을 불러오는데 실패했습니다');
    }
  }

  Future<ItemDetail> getItemDetail(int itemId) async {
    try {
      final response = await _client.get('/con-items/$itemId');
      return ItemDetail.fromJson(response.data['conItem']);
    } catch (e) {
      throw Exception('상품 상세 정보를 불러오는데 실패했습니다');
    }
  }
}
