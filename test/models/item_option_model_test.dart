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

    test('copyWith로 새로운 인스턴스를 생성할 수 있다', () {
      final expireAt = DateTime.parse('2024-12-31T23:59:59Z');
      final itemOption = ItemOption(
        count: '100',
        expireAt: expireAt,
        sellingPrice: '8500',
        isSoonConItemOption: 'Y',
      );

      final updatedOption = itemOption.copyWith(
        count: '50',
        sellingPrice: '7500',
      );

      expect(updatedOption.count, '50');
      expect(updatedOption.sellingPrice, '7500');
      expect(updatedOption.expireAt, expireAt);
      expect(updatedOption.isSoonConItemOption, 'Y');
    });
  });
}
