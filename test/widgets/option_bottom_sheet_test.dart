import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:ncnc_flutter/components/option_bottom_sheet.dart';
import 'package:ncnc_flutter/models/item_option_model.dart';
import 'package:intl/intl.dart';

void main() {
  group('옵션 바텀시트 위젯 테스트', () {
    final testOptions = [
      ItemOption(
        count: '100',
        expireAt: DateTime(2024, 12, 31),
        sellingPrice: '8500',
      ),
      ItemOption(
        count: '50',
        expireAt: DateTime(2024, 11, 30),
        sellingPrice: '9000',
      ),
    ];

    testWidgets('옵션 목록이 올바르게 표시되어야 한다', (WidgetTester tester) async {
      await tester.pumpWidget(
        MaterialApp(
          home: Scaffold(
            body: OptionBottomSheet(
              options: testOptions,
              discountRate: 15,
            ),
          ),
        ),
      );

      expect(find.text('유효기간: 2024-12-31까지'), findsOneWidget);
      expect(find.text('유효기간: 2024-11-30까지'), findsOneWidget);

      expect(find.text('할인가: 8,500원'), findsOneWidget);
      expect(find.text('할인가: 9,000원'), findsOneWidget);

      expect(find.text('15%'), findsNWidgets(2));
    });

    testWidgets('옵션이 없을 때 빈 목록이 표시되어야 한다', (WidgetTester tester) async {
      await tester.pumpWidget(
        MaterialApp(
          home: Scaffold(
            body: OptionBottomSheet(
              options: [],
              discountRate: 15,
            ),
          ),
        ),
      );

      expect(find.byType(ListView), findsOneWidget);
      expect(find.byType(Container), findsWidgets);
      expect(find.text('유효기간:'), findsNothing);
    });

    testWidgets('스크롤이 가능해야 한다', (WidgetTester tester) async {
      final manyOptions = List.generate(
        20,
        (index) => ItemOption(
          count: '100',
          expireAt: DateTime(2024, 12, 31),
          sellingPrice: '8500',
        ),
      );

      await tester.pumpWidget(
        MaterialApp(
          home: Scaffold(
            body: OptionBottomSheet(
              options: manyOptions,
              discountRate: 15,
            ),
          ),
        ),
      );

      await tester.pump();

      // 스크롤 가능 여부 확인
      expect(find.byType(ListView), findsOneWidget);

      // DraggableScrollableSheet 관련 속성 확인
      final sheet = find.byType(DraggableScrollableSheet);
      expect(sheet, findsOneWidget);
    });
  });
}
