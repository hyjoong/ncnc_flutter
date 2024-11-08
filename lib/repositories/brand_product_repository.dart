import 'package:ncnc_flutter/models/product_model.dart';
import 'package:ncnc_flutter/services/api_service.dart';

class BrandProductRepository {
  static final BrandProductRepository _instance =
      BrandProductRepository._internal();
  factory BrandProductRepository() => _instance;

  final ApiService _apiService = ApiService();

  BrandProductRepository._internal();

  Future<List<Product>> getBrandProducts(int brandId) async {
    return await _apiService.getBrandProducts(brandId);
  }
}
