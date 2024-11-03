import 'package:flutter_test/flutter_test.dart';
import 'package:ncnc_flutter/models/brand_model.dart';

void main() {
  group('Brand 모델 테스트', () {
    test('JSON에서 Brand 인스턴스가 올바르게 생성되어야 한다', () {
      final json = {
        'id': 1,
        'name': '테스트 브랜드',
        'conCategory1Id': 1,
        'imageUrl': 'test.jpg'
      };

      final brand = Brand.fromJson(json);

      expect(brand.id, 1);
      expect(brand.name, '테스트 브랜드');
      expect(brand.conCategory1Id, 1);
      expect(brand.imageUrl, 'test.jpg');
    });
  });
}
