import 'package:flutter_test/flutter_test.dart';
import 'package:flutter/material.dart';
import 'package:ncnc_flutter/components/product_card.dart';
import 'package:ncnc_flutter/components/product_list.dart';
import 'package:ncnc_flutter/models/product_model.dart';

void main() {
  late List<Product> testProducts;

  setUp(() {
    testProducts = [
      Product(
        id: 1,
        conCategory2Id: 1,
        name: '테스트 상품 1',
        imageUrl: 'test-image-1.jpg',
        discountRate: 15.0,
        ncSellingPrice: 8500,
        originalPrice: 10000,
        minSellingPrice: 8500,
        isOnlyAccount: 0,
        info: '상품 정보 1',
        information: '상품 상세정보 1',
        tip: '사용 팁 1',
        warning: '주의사항 1',
      ),
      Product(
        id: 2,
        conCategory2Id: 2,
        name: '테스트 상품 2',
        imageUrl: 'test-image-2.jpg',
        discountRate: 20.0,
        ncSellingPrice: 16000,
        originalPrice: 20000,
        minSellingPrice: 16000,
        isOnlyAccount: 0,
        info: '상품 정보 2',
        information: '상품 상세정보 2',
        tip: '사용 팁 2',
        warning: '주의사항 2',
      ),
    ];
  });

  group('상품 목록 위젯 테스트', () {
    Future<void> pumpProductList(
      WidgetTester tester,
      List<Product> products,
    ) async {
      await tester.pumpWidget(
        MaterialApp(
          home: Scaffold(
            body: ProductList(products: products),
          ),
        ),
      );
      await tester.pump();
    }

    testWidgets('상품 목록이 올바르게 표시되어야 한다', (WidgetTester tester) async {
      await pumpProductList(tester, testProducts);

      expect(find.byIcon(Icons.image_not_supported_outlined), findsNWidgets(2));

      expect(find.text('테스트 상품 1'), findsOneWidget);
      expect(find.text('테스트 상품 2'), findsOneWidget);

      expect(find.text('15%'), findsOneWidget);
      expect(find.text('20%'), findsOneWidget);

      expect(find.text('8,500원'), findsOneWidget);
      expect(find.text('16,000원'), findsOneWidget);
    });

    testWidgets('빈 목록이 전달되면 아무것도 표시되지 않아야 한다', (WidgetTester tester) async {
      await pumpProductList(tester, []);
      expect(find.byType(ProductCard), findsNothing);
    });

    testWidgets('매우 긴 상품명이 2줄까지만 표시되어야 한다', (WidgetTester tester) async {
      final longNameProduct = Product(
        id: 1,
        conCategory2Id: 1,
        name: '매우 긴 상품명 매우 긴 상품명 매우 긴 상품명 매우 긴 상품명 매우 긴 상품명 매우 긴 상품명 매우 긴 상품명 매우 긴 상품명 매우 긴 상품명 매우 긴 상품명 매우 긴 상품명 매우 긴 상품명 매우 긴 상품명 매우 긴 상품명',
        imageUrl: 'test-image-1.jpg',
        discountRate: 15.0,
        ncSellingPrice: 8500,
        originalPrice: 10000,
        minSellingPrice: 8500,
        isOnlyAccount: 0,
        info: '상품 정보',
        information: '상품 상세정보',
        tip: '사용 팁',
        warning: '주의사항',
      );

      await pumpProductList(tester, [longNameProduct]);

      final nameText = find.descendant(
        of: find.byType(ProductCard),
        matching: find.text(longNameProduct.name),
      );

      final textWidget = tester.widget<Text>(nameText);
      expect(textWidget.maxLines, 2);
      expect(textWidget.overflow, TextOverflow.ellipsis);
    });
  });
}
