import feedparser
import os
import requests
from markdownify import markdownify as md
from datetime import datetime

# 1. 설정 (본인의 티스토리 RSS 주소로 수정하세요)
RSS_URL = "https://kerogrammer.tistory.com/rss" 
POSTS_DIR = "_posts"
IMG_DIR = "assets/img/posts/migration"

if not os.path.exists(POSTS_DIR): os.makedirs(POSTS_DIR)
if not os.path.exists(IMG_DIR): os.makedirs(IMG_DIR)

feed = feedparser.parse(RSS_URL)

print(f"총 {len(feed.entries)}개의 포스트를 발견했습니다.")

for entry in feed.entries:
    # 날짜 처리
    dt = datetime.fromtimestamp(datetime.timestamp(datetime(*entry.published_parsed[:6])))
    date_str = dt.strftime('%Y-%m-%d')
    clean_title = entry.title.replace(' ', '-').replace('/', '-')
    filename = f"{date_str}-{clean_title}.md"

    # Front Matter 작성 (Chirpy 형식)
    with open(os.path.join(POSTS_DIR, filename), "w", encoding="utf-8") as f:
        f.write("---\n")
        f.write(f"title: \"{entry.title}\"\n")
        f.write(f"date: {dt.strftime('%Y-%m-%d %H:%M:%S +0900')}\n")
        f.write("categories: [Tistory, Migration]\n")
        f.write("tags: [migration]\n")
        f.write("---\n\n")
        f.write(md(entry.summary)) # HTML을 마크다운으로 변환

print("마이그레이션 완료!")