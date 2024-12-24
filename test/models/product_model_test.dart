import 'package:flutter_test/flutter_test.dart';
import 'package:ncnc_flutter/models/product_model.dart';

void main() {
  group('Product 모델 테스트', () {
    test('JSON에서 Product 인스턴스가 올바르게 생성되어야 한다', () {
      final json = {
        'id': 1,
        'conCategory2Id': 1,
        'name': '테스트 상품',
        'imageUrl': 'test.jpg',
        'discountRate': 15.0,
        'ncSellingPrice': 8500,
        'originalPrice': 10000,
        'minSellingPrice': 8500,
        'isOnlyAccount': 0,
        'info': '상품 정보',
        'information': '상품 상세 정보',
        'tip': '사용 팁',
        'warning': '주의사항'
      };

      final product = Product.fromJson(json);

      expect(product.id, 1);
      expect(product.name, '테스트 상품');
      expect(product.discountRate, 15.0);
      expect(product.ncSellingPrice, 8500);
      expect(product.originalPrice, 10000);
    });

    test('JSON에 null 값이 있어도 처리되어야 한다', () {
      final json = {
        'id': 1,
        'conCategory2Id': 1,
        'name': '테스트 상품',
        'imageUrl': 'test.jpg',
        'discountRate': 15.0,
        'ncSellingPrice': 8500,
        'originalPrice': 10000,
        'minSellingPrice': 8500,
        'isOnlyAccount': 0,
        'info': null,
        'information': null,
        'tip': null,
        'warning': null
      };

      expect(() => Product.fromJson(json), isNot(throwsException));
    });

    test('copyWith로 새로운 인스턴스를 생성할 수 있다', () {
      const product = Product(
        id: 1,
        conCategory2Id: 1,
        name: '테스트 상품',
        imageUrl: 'test.jpg',
        discountRate: 15.0,
        ncSellingPrice: 8500,
        originalPrice: 10000,
        minSellingPrice: 8500,
        isOnlyAccount: 0,
      );

      final updatedProduct = product.copyWith(
        name: '수정된 상품',
        discountRate: 20.0,
      );

      expect(updatedProduct.name, '수정된 상품');
      expect(updatedProduct.discountRate, 20.0);
      expect(updatedProduct.id, product.id);
    });
  });
}
