---
name: web-plan
description: "웹 포트폴리오 계획 스킬. 페이지 구성/섹션 기획 → Plans.md 생성. 다음에 사용: 계획, 플랜, 페이지 추가, web-plan. 구현/리뷰에는 사용하지 않는다."
allowed-tools: ["Read", "Write", "Edit", "Grep", "Glob", "WebSearch", "Task"]
argument-hint: "[create|add|sync]"
effort: medium
---

# Web Plan

Astro + Tailwind 게임 개발자 포트폴리오 사이트 계획 스킬.

## Quick Reference

| 입력 | 동작 |
|------|------|
| `web-plan create` | 대화형 히어링 → Plans.md 생성 |
| `web-plan add` | Plans.md에 새 태스크 추가 |
| `web-plan sync` | 현재 구현 상태와 Plans.md 동기화 |

## Create Flow

1. **히어링** (최대 3질문)
   - 어떤 페이지/섹션이 필요한지?
   - 보여줄 프로젝트 목록은?
   - 참고할 디자인/사이트가 있는지?

2. **페이지 구조 설계**
   - Home (히어로, 소개)
   - Projects (프로젝트 카드)
   - About (경력, 스킬)
   - Contact (연락처)

3. **태스크 분해** — 각 태스크에 포함:
   - **What**: 구현할 페이지/섹션/컴포넌트
   - **DoD**: 반응형 완료, 브라우저 확인 등
   - **영향 범위**: 파일 목록

4. **Plans.md 작성**

### Plans.md 형식

```markdown
## Current Sprint

### Pages & Sections

| # | Task | DoD | Files | Status |
|---|------|-----|-------|--------|
| 1 | [내용] | [완료 기준] | [파일] | [ ] |

Status: [ ] 대기, [~] 진행중, [x] 완료, [!] 블로커
```

## 게임 개발자 포트폴리오 섹션 가이드

### 추천 구성

```
Home
├── 히어로 (이름, 한 줄 소개, CTA)
├── 하이라이트 프로젝트 (3개)
└── 기술 스택 아이콘

Projects
├── 프로젝트 카드 (썸네일, 설명, 태그)
├── 필터 (장르, 엔진, 역할)
└── 상세 페이지 (스크린샷, 영상, 기술 설명)

About
├── 자기소개
├── 경력/타임라인
└── 스킬 (엔진, 언어, 도구)

Contact
├── 이메일, GitHub, LinkedIn
└── 간단한 폼 또는 링크
```

### 게임 개발자 특화 요소

- 프로젝트별 **GIF/영상** 임베드
- **장르, 엔진, 역할** 태그 필터
- 다크 테마 기본 (게임 개발자다운 느낌)
- 인터랙티브 요소 (호버 이펙트, 스크롤 애니메이션)
