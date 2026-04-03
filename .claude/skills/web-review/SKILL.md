---
name: web-review
description: "웹 포트폴리오 코드 리뷰 스킬. 구현된 코드를 다각도로 검증. 다음에 사용: 리뷰, 검토, 체크, web-review. 구현/계획에는 사용하지 않는다."
allowed-tools: ["Read", "Grep", "Glob", "Bash", "Task"]
argument-hint: "[code|plan|all]"
effort: high
---

# Web Review

Astro + Tailwind 포트폴리오 코드 리뷰 스킬.
**Read-only** — 코드를 수정하지 않고 검증만 한다.

## Quick Reference

| 입력 | 동작 |
|------|------|
| `web-review` | 최근 변경 코드 리뷰 |
| `web-review code` | 코드 리뷰 강제 |
| `web-review plan` | Plans.md 리뷰 |

## 5개 관점 검증

### 1. Responsive (반응형)

```
□ 모바일 (< 640px) 레이아웃 정상
□ 태블릿 (640px ~ 1024px) 레이아웃 정상
□ 데스크톱 (> 1024px) 레이아웃 정상
□ Tailwind 반응형 접두사 올바른 사용 (sm:, md:, lg:)
□ 이미지/영상 반응형 처리
```

### 2. Accessibility (접근성)

```
□ 이미지에 alt 속성
□ 시맨틱 HTML (nav, main, section, article, footer)
□ 키보드 네비게이션 가능
□ 색상 대비 충분 (WCAG AA)
□ focus 스타일 있음
□ aria-label 적절히 사용
```

### 3. Performance (성능)

```
□ 이미지 최적화 (Astro Image, WebP)
□ 불필요한 JS 번들 없음
□ CSS 퍼지 정상 (unused Tailwind 제거)
□ 폰트 로딩 최적화
□ Lazy loading 적용
```

### 4. SEO & Meta

```
□ <title> 페이지별 고유
□ <meta description> 있음
□ OG 태그 (og:title, og:image, og:description)
□ canonical URL
□ sitemap.xml 생성
□ robots.txt 있음
```

### 5. Code Quality (코드 품질)

```
□ 컴포넌트 재사용성
□ props 타입 정의 (TypeScript)
□ 하드코딩된 텍스트 없음 (content collection 활용)
□ 일관된 네이밍
□ 불필요한 중복 코드 없음
□ XSS 취약점 없음 (innerHTML 등)
```

## 판정 기준

| 결과 | 조건 |
|------|------|
| **APPROVE** | Critical 0건, Warning 2건 이하 |
| **REQUEST_CHANGES** | Critical 1건 이상 또는 Warning 3건 이상 |

## 출력 형식

```markdown
## Review: [APPROVE ✅ / REQUEST_CHANGES 🔄]

### Summary
[1-2문장]

### Findings

#### 🔴 Critical
- `파일:라인` — 설명 → 수정 방법

#### 🟡 Warning
- `파일:라인` — 설명 → 수정 방법

#### 🔵 Note
- `파일:라인` — 참고

### Score
| 관점 | 판정 |
|------|------|
| Responsive | ✅/⚠️/❌ |
| Accessibility | ✅/⚠️/❌ |
| Performance | ✅/⚠️/❌ |
| SEO & Meta | ✅/⚠️/❌ |
| Code Quality | ✅/⚠️/❌ |
```
