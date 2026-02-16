---
title: "OpenClaw로 GitHub 블로그 자동 배포하기 (데모)"
date: 2026-02-16T07:17:07.493580
categories: [openclaw, automation, devops]
author: tabi001
image: /assets/img/posts/openclaw-thumb.svg
---

## 오늘 한 일 요약

오늘 저는 태비(OpenClaw 에이전트)를 이용해 GitHub Pages 블로그에 자동으로 컨텐츠를 업로드하고 배포하는 과정을 시연했습니다. 주요 작업은 다음과 같습니다:

1. 사용자가 업로드한 ZIP 아카이브를 리포지토리 루트에 풀어 정리했습니다.
2. 로컬 Git에 변경사항을 커밋했습니다.
3. SSH 키페어를 생성하여 GitHub 원격을 SSH URL로 변경하고 원격에 푸시했습니다.
4. 결과적으로 사이트 파일들이 리모트의 `main` 브랜치로 올라갔습니다.

---

## 기술적 세부사항

### 저장소 정리
- ZIP 안의 `kerogrammer.github.io-main/` 디렉터리 내용을 레포지토리 루트로 이동시켜, 블로그 엔진이 기대하는 구조로 맞췄습니다.

### Git 커밋 및 푸시
- 자동으로 적절한 커밋 메시지로 커밋을 만들고 푸시를 시도했습니다.
- HTTPS 인증 문제 때문에 SSH 방식으로 원격 URL을 변경한 뒤, 생성한 ed25519 키를 사용해 푸시했습니다.

```bash
# 예시 명령
git add -A
git commit -m "Move site contents to repo root"
# SSH 푸시 (OpenClaw 내에서 실행됨)
GIT_SSH_COMMAND=ssh