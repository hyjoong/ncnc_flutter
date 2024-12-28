import 'package:flutter/cupertino.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:integration_test/integration_test.dart';
import 'package:ncnc_flutter/components/icon_card.dart';
import 'package:ncnc_flutter/components/icon_card_grid.dart';
import 'package:ncnc_flutter/components/product_card.dart';
import 'package:ncnc_flutter/main.dart' as app;

void main() {
  IntegrationTestWidgetsFlutterBinding.ensureInitialized();

  group('전체 앱 플로우 테스트', () {
    testWidgets('홈 -> 브랜드 -> 상품 -> 상세 화면 네비게이션 테스트', (tester) async {
      app.main();
      await tester.pumpAndSettle(const Duration(seconds: 3));

      // 1. 홈 화면 테스트
      expect(find.text('니콘내콘'), findsOneWidget);

      // 첫 번째 카테고리 탭 전에 로딩 완료 대기
      await tester.pumpAndSettle(const Duration(seconds: 2));
      await tester.tap(find.byType(IconCard).first);
      await tester.pumpAndSettle();

      // 브랜드 화면에서 첫 번째 브랜드 탭
      await tester.pumpAndSettle();
      await tester.tap(find.byType(IconCard).first);
      await tester.pumpAndSettle();

      // 상품 목록 화면 확인
      expect(find.byType(ProductCard), findsWidgets);
      await tester.tap(find.byType(ProductCard).first);
      await tester.pumpAndSettle();

      // 상품 상세 화면 확인
      expect(find.text('옵션 선택하기'), findsOneWidget);

      // 옵션 선택 버튼 클릭
      await tester.tap(find.text('옵션 선택하기'));
      await tester.pumpAndSettle();

      // 바텀 시트가 표시되는지 확인
      expect(find.byType(ListView), findsOneWidget);
    }, timeout: const Timeout(Duration(seconds: 60)));

    testWidgets('홈 화면 새로고침 테스트', (tester) async {
      app.main();
      await tester.pumpAndSettle();

      await tester.drag(
          find.byType(SingleChildScrollView).first,
          const Offset(0, 300)
      );
      await tester.pumpAndSettle();

      expect(find.byType(IconCardGrid), findsOneWidget);
    }, timeout: const Timeout(Duration(seconds: 30)));
  });
}
