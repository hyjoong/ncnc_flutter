import 'package:flutter_test/flutter_test.dart';
import 'package:ncnc_flutter/models/item_option_model.dart';

void main() {
  group('ItemOption 모델 테스트', () {
    test('JSON에서 ItemOption 인스턴스가 올바르게 생성되어야 한다', () {
      final json = {
        'count': '100',
        'expireAt': '2024-12-31T23:59:59Z',
        'sellingPrice': '8500',
        'isSoonConItemOption': 'Y'
      };

      final itemOption = ItemOption.fromJson(json);

      expect(itemOption.count, '100');
      expect(itemOption.sellingPrice, '8500');
      expect(itemOption.isSoonConItemOption, 'Y');
    });

    test('JSON에 null 값이 있어도 처리되어야 한다', () {
      final json = {
        'count': '100',
        'expireAt': '2024-12-31T23:59:59Z',
        'sellingPrice': '8500',
        'isSoonConItemOption': null
      };

      expect(() => ItemOption.fromJson(json), isNot(throwsException));
    });
  });
}