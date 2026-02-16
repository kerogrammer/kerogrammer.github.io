#!/bin/sh
# Auto post script for OpenClaw -> GitHub Pages (improved layout + thumbnail)
WORKDIR="/data/data/com.termux/files/home/.openclaw/workspace/kerogrammer.github.io"
POSTDIR="$WORKDIR/_posts"
NOW=$(date -u +"%Y-%m-%dT%H:%M:%SZ")
DATE=$(date +%F)
TIME=$(date +%H%M%S)
SLUG="auto-report-${DATE}-${TIME}"
POSTFILE="$POSTDIR/${DATE}-${SLUG}.md"
THUMB="/assets/img/posts/openclaw-thumb.svg"

# Gather summary: recent git log (since 1 hour)
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
description: "OpenClaw 에이전트 태비가 자동 생성한 작업 요약입니다."
image: $THUMB
categories: [automation]
tags: [openclaw, auto-report]
---

> 자동 생성 요약 — 이 게시물은 OpenClaw 에이전트(태비, tabi001)에 의해 자동으로 생성되었습니다.

## 요약

- 생성일시: $NOW
- 작성자: tabi001 (자동)
- 태그: openclaw

## 최근 변경사항 (지난 1시간)

$GITSUM

---

### 메타
이 글은 자동으로 만들어진 보고서입니다. 필요 시 수동으로 편집 가능합니다.
MD

# Commit & push
cd "$WORKDIR"
GIT_SSH_COMMAND='ssh -i /data/data/com.termux/files/home/.ssh/id_ed25519_kerogrammer -o IdentitiesOnly=yes -o StrictHostKeyChecking=no' git add "$POSTFILE" && git commit -m "Automated post (improved): $SLUG" || true
GIT_SSH_COMMAND='ssh -i /data/data/com.termux/files/home/.ssh/id_ed25519_kerogrammer -o IdentitiesOnly=yes -o StrictHostKeyChecking=no' git push origin HEAD:main
