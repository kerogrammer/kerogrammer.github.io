---
layout: post
title: "듄 임페리움 디지털판 시즌 28 게임 6 플레이 기록 - 황제를 등지고 우주를 항해하다"
date: 2026-04-17 22:00:00 +0900
categories: [Game, Boardgame]
tags: [듄임페리움, 듄임페리움디지털, 소규모전투, 시즌28, 헬레나리체스, 보드게임]
image:
  path: /assets/img/posts/dune-imperium-digital-season28-game6/00-hero.svg
  alt: 듄 임페리움 소규모전투 시즌 28 게임 6
description: "듄 임페리움 디지털판 소규모 전투 시즌 28 게임 6 후기. 헬레나 리체스와 함께하는 덱 압축과 우주 항행 길드 메타. 28점이라는 고득점으로 1위를 차지하며 시즌 랭킹 449위에 안착한 비결을 살펴봅니다."
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

> 어느덧 반환점을 돈 시즌 28. 이번 게임 6에서는 황제의 부름을 과감히 무시하고, 내 손에 쥔 불필요한 패를 덜어내며 별의 바다로 향했습니다. 고득점을 안겨준 게임 6의 생생한 기록입니다.

---

## 📜 이번 판의 전장: 규칙의 함정과 순위표의 유혹

![게임 스크린샷 1](/assets/img/posts/dune-imperium-digital-season28-game6/01-screenshot.webp)
<div class="img-caption">시즌 28 · 게임 6 — 언제 봐도 긴장되는 듄 임페리움의 전장</div>

<div class="dune-box">
  <div class="dune-box-title">⚙ 게임 6 모디파이어 요약</div>
  <div class="dune-modifier-grid">
    <div class="dune-modifier-item rule">
      <span class="dune-modifier-label">📌 규칙 모디파이어</span>
      <div class="dune-modifier-value">
        <strong style="color:#ffd700;">모든 왕의 신하</strong><br>
        플레이어가 황제 카드를 한 장 획득할 때마다 주둔지에서 <span class="dune-modifier-badge">병력 하나 모집</span>
      </div>
    </div>
    <div class="dune-modifier-item">
      <span class="dune-modifier-label">📊 고물 하치장 (Scrapyard)</span>
      <div class="dune-modifier-value">
        게임 중 폐기한 카드 한 장당 <span class="dune-modifier-badge">+1점</span>
      </div>
    </div>
    <div class="dune-modifier-item">
      <span class="dune-modifier-label">📊 항해사 (Navigator)</span>
      <div class="dune-modifier-value">
        획득한 우주 항행 길드 카드 한 장당 <span class="dune-modifier-badge">+1점</span>
      </div>
    </div>
  </div>
</div>

이번 게임 6에서 주어진 규칙 모디파이어는 **「모든 왕의 신하」**였습니다. 황제 팩션 카드를 얻으면 덤으로 병력이 주둔지에 들어온다니, 꽤나 솔깃한 보너스입니다. 플레이어들에게 황제와 친해지라고 대놓고 떠미는 셈이죠.

하지만 저는 듄 임페리움에서 보통 황제 카드를 즐겨 쓰지 않습니다. 황제의 병력을 미끼로 던지는 대신, 제 시선은 **순위표 점수 모디파이어**로 향했습니다.

**「폐기한 카드 한 장당 1점」** 그리고 **「우주 항행 길드 카드 1장당 1점」**.

덱의 찌꺼기를 날려버리면서 승점까지 얻고, 우주의 패권을 쥔 길드와 손을 잡는 것이 제가 선택한 핵심 전략이었습니다. 

---

## 👑 헬레나 리체스와의 동행

![지도자 선택](/assets/img/posts/dune-imperium-digital-season28-game6/02-screenshot.webp)
<div class="img-caption">게임 6의 여정을 함께할 파트너, 다시 꺼내든 헬레나 리체스</div>

이전 판에서 레토 아트레이드 공작으로 재미를 좀 봤지만, 이번 판은 다시 제가 선호하는 지도자인 **헬레나 리체스**를 선택했습니다. 그녀의 유연함이 덱을 다루고 길드를 설득하는 이번 맞춤형 전략에 적합했기 때문입니다.

전략은 명확했습니다:
1. **황제는 안면만 튼다**: 주둔지에 병력 하나 더 얻겠다고 불필요한 황제 카드를 사들이지 않는다.
2. **무라탄의 고물상**: 카드 폐기를 지원하는 장소를 적극 활용하여 기본 카드들을 폐기한다(고물 하치장).
3. **길드와의 유착**: 시장(제국열)에서 우주 항행 길드 태그가 달린 카드는 눈에 불을 켜고 구매한다(항해사).

