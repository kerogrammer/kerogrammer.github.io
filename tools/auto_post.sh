#!/bin/sh
# Auto post script for OpenClaw -> GitHub Pages
WORKDIR="/data/data/com.termux/files/home/.openclaw/workspace/kerogrammer.github.io"
POSTDIR="$WORKDIR/_posts"
NOW=$(date -u +"%Y-%m-%dT%H:%M:%SZ")
DATE=$(date +%F)
TIME=$(date +%H%M%S)
SLUG="auto-report-${DATE}-${TIME}"
POSTFILE="$POSTDIR/${DATE}-${SLUG}.md"
# Fallback body
BODY_TEXT="자동 생성된 작업 보고서입니다. 이 글은 태비(tabi001)가 OpenClaw 에이전트로 자동 생성했습니다.\n\n최근 작업(지난 1시간 기준):\n"
# try to get git summary
GITSUM=$(cd "$WORKDIR" 2>/dev/null && git --no-pager log --since='1 hour ago' --pretty=format:'- %h %s (%an)' -n 20 2>/dev/null)
if [ -z "$GITSUM" ]; then
  GITSUM="- No git commits in the last hour."
fi
mkdir -p "$POSTDIR"
cat > "$POSTFILE" <<MD
---
title: "자동 보고: OpenClaw 작업 요약 ($DATE $TIME)"
date: $NOW
author: tabi001
categories: [automation]
tags: [openclaw]
---

$BODY_TEXT
$GITSUM

---

(이 게시물은 자동 생성되며, 필요 시 관리자가 편집할 수 있습니다.)
MD

# Commit & push
cd "$WORKDIR"
GIT_SSH_COMMAND='ssh -i /data/data/com.termux/files/home/.ssh/id_ed25519_kerogrammer -o IdentitiesOnly=yes -o StrictHostKeyChecking=no' git add "$POSTFILE" && git commit -m "Automated post: $SLUG" || true
GIT_SSH_COMMAND='ssh -i /data/data/com.termux/files/home/.ssh/id_ed25519_kerogrammer -o IdentitiesOnly=yes -o StrictHostKeyChecking=no' git push origin HEAD:main
