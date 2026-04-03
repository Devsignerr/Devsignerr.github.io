---
name: web-work
description: "웹 포트폴리오 구현 스킬. Plans.md 태스크를 Astro + Tailwind로 구현. 다음에 사용: 구현, 만들어, 코딩, web-work. 계획/리뷰에는 사용하지 않는다."
allowed-tools: ["Read", "Write", "Edit", "Bash", "Grep", "Glob", "Task"]
argument-hint: "[task-number|next|all]"
effort: high
---

# Web Work

Astro + Tailwind CSS 포트폴리오 사이트 구현 스킬.

## Quick Reference

| 입력 | 동작 |
|------|------|
| `web-work` | 다음 미완료 태스크 실행 |
| `web-work 3` | 태스크 #3 실행 |
| `web-work all` | 남은 전체 태스크 순차 실행 |

## 기술 스택

- **Astro** — 정적 사이트 프레임워크
- **Tailwind CSS** — 유틸리티 CSS
- **TypeScript** — 타입 안전
- **GitHub Pages** — 배포 대상

## Implementation Cycle

### Phase 0: 준비

1. Plans.md → 대상 태스크 확인
2. DoD, 영향 파일 확인
3. 사용자에게 영향 범위 보고

### Phase 1: 구현

1. Astro 컴포넌트/페이지 작성
2. Tailwind 스타일링
3. 반응형 확인 (모바일/데스크톱)
4. 구현 원칙:
   - **컴포넌트 단위**로 작업 (한 파일씩)
   - **Astro 패턴** 준수 (.astro 컴포넌트)
   - **Tailwind 유틸리티** 우선 (커스텀 CSS 최소화)
   - **시맨틱 HTML** 사용

### Phase 2: 자체 검증

```
[Checklist]
□ 반응형 — 모바일/태블릿/데스크톱 레이아웃
□ 접근성 — alt 속성, 시맨틱 태그, 키보드 네비게이션
□ 성능 — 이미지 최적화, 불필요 JS 없음
□ SEO — meta title/description, OG 태그
□ 링크 — 깨진 링크 없음
□ 다크테마 — 일관된 색상
□ 인터랙션 — 호버/스크롤 애니메이션 정상
```

### Phase 3: 로컬 확인

```bash
npm run dev      # 개발 서버 실행
npm run build    # 빌드 확인
npm run preview  # 빌드 결과 미리보기
```

사용자에게 실행 여부 확인 후 진행.

### Phase 4: 완료 처리

1. Plans.md 상태 → `[x]`
2. 완료 보고

## Astro 프로젝트 구조

```
src/
├── layouts/
│   └── BaseLayout.astro      ← 공통 레이아웃
├── pages/
│   ├── index.astro            ← Home
│   ├── projects/
│   │   ├── index.astro        ← 프로젝트 목록
│   │   └── [slug].astro       ← 프로젝트 상세
│   └── about.astro            ← About
├── components/
│   ├── Header.astro           ← 네비게이션
│   ├── Footer.astro           ← 푸터
│   ├── Hero.astro             ← 히어로 섹션
│   ├── ProjectCard.astro      ← 프로젝트 카드
│   ├── SkillBadge.astro       ← 스킬 뱃지
│   └── Timeline.astro         ← 경력 타임라인
├── content/
│   └── projects/              ← 프로젝트 데이터 (Markdown)
│       ├── project-1.md
│       └── project-2.md
├── styles/
│   └── global.css             ← Tailwind + 글로벌 스타일
└── assets/
    └── images/                ← 이미지
```

## 게임 개발자 디자인 가이드

### 색상 팔레트 (다크 테마)

```
--bg-primary: #0a0a0f        /* 깊은 다크 */
--bg-secondary: #12121a      /* 카드 배경 */
--accent: #6366f1            /* 인디고 액센트 */
--accent-glow: #818cf8       /* 글로우 효과 */
--text-primary: #e2e8f0      /* 메인 텍스트 */
--text-secondary: #94a3b8    /* 서브 텍스트 */
```

### 분위기

- 다크 배경 + 네온/글로우 액센트
- 미묘한 그리드/도트 패턴 배경
- 호버 시 카드 글로우 효과
- 부드러운 스크롤 애니메이션
- 모노스페이스 폰트 (코드 느낌)
