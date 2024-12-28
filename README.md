# 니콘내콘 Flutter App

## 📱 프로젝트 소개

이 프로젝트는 중고 기프티콘을 조회할 수 있는 모바일 애플리케이션입니다.
기존 [웹 버전](https://github.com/hyjoong/ncnc)을 모바일 애플리케이션으로 새롭게 구현했습니다.

<!-- ![readme](https://github.com/user-attachments/assets/09ed3ab5-c68b-4570-adbf-f9416d971c1e) -->
<img src="https://github.com/user-attachments/assets/09ed3ab5-c68b-4570-adbf-f9416d971c1e" width="300" />

## 🔍 주요 기능

- 홈 화면: 카테고리별 상품 목록 표시
- 브랜드 화면: 브랜드별 상품 분류
- 상품 목록: 브랜드/카테고리별 상품 표시
- 상품 상세: 상품 상세 정보 제공

## ✨ 주요 개선사항

### 1. 성능 최적화

- Repository 패턴을 통한 API 로직 분리 ([#12](https://github.com/hyjoong/ncnc_flutter/pull/12))
- API 응답 및 이미지 캐싱 구현 ([#13](https://github.com/hyjoong/ncnc_flutter/pull/13))

### 2. 테스트 자동화

- Widget, Model 단위 테스트 구현 ([#11](https://github.com/hyjoong/ncnc_flutter/pull/11))
- E2E 테스트를 통한 앱 Flow검증 ([#19](https://github.com/hyjoong/ncnc_flutter/pull/19))
- GitHub Actions를 통한 CI/CD 구축

### 3. UI/UX 개선

- 공통 UI 컴포넌트 구현 ([#5](https://github.com/hyjoong/ncnc_flutter/pull/5), [#7](https://github.com/hyjoong/ncnc_flutter/pull/7))
- Skeleton UI를 통한 로딩 UX 개선 ([#16](https://github.com/hyjoong/ncnc_flutter/pull/16))
- 앱 아이콘 및 스플래시 스크린 구현 ([#17](https://github.com/hyjoong/ncnc_flutter/pull/17))
