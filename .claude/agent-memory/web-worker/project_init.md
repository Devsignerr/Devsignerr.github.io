---
name: Project Initialization State
description: Astro + Tailwind 포트폴리오 프로젝트 초기화 완료 상태 및 주요 파일 구조
type: project
---

Task #1 완료 (2026-04-03). Astro 5 + Tailwind 3 + TypeScript strict 모드로 초기화 완료.

**Why:** 게임 개발자 포트폴리오 사이트 구축 시작점. GitHub Pages 배포 대상.

**How to apply:** 이후 작업 시 기존 설정 파일을 덮어쓰지 않도록 주의. content.config.ts에 이미 projects collection 스키마가 정의되어 있음.

## 주요 파일
- `astro.config.mjs` — Tailwind integration 포함
- `tailwind.config.mjs` — dark/accent/neon 커스텀 색상 정의
- `src/content.config.ts` — projects collection 스키마 (glob loader)
- `src/styles/global.css` — Tailwind directives + body 기본 스타일
- `src/types.ts` — Project interface 정의

## 커스텀 색상 (tailwind.config.mjs)
- `bg-dark` = #0a0a0f (기본 배경)
- `bg-dark-100` = #16161d, `bg-dark-200` = #1e1e28, `bg-dark-300` = #2a2a38
- `text-accent` = #6366f1, `accent-light` = #818cf8, `accent-dark` = #4f46e5
- 폰트: JetBrains Mono, Fira Code (모노스페이스)
