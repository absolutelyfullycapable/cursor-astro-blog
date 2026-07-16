#!/usr/bin/env bash
set -euo pipefail

REPO_NAME="cursor-astro-blog"
GITHUB_USER="absolutelyfullycapable"
ROOT_DIR="$(cd "$(dirname "$0")/.." && pwd)"

cd "$ROOT_DIR"

if ! command -v gh >/dev/null 2>&1; then
  echo "GitHub CLI(gh)가 필요합니다."
  echo "설치: https://cli.github.com/"
  exit 1
fi

if ! gh auth status >/dev/null 2>&1; then
  echo "GitHub 로그인이 필요합니다. 아래 명령을 실행해 주세요:"
  echo "  gh auth login"
  exit 1
fi

if ! git rev-parse --is-inside-work-tree >/dev/null 2>&1; then
  git init -b main
fi

if ! git remote get-url origin >/dev/null 2>&1; then
  git remote add origin "https://github.com/${GITHUB_USER}/${REPO_NAME}.git"
fi

if ! gh repo view "${GITHUB_USER}/${REPO_NAME}" >/dev/null 2>&1; then
  gh repo create "${REPO_NAME}" \
    --public \
    --description "Cursor 실습용 Astro 정적 블로그 (GitHub Pages)" \
    --source . \
    --remote origin \
    --push
  echo "저장소 생성 및 push 완료"
else
  git add -A
  git commit -m "chore: Astro 블로그 실습 프로젝트 초기 설정" || true
  git push -u origin main
  echo "기존 저장소에 push 완료"
fi

echo ""
echo "다음 단계:"
echo "1. https://github.com/${GITHUB_USER}/${REPO_NAME}/settings/pages"
echo "2. Build and deployment → Source: GitHub Actions"
echo "3. 배포 URL: https://${GITHUB_USER}.github.io/${REPO_NAME}/"
