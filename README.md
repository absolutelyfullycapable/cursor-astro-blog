# Cursor Notes 👩🏻‍💻

> [요즘 바이브 코딩 커서 AI 30가지 프로그램 만들기](https://product.kyobobook.co.kr/detail/S000217462860) 나만의 블로그 만들기 실습

Astro + Markdown으로 만든 정적 블로그입니다.  
GitHub Pages 프로젝트 사이트로 배포합니다.

- **배포 주소** · https://absolutelyfullycapable.github.io/cursor-astro-blog/

---

## 주요 기능

- Home / About / Blog 메뉴
- 마크다운 글 (`src/content/blog/YYYY/MM/`)
- 카테고리 · 태그 · 월별 아카이브
- Pretendard UI
- 파비콘 · 대표 아이콘 base64 인라인
- GitHub Actions 자동 배포

---

## 폴더 구조

```
cursor-astro-blog/
├── .github/workflows/      # Pages 자동 배포
├── scripts/                # publish-to-github.sh
├── public/                 # 정적 자산
└── src/
    ├── pages/              # Home · About · Blog · 글/분류/아카이브
    ├── content/blog/       # 마크다운 글 (YYYY/MM/)
    ├── assets/             # blogfavicon.js · blogicon.js (base64)
    ├── components/         # Header · Footer · PostList · Sidebar
    ├── layouts/            # BaseLayout
    ├── lib/posts.ts        # 글 로드 · 분류 · base path 유틸
    └── styles/             # Pretendard · 에디토리얼 UI
```

---

## 실행 방법

```bash
npm install
npm run dev
# http://localhost:4321/cursor-astro-blog/ 접속

# 정적 빌드 후 미리보기
npm run build
npm run preview
```

글은 `src/content/blog/YYYY/MM/slug.md`에 frontmatter(`title`, `description`, `pubDate`, `category`, `tags`)와 본문을 작성합니다.

---

## 참고

- **실습 기록** · [CursorAI-study](https://github.com/absolutelyfullycapable/CursorAI-study)
- **저자** · 박현규
- **출판** · 골든래빗(주), 2025
