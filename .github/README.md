# Personal git template / starter

> 🛠 Tools used:
> - 🤖 CI/CD manager: **[Github actions](https://github.com/DamChtlv/git-template/tree/main/.github/workflows)**
> - 📦 Package manager, 🧪 test runner, 🖥 live server, ⚙ bundler & 🔨 compiler: **[bun](https://github.com/oven-sh/bun)**
> - 📚 Changelog generator: [**cliff**](https://git-cliff.org/)
> - ⌨ Commit convention / formatter: [**conventional commits**](https://www.conventionalcommits.org/en/v1.0.0/#summary) / **[husky](https://typicode.github.io/husky/)**

## ✨ Features
<details>
<summary>
<strong>⌨ Auto formatted commits & auto-changelog</strong>
</summary>

- This repo uses **a simple commit convention**, which gets **automatically formatted** properly and also used to **generate a changelog**  
> 💡 INFO: Commit message should be composed like this: `action|context|details`
>
> Example: commit `fix ajax used wrong ajax url` will become `🐛 Fix(ajax): used wrong ajax url`,  
> it will also be added into 🐛 **Bug fixes section** inside latest version of changelog automatically _(see `CHANGELOG.md`)_
</details>

<details>
<summary>
<strong>🚀 Auto install, build & deploy with CI/CD</strong> <em>(based on branches)</em>
</summary>

- **Automatically install assets** _(from managers like node modules... using bun action)_
- **Automatically push code** on remote servers _(using correct SFTP env based on pull requests / branches)_
- **Automatically configure IP whitelisting** on hosting _(specific to o2switch hosting)_
- **Automatically trigger 3rd party actions** post deploy _(auto clear cache...)_
</details>

<details>
<summary>
<strong>🔍 Project quick view</strong> <em>(badges)</em>
</summary>

- See **deploy states** per **environment** _(failed, success...)_
</details>

<details>
<summary>
<strong>🎢 Quick launch a WP server</strong> <em>(docker is mandatory)</em>
</summary>

- Update content of `.wp-env.json` with your preferences _(php version, theme, plugins...)_
- Use `wp-env` scripts like: `bun run wp:start` / `bun run wp:stop`
- More informations about [**wp-env** here](https://github.com/WordPress/gutenberg/tree/HEAD/packages/env#readme)
</details>

## 🛠 Setup
0. Clone this repository _(using "**Use template**" or directly with `https|ssh|zip`)_

1. Install **package manager** _(optional if `bun` is already installed)_ 
```sh
curl -fsSL https://bun.sh/install | bash
```

2. Install **git hooks manager** _(optional if `package.json` already has `prepare` script)_
```sh
bunx husky install
```

3. Update **continuous integration config files** _(Github readme, actions...)_
- Edit **deployment files paths** located in:
  - `.github/workflows/deploy-preprod.yml`
  - `.github/workflows/deploy-prod.yml`

- Set **repository secrets** below in repository settings:
  ```sh
  PREPROD_FTP_HOST = (example.com)
  PREPROD_FTP_USER = (johndoe)
  PREPROD_FTP_PASS = (not123)

  PROD_FTP_HOST = (example.com)
  PROD_FTP_USER = (johndoe)
  PROD_FTP_PASS = (not123)
  ```

4. Update **badges** in **README.md**  
_Example:_  
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

1. Install scripts
```sh
bun i
```

2. Run scripts _(from `package.json`)_
```sh
bun run script-name
```

3. Build assets
```sh
bun run build ./index.js --outdir ./build
```

4. Spin up a static server on `localhost:5000`
```sh
bunx serve folder-name
```

5. Run tests
```sh
bun test
```
---

## 💡 Improvments / ideas
- ~~Force lint commits messages using [commitlint](https://github.com/conventional-changelog/commitlint#what-is-commitlint)?~~
- ~~Automatically generate a changelog based on commits using [Git Cliff](https://github.com/orhun/git-cliff)?~~
