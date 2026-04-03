# Game Developer Portfolio — Project Rules

## Language

- Respond in Korean (한국어)
- Code comments in English

## Tech Stack

- **Framework**: Astro
- **Styling**: Tailwind CSS
- **Language**: TypeScript
- **Deploy**: GitHub Pages

## Design Direction

- **다크 테마 기본** — 깊은 다크 배경 (#0a0a0f)
- **네온/글로우 액센트** — 인디고 계열 (#6366f1)
- **게임 개발자다운 느낌** — 모노스페이스 폰트, 미묘한 그리드 패턴
- **인터랙티브** — 호버 글로우, 스크롤 애니메이션
- **반응형 필수** — 모바일 우선

## Site Structure

```
Pages:
├── / (Home)          — 히어로, 하이라이트 프로젝트, 기술 스택
├── /projects         — 프로젝트 카드 목록 (필터)
├── /projects/[slug]  — 프로젝트 상세
└── /about            — 소개, 경력, 스킬, 연락처
```

## Content Management

프로젝트 데이터는 `src/content/projects/` 에 Markdown으로 관리:

```markdown
---
title: "프로젝트명"
description: "한 줄 설명"
tags: ["UE5", "C++", "Action"]
thumbnail: "./thumbnail.webp"
date: 2026-01-01
featured: true
---

프로젝트 상세 설명...
```

## Development Cycle

1. **Plan** — 페이지/섹션 기획 → Plans.md
2. **Work** — Astro 컴포넌트 구현 + Tailwind 스타일링
3. **Review** — 반응형, 접근성, 성능, SEO, 코드 품질 검증
4. **Deploy** — `npm run build` → GitHub Pages

## Conventions

- 컴포넌트: PascalCase (`ProjectCard.astro`)
- 페이지: kebab-case (`about.astro`)
- 스타일: Tailwind 유틸리티 우선, 커스텀 CSS 최소화
- 이미지: Astro `<Image />` 컴포넌트, WebP 포맷
- 타입: interface 선언 (`src/types.ts`)
