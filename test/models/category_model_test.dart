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
  });
}