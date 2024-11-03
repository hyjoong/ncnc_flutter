import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:ncnc_flutter/components/custom_app_bar.dart';

void main() {
  group('커스텀 앱바 위젯 테스트', () {
    testWidgets('홈 화면일 때 메뉴 아이콘이 표시되어야 한다', (WidgetTester tester) async {
      await tester.pumpWidget(
        MaterialApp(
          home: Scaffold(
            appBar: CustomAppBar(
              title: '니콘내콘',
              isHomeScreen: true,
            ),
          ),
        ),
      );

      expect(find.text('니콘내콘'), findsOneWidget);
      expect(find.byIcon(Icons.dehaze), findsOneWidget);
      expect(find.byIcon(Icons.chevron_left), findsNothing);
    });

    testWidgets('홈 화면이 아닐 때 뒤로가기 버튼이 표시되어야 한다', (WidgetTester tester) async {
      await tester.pumpWidget(
        MaterialApp(
          home: Scaffold(
            appBar: CustomAppBar(
              title: '상세 페이지',
              isHomeScreen: false,
            ),
          ),
        ),
      );

      expect(find.text('상세 페이지'), findsOneWidget);
      expect(find.byIcon(Icons.chevron_left), findsOneWidget);
      expect(find.byIcon(Icons.dehaze), findsNothing);
    });
  });
}
