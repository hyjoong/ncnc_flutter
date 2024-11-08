import 'package:ncnc_flutter/models/brand_model.dart';
import 'package:ncnc_flutter/services/api_service.dart';

class BrandRepository {
  static final BrandRepository _instance = BrandRepository._internal();
  factory BrandRepository() => _instance;

  final ApiService _apiService = ApiService();

  BrandRepository._internal();

  Future<List<Brand>> getBrands(int categoryId) async {
    return await _apiService.getBrands(categoryId);
  }
}
