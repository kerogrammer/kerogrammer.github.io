---
layout: post
title: "듄 임페리움 디지털판 시즌 28 게임 5 플레이 기록 - 「우주 정치학」이 가른 7라운드의 승부"
date: 2026-04-13 22:00:00 +0900
categories: [Game, Boardgame]
tags: [듄임페리움, 듄임페리움디지털, 소규모전투, 시즌28, 레토아트레이데스, 보드게임]
image:
  path: /assets/img/posts/dune-imperium-digital-season28-game5/01-modifiers.webp
  alt: 듄 임페리움 소규모전투 시즌 28 게임 5
description: "듄 임페리움 디지털판 소규모 전투 시즌 28 게임 5 후기. 「우주 정치학」 규칙 모디파이어가 생산한 초단기 7라운드 게임. 레토 아트레이드 공작의 인장 반지로 팩션 영향력을 선점하며 12승점 압도적 1위를 차지한 플레이 기록."
author: kerogrammer
series: "듄 임페리움 소규모전투 시즌 28"
---

<style>
  /* ===========================
     Dune Imperium Theme CSS
     ========================= */

  /* Google Font */
  @import url('https://fonts.googleapis.com/css2?family=Cinzel:wght@400;600;700&family=Noto+Sans+KR:wght@400;500;700&display=swap');

  .dune-box {
    background: linear-gradient(135deg, #1c1a14 0%, #231f16 100%);
    border: 1px solid #5a4820;
    border-left: 5px solid #c5a059;
    padding: 22px 26px;
    margin: 28px 0;
    border-radius: 6px;
    box-shadow: 0 6px 24px rgba(0,0,0,0.6), inset 0 1px 0 rgba(197,160,89,0.15);
    position: relative;
  }

  .dune-box-title {
    color: #d4af5a;
    font-size: 0.75rem;
    font-weight: 700;
    letter-spacing: 3px;
    text-transform: uppercase;
    margin-bottom: 14px;
    padding-bottom: 10px;
    border-bottom: 1px solid #3a3020;
  }

  .dune-modifier-grid {
    display: grid;
    grid-template-columns: 1fr 1fr;
    gap: 14px;
    margin-top: 12px;
  }

  .dune-modifier-item {
    background: rgba(0,0,0,0.35);
    border: 1px solid #3a3020;
    border-radius: 5px;
    padding: 14px;
  }

  .dune-modifier-label {
    color: #c5a059;
    font-size: 0.8rem;
    font-weight: 700;
    letter-spacing: 1px;
    text-transform: uppercase;
    margin-bottom: 8px;
    display: block;
  }

  .dune-modifier-value {
    color: #e8dcc8;
    font-size: 0.92rem;
    line-height: 1.6;
  }

  .dune-modifier-badge {
    display: inline-block;
    background: linear-gradient(90deg, #8b5e1a, #c5a059);
    color: #1a1510;
    font-weight: 700;
    font-size: 0.75rem;
    padding: 2px 8px;
    border-radius: 3px;
    letter-spacing: 0.5px;
  }

  .dune-modifier-item.rule {
    grid-column: 1 / -1;
    border-color: #c5a059;
    background: rgba(197, 160, 89, 0.07);
  }

  /* Scoreboard Table */
  .dune-score-table {
    width: 100%;
    border-collapse: separate;
    border-spacing: 0;
    margin: 20px 0;
    border-radius: 8px;
    overflow: hidden;
    box-shadow: 0 4px 20px rgba(0,0,0,0.5);
  }

  .dune-score-table thead tr {
    background: linear-gradient(180deg, #3a2d10 0%, #251e0b 100%);
  }

  .dune-score-table th {
    color: #c5a059;
    padding: 13px 16px;
    text-align: left;
    font-size: 0.78rem;
    letter-spacing: 2px;
    text-transform: uppercase;
    border-bottom: 2px solid #5a4820;
  }

  .dune-score-table td {
    background-color: #1e1b13;
    padding: 12px 16px;
    border-bottom: 1px solid #2e2a1f;
    color: #d0c8b8;
    font-size: 0.93rem;
  }

  .dune-score-table tr:last-child td {
    border-bottom: none;
  }

  .dune-score-table tr.winner td {
    background: linear-gradient(90deg, #2a2210 0%, #1e1b13 100%);
    color: #ffd700;
    font-weight: 700;
  }

  .rank-badge {
    display: inline-flex;
    align-items: center;
    justify-content: center;
    width: 28px;
    height: 28px;
    border-radius: 50%;
    font-weight: 700;
    font-size: 0.85rem;
  }

  .rank-badge.gold   { background: linear-gradient(135deg,#ffd700,#b8860b); color:#1a1510; }
  .rank-badge.silver { background: linear-gradient(135deg,#c0c0c0,#808080); color:#1a1510; }
  .rank-badge.bronze { background: linear-gradient(135deg,#cd7f32,#8b4513); color:#fff; }
  .rank-badge.fourth { background: #2a2a2a; color:#888; border:1px solid #444; }

  /* Caption */
  .img-caption {
    text-align: center;
    font-size: 0.83rem;
    color: #857a65;
    margin-top: -12px;
    margin-bottom: 28px;
    font-style: italic;
    letter-spacing: 0.3px;
  }

  /* Highlight callout */
  .dune-callout {
    background: rgba(197,160,89,0.08);
    border: 1px solid rgba(197,160,89,0.3);
    border-radius: 6px;
    padding: 16px 20px;
    margin: 24px 0;
    color: #d4c4a0;
    font-size: 0.95rem;
    line-height: 1.75;
  }

  .dune-callout strong { color: #ffd700; }

  /* Round separator */
  .round-header {
    display: flex;
    align-items: center;
    gap: 14px;
    margin: 36px 0 20px;
  }

  .round-number {
    background: linear-gradient(135deg, #c5a059, #8b6914);
    color: #1a1510;
    font-weight: 700;
    font-size: 0.75rem;
    letter-spacing: 2px;
    text-transform: uppercase;
    padding: 5px 12px;
    border-radius: 3px;
    white-space: nowrap;
  }

  .round-title {
    color: #c5a059;
    font-size: 1.05rem;
    font-weight: 600;
  }

  /* Skirmish score breakdown */
  .score-breakdown {
    display: flex;
    gap: 12px;
    flex-wrap: wrap;
    margin-top: 16px;
  }

  .score-item {
    flex: 1;
    min-width: 140px;
    background: rgba(0,0,0,0.35);
    border: 1px solid #3a3020;
    border-radius: 6px;
    padding: 14px;
    text-align: center;
  }

  .score-item .score-label {
    font-size: 0.75rem;
    color: #857a65;
    letter-spacing: 1px;
    text-transform: uppercase;
    margin-bottom: 6px;
    display: block;
  }

  .score-item .score-value {
    font-size: 1.6rem;
    font-weight: 700;
    color: #ffd700;
  }

  .score-item .score-note {
    font-size: 0.78rem;
    color: #7a7060;
    margin-top: 4px;
  }
</style>

> 시즌 28, 68점(543위). 게임 4의 여운이 채 가시기도 전에 **게임 5**가 시작되었습니다. 이번 판은 처음부터 무언가 달랐습니다.

---

## 📜 이번 판의 규칙: 「우주 정치학」이 만든 이례적인 판

![소규모전투 시즌28 게임5 규칙 모디파이어](/assets/img/posts/dune-imperium-digital-season28-game5/01-modifiers.webp)
<div class="img-caption">시즌 28 · 게임 5 — 규칙 및 순위표 모디파이어</div>

<div class="dune-box">
  <div class="dune-box-title">⚙ 게임 5 모디파이어 요약</div>
  <div class="dune-modifier-grid">
    <div class="dune-modifier-item rule">
      <span class="dune-modifier-label">📌 규칙 모디파이어</span>
      <div class="dune-modifier-value">
        <strong style="color:#ffd700;">우주 정치학</strong><br>
        팩션 동맹을 맺을 때 <span class="dune-modifier-badge">솔라리 +α</span> 추가 지급
      </div>
    </div>
    <div class="dune-modifier-item">
      <span class="dune-modifier-label">📊 조달 (Procurement)</span>
      <div class="dune-modifier-value">
        획득 효과로 획득한 카드 한 장당 <span class="dune-modifier-badge">+1점</span>
      </div>
    </div>
    <div class="dune-modifier-item">
      <span class="dune-modifier-label">📊 전설 (Legend)</span>
      <div class="dune-modifier-value">
        덱에 있는 네임드 캐릭터 한 명당 <span class="dune-modifier-badge">+1점</span>
      </div>
    </div>
  </div>
</div>

이번 판의 핵심 키워드는 **「우주 정치학」**입니다. 규칙 모디파이어가 "팩션 동맹 체결 시 솔라리를 추가 지급"하도록 바꾸자, 테이블 위의 역학 관계가 완전히 뒤집혔습니다.

일반적인 게임에서는 동맹보다 전투에서 승점을 죄어모으는 게 우선이지만, 이번 판에서는 **팩션 영향력을 빠르게 올려 동맹을 먼저 맺는 것**이 솔라리 수급과 직결됩니다. 결국 네 명의 지도자 모두가 동맹에 온 신경을 집중하면서 게임 속도가 비정상적으로 빨라졌고, 예정된 10라운드가 아닌 **단 7라운드 만에 승점 10점을 돌파한 지도자가 나와** 게임이 종료되었습니다.

순위표 점수 모디파이어(**조달**, **전설**) 또한 덱 구성에 직접적인 영향을 미쳤지만, 이번 판은 이것들을 챙길 여유조차 없을 만큼 정치전이 치열하게 펼쳐졌습니다.

---

## 👑 레토 아트레이드 공작을 선택한 이유

![지도자 선택 화면: 레토 아트레이드 공작](/assets/img/posts/dune-imperium-digital-season28-game5/02-leader-selection.webp)
<div class="img-caption">이번 판에서는 헬레나 리체스 대신 아트레이드 가문의 공작을 선택했습니다.</div>

이번 판은 평소 즐겨 쓰던 **헬레나 리체스**가 아닌, **레토 아트레이드 공작**을 선택했습니다. 이유는 단 하나, 그의 **인장 반지(Signet Ring) 능력** 때문입니다.

> *"스파이스 1개를 지불하면, 나보다 영향력이 높은 팩션에서 영향력 1을 획득합니다."*

「우주 정치학」이 동맹에 솔라리 보너스를 얹어주는 판에서, 스파이스 한 조각으로 뒤처진 팩션 영향력을 따라잡을 수 있는 이 능력은 **구조적 우위**를 선점하게 해줍니다. 빠르게 여러 팩션 동맹을 맺을수록 솔라리가 쌓이고, 쌓인 솔라리로 다시 좋은 카드를 구매해 선순환을 만드는 것이 이번 판의 핵심 전략이었습니다.

대전 상대는 다음과 같습니다.

<div class="dune-box">
  <div class="dune-box-title">이번 판 참가자</div>
  <table class="dune-score-table">
    <thead>
      <tr><th>플레이어</th><th>지도자</th></tr>
    </thead>
    <tbody>
      <tr><td>🟢 IRIS2025 (나)</td><td><strong>레토 아트레이드 공작</strong></td></tr>
      <tr><td>🔵 AI (어려움)</td><td>테시아 버니우스</td></tr>
      <tr><td>🔴 AI (어려움)</td><td>일반 리체스 백작</td></tr>
      <tr><td>🟡 AI (어려움)</td><td>헌드로 모리타니 자작</td></tr>
    </tbody>
  </table>
</div>

---

## ⚔️ 7라운드의 기록: 짧고 강렬했던 승부

### 1라운드: 첫 패, 그리고 인장 반지의 첫 번째 활용

![1라운드 게임 보드](/assets/img/posts/dune-imperium-digital-season28-game5/03-round1-start.webp)
<div class="img-caption">라운드 1 · 소규모 전투 1/10 표시 — 시작 손패: 단검, 합리적 주장, 사막 행성 듄, 단검, 인장 반지</div>

![1라운드: 인장 반지 능력 사용](/assets/img/posts/dune-imperium-digital-season28-game5/04-round1-combat.webp)
<div class="img-caption">「레토 아트레이드 공작」의 인장 반지 능력 — 스파이스 1개로 하코넨·비소 팩션 영향력 획득</div>

손패에서 **「인장 반지」**가 보이자마자 전략 방향이 확정되었습니다. 카드를 보드로 내면서 인장 반지 능력을 즉시 발동해, 우주 항행 길드의 영향력을 올려놓았습니다. 이쪽에 먼저 영향력 2개를 만들어야 2칸 무역을 할 수 있기 때문이었죠.

**1라운드 소규모 전투 결과:**

![1라운드 결과](/assets/img/posts/dune-imperium-digital-season28-game5/05-round1-result.webp)
<div class="img-caption">라운드 1 결과 — 일반 리체스 백작 1위 (전투력 8), 헌드로 모리타니 2위 (전투력 4)</div>

1라운드 전투는 일찌감치 힘을 뺐습니다. 리체스 백작이 8점이나 쏟아부으며 치고 나가는 사이, 저는 영향력 확보에 전념하며 내실을 챙겼죠.

---

### 2라운드: 카르타그 공성전 — 테시아의 기습

![2라운드 게임 보드](/assets/img/posts/dune-imperium-digital-season28-game5/06-round2-start.webp)
<div class="img-caption">라운드 2 · 분쟁: 카르타그 공성전 — 현재 스파이스 0, 솔라리 1 보유</div>

2라운드는 솔라리 7개라는 두둑한 자원으로 시작했습니다. 분쟁은 **카르타그 공성전**. 이번에도 전투보다는 카드 구매와 영향력에 집중했습니다.

**2라운드 결과:**

![2라운드 결과](/assets/img/posts/dune-imperium-digital-season28-game5/07-round2-result.webp)
<div class="img-caption">라운드 2 결과 — 테시아 버니우스 1위 (전투력 10), 일반 리체스 2위 (전투력 4)</div>

테시아 버니우스가 전투력 **10점**의 괴력으로 카르타그를 차지했습니다. 내가 노린 건 전투가 아니라 카르타그 전투 도중 「인장 반지」를 한 번 더 활용해 쌓아올린 팩션 영향력이었습니다.

---

### 3라운드: 사막의 힘 — 드디어 첫 번째 1위!

![3라운드 게임 보드](/assets/img/posts/dune-imperium-digital-season28-game5/08-round3-start.webp)
<div class="img-caption">라운드 3 · 분쟁: 사막의 힘 — 스파이스 7, 솔라리 0. 인장 반지 한 번 더 활용 준비.</div>

3라운드, 분쟁은 **사막의 힘**. 여기서 그동안 모아온 자원과 전투력을 처음으로 쏟아부었습니다.

**3라운드 결과:**

![3라운드 결과](/assets/img/posts/dune-imperium-digital-season28-game5/09-round3-result.webp)
<div class="img-caption">라운드 3 결과 — 🥇 IRIS2025 1위 (전투력 8), 테시아 2위 (전투력 6), 헌드로 3위 (전투력 2)</div>

<div class="dune-callout">
  드디어 <strong>첫 번째 1위!</strong> 전투력 <strong>8점</strong>으로 테시아 버니우스(6점)와 헌드로 모리타니(2점)를 눌렀다.<br>
  보상으로 <strong>솔라리 + 물</strong>을 챙기며, 누적 점수가 오르기 시작했습니다.
</div>

---

### 4라운드: 추악한 의도 — 일반 리체스의 역습과 「배반」 카드

![4라운드 게임 보드](/assets/img/posts/dune-imperium-digital-season28-game5/10-round4-start.webp)
<div class="img-caption">라운드 4 · 분쟁: 추악한 의도 — 현재 승점 3점(3위). 인장 반지 능력 재활용.</div>

![4라운드: 「배반」 카드 확인](/assets/img/posts/dune-imperium-digital-season28-game5/11-round4-combat.webp)
<div class="img-caption">제국열에 등장한 「배반」 카드 — "영향력 1이 아니라 2 획득, 이 카드 폐기. 이 병력을 교전 칸에 배치."</div>

4라운드에서 제국열에 등장한 것은 **「배반」** 카드였습니다. 영향력을 **2점**씩 올려주고 스스로 폐기되는 이 카드는, 팩션 동맹을 노리는 이번 판에서 황금같은 카드였습니다. 단번에 영향력 두 단계를 끌어올릴 수 있다는 점은 동맹 체결 타이밍을 대폭 앞당겨주었습니다.

**4라운드 결과:**

![4라운드 결과](/assets/img/posts/dune-imperium-digital-season28-game5/12-round4-result.webp)
<div class="img-caption">라운드 4 결과 — 일반 리체스 백작 1위 (전투력 9), IRIS2025 2위 (전투력 5), 헌드로 3위 (전투력 4)</div>

일반 리체스 백작이 전투력 **9점**으로 1위를 가져갔습니다. 나는 2위(전투력 5점)로 **물 1개 + 승점 1점**을 획득했습니다.

---

### 5라운드: 길드 은행 습격 — 공동 2위의 아쉬움

![5라운드 게임 보드](/assets/img/posts/dune-imperium-digital-season28-game5/13-round5-start.webp)
<div class="img-caption">라운드 5 · 분쟁: 길드 은행 습격 — 스파이스 8, 솔라리 0. 「배반」 카드가 손패에 들어왔습니다.</div>

5라운드, **「배반」** 카드가 드디어 내 손에 들어왔습니다. 영향력 2점을 한 번에 올릴 수 있는 기회였습니다.

**5라운드 결과:**

![5라운드 결과: 길드 은행 습격](/assets/img/posts/dune-imperium-digital-season28-game5/16-round6-combat.webp)
<div class="img-caption">길드 은행 습격 결과 — IRIS2025 & 헌드로 모리타니 공동 2위 (전투력 동점 4점씩)</div>

전투력 4점씩으로 나와 헌드로 모리타니가 **공동 2위**를 기록했습니다. 테시아 버니우스가 전투력 2점으로 오히려 최하위. 흥미로운 점은 1위가 없었다는 것 — 즉 최대 보상은 아무도 가져가지 못했습니다.

---

### 6라운드: 독점 거래 — 동점 승부의 기술

![6라운드 게임 보드](/assets/img/posts/dune-imperium-digital-season28-game5/17-round6-result.webp)
<div class="img-caption">라운드 6 · 분쟁: 독점 거래 — 스파이스 5, 솔라리 3. 승점 4점(1위권 진입 중)</div>

6라운드의 분쟁은 **독점 거래**. 이번 판부터 전투에 더 공격적으로 임하기 시작했습니다.

7라운드 직전 상황에서 **「초머르키」** 기술 카드를 획득했습니다(17-round6-result의 배경 화면). 이 카드는 종료 단계에서 동점자 대결 시 내가 승리하는 기술로, 후반 접전을 대비한 포석이었습니다.

**6라운드 결과:**

독점 거래 전투에서 **전투력 9점으로 1위**를 차지하며 솔라리와 공개 카드 2장을 획득했습니다. 누적 승점이 빠르게 치고 올라가고 있었습니다.

---

### 🔥 7라운드 (最終戰): 카르타그 대전투 — 10승점 돌파와 게임 종료

<div class="dune-callout">
  <strong>「우주 정치학」의 공포:</strong> 팩션 동맹마다 솔라리가 굴러들어오자 모든 지도자들이 영향력 경쟁에 몰두했습니다. 그 결과, 테시아 버니우스가 7라운드에 <strong>승점 10점</strong>을 넘기며 게임 종료 트리거가 발동되었습니다.
</div>

![7라운드: 레토의 인장 반지 마지막 활용](/assets/img/posts/dune-imperium-digital-season28-game5/18-round7-start.webp)
<div class="img-caption">라운드 7 · 카르타그 대전투 — 마지막 인장 반지 사용. 베네 게세리트·영적조화 팩션 영향력 확보.</div>

![7라운드: 거대한 음모 카드 확인](/assets/img/posts/dune-imperium-digital-season28-game5/20-round8-start.webp)
<div class="img-caption">접전 중 공개된 「거대한 음모」 —조건부 종료 단계 VP 카드. 테시아 버니우스가 이미 부분 달성 상태였습니다.</div>

![7라운드: 스파이스는 흘러야 한다](/assets/img/posts/dune-imperium-digital-season28-game5/21-round8-combat.webp)
<div class="img-caption">제국열에 「스파이스는 흘러야 한다」 (비용 9, 승점 1) 등장. 다른 지도자들이 달려들었습니다.</div>

7라운드의 분쟁 명칭은 **카르타그 대전투**였습니다. 전장은 최고조로 달아올랐습니다.

![7라운드 최종 전투 상황](/assets/img/posts/dune-imperium-digital-season28-game5/24-round9-combat.webp)
<div class="img-caption">최후의 전투 상황 — IRIS2025 전투력 14점을 투입, 최후의 병력 전개 중</div>

마지막 전투에서는 손패의 **「배반」**을 포함한 모든 자원을 쏟아부어 **전투력 14점**을 투입했습니다. 동시에 덱에 「거대한 음모」 달성 진행 상황도 확인하며 종료 단계 보너스를 최대로 끌어올렸습니다.

![카르타그 대전투 결과](/assets/img/posts/dune-imperium-digital-season28-game5/27-victory-celebration.webp)
<div class="img-caption">7라운드 최종 결과 — 테시아 버니우스 1위 (전투력 19), IRIS2025 2위 (전투력 14), 일반 리체스 3위 (전투력 4)</div>

마지막 전투는 테시아 버니우스가 전투력 **19점**이라는 경이로운 수치로 1위를 차지했습니다. IRIS2025는 2위(14점)로 아쉬웠지만, **승점 면에서는 전혀 다른 이야기**가 펼쳐졌습니다.

---

## 🏆 최종 결과: 12승점 압도적 1위

![최종 승리 화면](/assets/img/posts/dune-imperium-digital-season28-game5/28-final-score.webp)
<div class="img-caption">「승리」 — IRIS2025 (레토 아트레이드 공작) 최종 승점 12점</div>

<div class="dune-box">
  <div class="dune-box-title">🏅 최종 최종 스코어보드</div>
  <table class="dune-score-table">
    <thead>
      <tr>
        <th>순위</th><th>플레이어</th><th>지도자</th><th>최종 승점</th>
      </tr>
    </thead>
    <tbody>
      <tr class="winner">
        <td><span class="rank-badge gold">1</span></td>
        <td><strong>IRIS2025</strong></td>
        <td>레토 아트레이드 공작</td>
        <td><strong>12점 🏆</strong></td>
      </tr>
      <tr>
        <td><span class="rank-badge silver">2</span></td>
        <td>테시아 버니우스</td>
        <td>—</td>
        <td>10점</td>
      </tr>
      <tr>
        <td><span class="rank-badge bronze">3</span></td>
        <td>헌드로 모리타니 자작</td>
        <td>—</td>
        <td>5점</td>
      </tr>
      <tr>
        <td><span class="rank-badge fourth">4</span></td>
        <td>일반 리체스 백작</td>
        <td>—</td>
        <td>4점</td>
      </tr>
    </tbody>
  </table>
</div>

**전투에서는 테시아가 마지막 라운드를 지배했지만, 승점에서는 내가 여유 있게 앞섰습니다.** 팩션 영향력 선점과 동맹 솔라리 수급, 카드 구매로 이어진 선순환 전략이 정확히 맞아떨어진 결과였습니다.

---

## 📊 소규모 전투 순위표 점수 & 시즌 랭킹

![소규모 전투 순위표 점수: 21점](/assets/img/posts/dune-imperium-digital-season28-game5/30-season-ranking.webp)
<div class="img-caption">소규모 전투 순위표 점수: 총 21점</div>

<div class="dune-box">
  <div class="dune-box-title">📈 이번 판 획득 점수 내역</div>
  <div class="score-breakdown">
    <div class="score-item">
      <span class="score-label">1위 보상</span>
      <div class="score-value">+20</div>
      <div class="score-note">기본 1위 점수</div>
    </div>
    <div class="score-item">
      <span class="score-label">조달</span>
      <div class="score-value">+1</div>
      <div class="score-note">획득 효과 카드 1장</div>
    </div>
    <div class="score-item">
      <span class="score-label">전설</span>
      <div class="score-value">+0</div>
      <div class="score-note">네임드 캐릭터 미달성</div>
    </div>
    <div class="score-item" style="border-color:#c5a059;">
      <span class="score-label" style="color:#c5a059;">합계</span>
      <div class="score-value" style="color:#ffd700;font-size:2rem;">21점</div>
      <div class="score-note">이번 게임 획득 점수</div>
    </div>
  </div>
</div>

![시즌 28 랭킹 상세](/assets/img/posts/dune-imperium-digital-season28-game5/31-leaderboard-detail.webp)
<div class="img-caption">시즌 28 랭킹보드 — IRIS2025: 시즌 점수 89점 · 게임 점수 21점 · 실버 3개 · 브론즈 5개 · 494위</div>

<div class="dune-callout">
  게임 4까지의 누적 <strong>68점</strong>에 이번 <strong>21점</strong>이 더해져, 시즌 누적 점수는 <strong>89점</strong>.<br>
  전체 랭킹은 <strong>494위</strong>로, 마침내 <strong>500위권 안쪽</strong>에 안착했다! 🎉
</div>

---

## 📝 마무리 총평: 「우주 정치학」이 가르쳐 준 것

게임 4에서 틀레이락스 카드를 차곡차곡 쌓아 후반 폭발력으로 10라운드를 가져가는 전략을 썼다면, **게임 5는 완전히 다른 결의 판이었습니다.**

「우주 정치학」은 단순히 솔라리를 더 주는 규칙이 아니었습니다. **모든 지도자의 플레이 스타일을 강제로 바꿔버리는** 메타 변환이었습니다. 결과적으로 게임이 7라운드로 단축되었고, 이는 곧 "후반에 터지는 빌드"가 아닌 "초반부터 효율적으로 선점하는 자"가 유리한 판이었다는 뜻입니다.

그 점에서 **레토 아트레이드 공작의 인장 반지**는 이번 모디파이어와 완벽한 궁합을 보였습니다. 스파이스 한 개로 영향력을 추격할 수 있다는 능력은, 모든 지도자가 팩션 영향력 경쟁에 몰두하는 판에서 **비용 효율 최강의 카드**였습니다.

**전설** 모디파이어를 위한 네임드 캐릭터 수집은 한 장도 달성하지 못했던 것이 아쉬운 점. 다음 판에서는 조달과 전설 보너스도 챙길 수 있는 지도자와 전략을 고민해볼 것입니다.

> 시즌 28, 누적 89점. 494위. 아라키스에서의 전쟁은 계속됩니다. 다음 게임에서도 좋은 성적으로 돌아오겠습니다. 🏜️

---

**P.S.** 이 포스팅의 기록 이후 한 판을 더 진행하여 23점을 추가로 획득했습니다. 따라서 다음 게임 6 포스팅은 총점 91점부터 시작될 예정입니다! 많은 기대 부탁드립니다.
