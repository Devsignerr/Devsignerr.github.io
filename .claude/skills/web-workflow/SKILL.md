---
name: web-workflow
description: "웹 포트폴리오 전체 사이클 자동 실행. Plan→Work→Review 연결. 다음에 사용: 전체 실행, 사이클, 워크플로우, web-workflow, 다 해줘."
allowed-tools: ["Read", "Write", "Edit", "Bash", "Grep", "Glob", "WebSearch", "Task", "Agent"]
argument-hint: "[task-number|next|all]"
effort: high
---

# Web Workflow

Plan → Work → Review 전체 사이클을 자동 실행한다.

## Quick Reference

| 입력 | 동작 |
|------|------|
| `web-workflow` | 다음 미완료 태스크 1건 사이클 |
| `web-workflow 3` | 태스크 #3 사이클 |
| `web-workflow all` | 모든 미완료 태스크 순차 사이클 |

## Full Cycle

```
Step 1: PLAN 확인
├─ Plans.md 읽기
├─ DoD 확인
└─ 영향 범위 보고
    ↓
Step 2: WORK 실행
├─ Worker Agent: Astro 컴포넌트/페이지 구현
├─ Tailwind 스타일링
├─ 자체 검증 체크리스트
└─ 로컬 빌드 확인 (사용자 승인 시)
    ↓
Step 3: REVIEW 실행
├─ Reviewer Agent (Read-only)
├─ 5개 관점 검증
└─ APPROVE / REQUEST_CHANGES
    ↓
[APPROVE]           [REQUEST_CHANGES]
  ↓                       ↓
Step 4: 완료           수정 → 재리뷰 (최대 3회)
├─ Plans.md 업데이트
└─ 다음 태스크 안내
```

## 배포 (수동)

모든 태스크 완료 후 사용자가 직접:

```bash
npm run build                # 빌드
# GitHub에 push → GitHub Actions로 자동 배포
```

또는 사용자 요청 시 GitHub Actions 워크플로우 생성 지원.

## 안전 장치

- **npm install은 사용자 확인 후에만 실행**
- **3회 리뷰 실패 시 자동 중단**
- **.env 파일 커밋 차단**
- **외부 API 호출 코드 작성 시 사용자 확인**
