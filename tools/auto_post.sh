#!/bin/sh
# Auto post script for OpenClaw -> GitHub Pages (with PNG thumbnail generation + system metrics)
WORKDIR="/data/data/com.termux/files/home/.openclaw/workspace/kerogrammer.github.io"
POSTDIR="$WORKDIR/_posts"
IMGDIR="$WORKDIR/assets/img/posts"
NOW=$(date -u +"%Y-%m-%dT%H:%M:%SZ")
DATE=$(date +%F)
TIME=$(date +%H%M%S)
SLUG="auto-report-${DATE}-${TIME}"
POSTFILE="$POSTDIR/${DATE}-${SLUG}.md"
SVG_THUMB="$IMGDIR/openclaw-thumb.svg"
PNG_THUMB="$IMGDIR/${SLUG}.png"

# Ensure directories
mkdir -p "$POSTDIR" "$IMGDIR"

# Generate PNG thumbnail from SVG if possible
if command -v convert >/dev/null 2>&1; then
  convert -background none -resize 1200x630 "$SVG_THUMB" "$PNG_THUMB" 2>/dev/null || rm -f "$PNG_THUMB"
elif command -v rsvg-convert >/dev/null 2>&1; then
  rsvg-convert -w 1200 -h 630 "$SVG_THUMB" -o "$PNG_THUMB" 2>/dev/null || rm -f "$PNG_THUMB"
else
  # no conversion tool, PNG_THUMB will not be created
  PNG_THUMB=""
fi

# Choose image path for front-matter
if [ -n "$PNG_THUMB" ] && [ -f "$PNG_THUMB" ]; then
  IMAGE_PATH="/assets/img/posts/$(basename "$PNG_THUMB")"
else
  IMAGE_PATH="/assets/img/posts/$(basename "$SVG_THUMB")"
fi

# Gather summary: recent git log (since 1 hour)
GITSUM=$(cd "$WORKDIR" 2>/dev/null && git --no-pager log --since='1 hour ago' --pretty=format:'- %h %s (%an)' -n 20 2>/dev/null)
if [ -z "$GITSUM" ]; then
  GITSUM="- No git commits in the last hour."
fi

# System metrics
UPTIME=$(uptime -p 2>/dev/null || echo "uptime not available")
MEM_FREE=$(free -h 2>/dev/null | sed -n '2p' || echo "memory info not available")
DISK=$(df -h --output=source,size,used,avail,pcent,target -x tmpfs -x devtmpfs | sed -n '1,5p' 2>/dev/null || echo "disk info not available")
GIT_STATUS=$(cd "$WORKDIR" && git status --porcelain 2>/dev/null | sed -n '1,20p' || echo "git status not available")

cat > "$POSTFILE" <<MD
---
title: "자동 보고: OpenClaw 작업 요약 ($DATE $TIME)"
date: $NOW
author: tabi001
description: "OpenClaw 에이전트 태비가 자동 생성한 작업 요약입니다."
image: $IMAGE_PATH
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

## 시스템 상태

- Uptime: $UPTIME

- Memory:

```
$MEM_FREE
```

- Disk (상위 항목):

```
$DISK
```

- Git working tree (최대 20줄):

```
$GIT_STATUS
```

---

### 메타
이 글은 자동으로 만들어진 보고서입니다. 필요 시 수동으로 편집 가능합니다.
MD

# Commit & push
cd "$WORKDIR"
GIT_SSH_COMMAND='ssh -i /data/data/com.termux/files/home/.ssh/id_ed25519_kerogrammer -o IdentitiesOnly=yes -o StrictHostKeyChecking=no' git add "$POSTFILE" "$PNG_THUMB" || true
GIT_SSH_COMMAND='ssh -i /data/data/com.termux/files/home/.ssh/id_ed25519_kerogrammer -o IdentitiesOnly=yes -o StrictHostKeyChecking=no' git commit -m "Automated post (with metrics & thumbnail): $SLUG" || true
GIT_SSH_COMMAND='ssh -i /data/data/com.termux/files/home/.ssh/id_ed25519_kerogrammer -o IdentitiesOnly=yes -o StrictHostKeyChecking=no' git push origin HEAD:main || true
