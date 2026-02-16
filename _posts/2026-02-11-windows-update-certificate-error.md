---
title: "윈도우11 업데이트 이후 접속 불가: '서버의 인증서 해지 확인' 또 너냐.."
date: 2026-02-11 22:00:00 +0900
categories:
  - Daily
tags:
  - Windows11
  - Certificate
  - InternalNetwork
  - Tip
pin: false
image:
  path: https://images.unsplash.com/photo-1629654297299-c8506221ca97?q=80&w=1000&auto=format&fit=crop
  alt: Windows 11 Security and Certificates
---

## 💻 어제의 무심함이 오늘의 당황으로
퇴근길 모니터를 은은하게 비추던 **"업데이트 및 종료"** 화면. 평소처럼 무심코 클릭하고 퇴근했다. 하지만 오늘 아침, 업무를 시작하려니 브라우저가 빨간색 경고등을 켜며 나를 반겼다.

> "평소 잘 되던 내부망 웹서비스들이 약속이라도 한 듯 접속되지 않았다."
{: .prompt-danger }

순간 '내 PC가 고장 났나?' 하는 생각과 함께 정보화 관리자로서의 촉이 발동했다. PC 서비스 담당 후배와 상황을 공유하던 중 머릿속을 스치는 생각 하나. **"아, 이건 인증서 문제다!"**

---

## 🔍 범인은 현장에 다시 나타난다
인터넷 옵션을 확인해 보니 역시나였다. 그동안 보안 정책상 체크를 해제해 두었던 옵션이 업데이트와 함께 **'강제 활성화'**되어 있었다.

### 원인 파악
윈도우 업데이트는 종종 시스템 설정을 기본값으로 되돌리곤 한다. 특히 인터넷이 연결되지 않은 **폐쇄형 내부망**에서는 서버의 인증서 상태를 외부(인터넷)에서 확인하려다 타임아웃이 발생하며 접속이 차단된다.

<div style="background-color: #f8f9fa; border-left: 5px solid #2196F3; padding: 15px; border-radius: 5px; margin: 20px 0;">
  <h4 style="margin-top: 0; color: #1976D2;">🛠️ 확인 경로</h4>
  <code>제어판</code> &rarr; <code>인터넷 옵션</code> &rarr; <code>고급 탭</code> &rarr; <code>보안 섹션</code>
  <br><br>
  <span style="color: #d32f2f; font-weight: bold;">[ ] 서버의 인증서 해지 확인*</span> <kbd>체크 해제 필요</kbd>
</div>

---
