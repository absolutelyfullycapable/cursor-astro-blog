# Cursor Astro Blog (실습용)

[Astro](https://astro.build)로 만든 정적 블로그 실습 프로젝트입니다.  
기존 [Archive Of Records](https://absolutelyfullycapable.github.io) 사이트와 **별도 저장소**로 운영합니다.

## 배포 주소

- **사이트**: https://absolutelyfullycapable.github.io/cursor-astro-blog/
- **저장소**: https://github.com/absolutelyfullycapable/cursor-astro-blog

## 로컬 개발

```bash
npm install
npm run dev
```

## 빌드

```bash
npm run build
npm run preview
```

## GitHub Pages 설정

1. 저장소 **Settings → Pages**
2. **Source**: GitHub Actions
3. `main` 브랜치에 push하면 Actions가 자동 배포합니다.

## 프로젝트 구조

```text
/
├── public/
├── src/
│   ├── assets/
│   ├── components/
│   ├── layouts/
│   └── pages/
├── astro.config.mjs
└── package.json
```
