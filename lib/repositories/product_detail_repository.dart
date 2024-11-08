import 'package:ncnc_flutter/models/item_detail_model.dart';
import 'package:ncnc_flutter/services/api_service.dart';

class ProductDetailRepository {
  static final ProductDetailRepository _instance =
      ProductDetailRepository._internal();
  factory ProductDetailRepository() => _instance;

  final ApiService _apiService = ApiService();

  ProductDetailRepository._internal();

  Future<ItemDetail> getItemDetail(int itemId) async {
    try {
      return await _apiService.getItemDetail(itemId);
    } catch (e) {
      throw Exception('상품 상세 정보를 불러오는데 실패했습니다');
    }
  }
}