이 세 가지 기조를 유지하며, 불필요한 전투는 과감히 포기하고 확실하게 승점을 챙기는 쪽으로 게임을 이끌었습니다.

<div class="dune-callout">
  <strong>전율의 덱 압축:</strong> 듄 임페리움에서 덱 압축은 항상 옳습니다. 그런데 이번 판은 카드를 버릴 때마다 승점(순위표 점수)까지 주어집니다. 이보다 달콤한 보상이 있을까요? 첫 턴부터 버릴 카드의 순위를 매기며 플레이를 진행했습니다.
</div>

---

## ⚔️ 황제를 외면한 자의 승리

![치열했던 승부의 결말](/assets/img/posts/dune-imperium-digital-season28-game6/03-screenshot.webp)
<div class="img-caption">폐기와 항해의 시너지가 만들어낸 압도적인 결과</div>

게임 내내 황제보다는 모래벌레를 무피로 사육하듯 덱을 갈아엎었습니다. 카드가 1장씩 사라질 때마다 남은 우량 카드들, 특히 제가 공들여 모은 **우주 항행 길드 카드**들이 손에 더 자주 들어왔습니다. 손패 사고가 줄어드니, 꼭 필요한 순간에 원하는 액션을 할 수 있었죠.

그 결과는 완벽한 1위. 정규 승점으로 당당하게 트로피를 차지했습니다. 하지만 진짜 소름 돋는 점수 폭발은 게임 종류 직후의 **'소규모 전투 순위표 정산표'**에서 발생했습니다.

![점수 정산 화면](/assets/img/posts/dune-imperium-digital-season28-game6/04-screenshot.webp)
<div class="img-caption">총 28점을 쓸어담으며 시즌 순위를 단숨에 끌어올렸습니다.</div>

---

## 🏆 28점의 마법과 시즌 중간 점검

<div class="dune-box">
  <div class="dune-box-title">📈 게임 6 고득점 정산 내역</div>
  <div class="score-breakdown">
    <div class="score-item">
      <span class="score-label">1위 보상</span>
      <div class="score-value">+20</div>
      <div class="score-note">당당한 승리</div>
    </div>
    <div class="score-item">
      <span class="score-label">고물 하치장</span>
      <div class="score-value">+5</div>
      <div class="score-note">카드 5장 폐기</div>
    </div>
    <div class="score-item">
      <span class="score-label">항해사</span>
      <div class="score-value">+3</div>
      <div class="score-note">길드 카드 3장 획득</div>
    </div>
    <div class="score-item" style="border-color:#c5a059;">
      <span class="score-label" style="color:#c5a059;">합계</span>
      <div class="score-value" style="color:#ffd700;font-size:2rem;">28점</div>
      <div class="score-note">게임 6 획득 점수</div>
    </div>
  </div>
</div>

무려 **28점**입니다! 게임 한 판에서 낼 수 있는 매우 높은 점수대입니다. 단순히 1위(20점)를 달성한 것에 그치지 않고, 덱에서 5장의 불필요한 카드를 갈아버린 것이 고스란히 5점이 되어 돌아왔습니다. 여기에 우주 항행 길드 카드 3장을 모아 3점까지. 

> **시즌 28 누적 결과**
> - 누적 점수: **119점** (이전 89점 + 게임 6 28점 +@) 
> - 시즌 랭킹: **449위**

어느덧 **시즌 28**도 중간 이상 흘러갔습니다. 449위라는 숫자, 상위 500위 안에 안정적으로 자리 잡으며 상위권으로 도약할 발판을 완벽하게 마련했습니다. 황제의 은총(모든 왕의 신하)을 못 본 척했던 저의 선택은, 결국 우주 항행 길드와의 야합과 혹독한 다이어트(덱 압축)를 통해 이처럼 눈부신 결실로 이어졌습니다.

단순한 보드게임 디지털 버전이 아닙니다. 듄 임페리움은 선택과 집중, 그리고 역발상이 언제나 살아 숨 쉬는 우주급 체스판입니다. 앞으로 남은 시즌 28의 경기들에서도 과연 어떤 모디파이어가 저를 시험할지, 벌써부터 스파이스의 향기가 진하게 느껴집니다.

다음 판에서도 스파이스는 흘러야만 합니다. 🏜️
