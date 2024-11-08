import 'package:ncnc_flutter/services/api_service.dart';
import 'package:ncnc_flutter/models/category_model.dart';
import 'package:ncnc_flutter/models/product_model.dart';

class HomeRepository {
  static final HomeRepository _instance = HomeRepository._internal();
  factory HomeRepository() => _instance;

  final ApiService _apiService = ApiService();

  HomeRepository._internal();

  Future<List<Category>> getCategories() async {
    return await _apiService.getCategories();
  }

  Future<List<Product>> getSaleItems() async {
    return await _apiService.getSaleItems();
  }
}
