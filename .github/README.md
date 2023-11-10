# Personal git template / starter
> with **Github Actions** and **config setup** _(package manager, bundler...)_

## 🛠 Setup

> 🛑 Must install **[Bun](https://bun.sh/)** first, using this command: `curl -fsSL https://bun.sh/install | bash`

### ✨ 1. Commits
- To have auto-prepended emojis in your commits, run the following:  
_(ex: `fix ajax stuff` becomes `🐛 Fix: ajax stuff` automatically)_
```sh
bunx husky install
```

### 🤖 2. Github (readme, actions...)
- Edit **deployment files paths** located in:
  - `.github/workflows/deploy-preprod.yml`
  - `.github/workflows/deploy-prod.yml`

- Set **repository secrets** below in repository settings:
  ```sh
  PREPROD_FTP_HOST
  PREPROD_FTP_USER
  PREPROD_FTP_PASS

  PROD_FTP_HOST
  PROD_FTP_USER
  PROD_FTP_PASS
  ```

### 📖 3. Readme template
_Looks something like:_
![deploy-preprod](https://github.com/DamChtlv/git-template/actions/workflows/deploy-preprod.yml/badge.svg?branch=release/preprod)
![deploy-prod](https://github.com/DamChtlv/git-template/actions/workflows/deploy-prod.yml/badge.svg?branch=release/prod)
- Copy code below into `.github/README.md` and **change repository paths**!
```md
# Project

### Status
![deploy-preprod](https://github.com/DamChtlv/git-template/actions/workflows/deploy-preprod.yml/badge.svg?branch=release/preprod)
![deploy-prod](https://github.com/DamChtlv/git-template/actions/workflows/deploy-prod.yml/badge.svg?branch=release/prod)
```

## ❔ How to use
Package manager / bundler / test runner used in this repo is **[bun](https://github.com/oven-sh/bun)**

1. Install scripts
```sh
bun i
```

2. Run scripts _(from `package.json`)_
```sh
bun run script-name
```

3. Execute package
```sh
bunx module-name
```

4. Build assets
```sh
bun build ./index.js --outdir ./build
```

5. Spin up a static server on `localhost:5000`
```sh
bunx serve folder-name
```

6. Run tests
```sh
bun test
```
---

## 💡 Improvments / ideas
- Force lint commits messages using [commitlint](https://github.com/conventional-changelog/commitlint#what-is-commitlint)?
