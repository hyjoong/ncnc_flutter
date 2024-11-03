import 'package:flutter_test/flutter_test.dart';
import 'package:ncnc_flutter/models/item_detail_model.dart';

void main() {
  group('ItemDetail 모델 테스트', () {
    test('JSON에서 ItemDetail 인스턴스가 올바르게 생성되어야 한다', () {
      final json = {
        'id': 1,
        'name': '테스트 상품',
        'originalPrice': 10000,
        'minSellingPrice': 8000,
        'ncSellingPrice': 8500,
        'discountRate': 15,
        'imageUrl': 'test.jpg',
        'options': [],
        'conCategory2': {
          'id': 1,
          'name': '테스트 카테고리',
          'conCategory1': {
            'id': 1,
            'name': '상위 카테고리',
            'info': '카테고리 정보'
          }
        }
      };

      final itemDetail = ItemDetail.fromJson(json);

      expect(itemDetail.id, 1);
      expect(itemDetail.name, '테스트 상품');
      expect(itemDetail.originalPrice, 10000);
    });

    test('JSON에 null 값이 있어도 처리되어야 한다', () {
      final json = {
        'id': 1,
        'name': '테스트 상품',
        'originalPrice': 10000,
        'minSellingPrice': 8000,
        'ncSellingPrice': 8500,
        'discountRate': 15,
        'imageUrl': 'test.jpg',
        'options': [],
        'conCategory2': {
          'id': 1,
          'name': '테스트 카테고리',
          'info': null,
          'conCategory1': {
            'id': 1,
            'name': '상위 카테고리',
            'info': null
          }
        }
      };

      expect(() => ItemDetail.fromJson(json), isNot(throwsException));
    });
  });
}