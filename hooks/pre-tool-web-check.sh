#!/bin/bash
# PreToolUse Hook: Write/Edit 시 웹 코드 자동 검증

set -euo pipefail

INPUT=$(cat)
FILE_PATH=$(echo "$INPUT" | jq -r '.file_path // empty' 2>/dev/null || echo "")
CONTENT=$(echo "$INPUT" | jq -r '.content // empty' 2>/dev/null || echo "")

# 웹 파일이 아니면 패스
if [[ ! "$FILE_PATH" =~ \.(astro|tsx|jsx|ts|js|html|css)$ ]]; then
  echo '{"decision":"approve"}'
  exit 0
fi

WARNINGS=()

# === .env 파일 보호 ===
if [[ "$FILE_PATH" =~ \.env ]]; then
  echo '{"decision":"block","message":".env 파일은 직접 수정할 수 없습니다."}'
  exit 0
fi

# === Inline secrets 체크 ===
if echo "$CONTENT" | grep -Pi '(api_key|api_secret|password|token)\s*[:=]\s*["\x27][^"\x27]+' > /dev/null 2>&1; then
  WARNINGS+=("하드코딩된 API 키/시크릿이 감지되었습니다. 환경 변수를 사용하세요.")
fi

# === innerHTML / eval 체크 ===
if echo "$CONTENT" | grep -P '(innerHTML|dangerouslySetInnerHTML|eval\()' > /dev/null 2>&1; then
  WARNINGS+=("innerHTML/eval 사용이 감지되었습니다. XSS 취약점에 주의하세요.")
fi

# === img without alt 체크 ===
if echo "$CONTENT" | grep -Pi '<img\b' > /dev/null 2>&1; then
  if echo "$CONTENT" | grep -Pi '<img\b(?![^>]*\balt\b)' > /dev/null 2>&1; then
    WARNINGS+=("<img> 태그에 alt 속성이 없습니다. 접근성을 위해 추가하세요.")
  fi
fi

# === 결과 출력 ===
if [ ${#WARNINGS[@]} -eq 0 ]; then
  echo '{"decision":"approve"}'
else
  MSG=$(printf '%s\\n' "${WARNINGS[@]}")
  echo "{\"decision\":\"warn\",\"message\":\"⚠️ 웹 코드 경고:\\n${MSG}\"}"
fi
