import 'package:flutter_test/flutter_test.dart';
import 'package:flutter/material.dart';
import 'package:ncnc_flutter/components/product_card.dart';

void main() {
  setUpAll(() {
    TestWidgetsFlutterBinding.ensureInitialized();
  });

  group('상품 카드 위젯 테스트', () {
    testWidgets('가격과 할인율이 올바른 형식으로 표시되어야 한다.', (WidgetTester tester) async {
      await tester.pumpWidget(
        MaterialApp(
          home: ProductCard(
            imageUrl: 'test-image.jpg',
            name: '아메리카노',
            discountRate: 15.0,
            ncSellingPrice: 8500,
            originalPrice: 10000,
            onTap: () {},
          ),
        ),
      );

      expect(find.text('아메리카노'), findsOneWidget);
      expect(find.text('15%'), findsOneWidget);
      expect(find.text('8,500원'), findsOneWidget);
      expect(find.text('10,000원'), findsOneWidget);
    });
  });
}
