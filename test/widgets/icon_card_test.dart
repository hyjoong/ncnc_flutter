import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:ncnc_flutter/components/icon_card.dart';

void main() {
  group('아이콘 카드 위젯 테스트', () {
    testWidgets('아이콘과 제목이 올바르게 표시되어야 한다', (WidgetTester tester) async {
      bool tapCalled = false;

      await tester.pumpWidget(
        MaterialApp(
          home: Scaffold(
            body: IconCard(
              imageUrl: 'https://d1dsr05o5i286u.cloudfront.net/a2402a35-038b-4b68-a152-2cc14dff532c.jpg',
              title: '카페',
              onTap: () {
                tapCalled = true;
              },
            ),
          ),
        ),
      );

      await tester.pumpAndSettle();
      expect(find.text('카페'), findsOneWidget);

      await tester.tap(find.byType(IconCard));
      expect(tapCalled, true);
    });
  });
}