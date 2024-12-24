import 'package:flutter_test/flutter_test.dart';
import 'package:ncnc_flutter/models/category_model.dart';

void main() {
  group('Category 모델 테스트', () {
    test('JSON에서 Category 인스턴스가 올바르게 생성되어야 한다', () {
      final json = {
        'id': 1,
        'name': '테스트 카테고리',
        'discountRate': 15.0,
        'imageUrl': 'test.jpg'
      };

      final category = Category.fromJson(json);

      expect(category.id, 1);
      expect(category.name, '테스트 카테고리');
      expect(category.discountRate, 15.0);
      expect(category.imageUrl, 'test.jpg');
    });

    test('copyWith로 새로운 인스턴스를 생성할 수 있다', () {
      const category = Category(
          id: 1, name: '테스트 카테고리', discountRate: 15.0, imageUrl: 'test.jpg');

      final updatedCategory =
          category.copyWith(name: '새로운 카테고리', discountRate: 20.0);

      expect(updatedCategory.name, '새로운 카테고리');
      expect(updatedCategory.discountRate, 20.0);
      expect(updatedCategory.id, category.id);
      expect(updatedCategory.imageUrl, category.imageUrl);
    });

    test('같은 값을 가진 인스턴스는 동일하다고 판단되어야 한다', () {
      const category1 = Category(
          id: 1, name: '테스트 카테고리', discountRate: 15.0, imageUrl: 'test.jpg');

      const category2 = Category(
          id: 1, name: '테스트 카테고리', discountRate: 15.0, imageUrl: 'test.jpg');

      expect(category1 == category2, true);
    });

    test('다른 값을 가진 인스턴스는 다르다고 판단되어야 한다', () {
      const category1 = Category(
          id: 1, name: '테스트 카테고리', discountRate: 15.0, imageUrl: 'test.jpg');

      final category2 = category1.copyWith(discountRate: 20.0);

      expect(category1 == category2, false);
    });
  });
}
