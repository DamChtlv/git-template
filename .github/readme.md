# Personal git template / starter

## 🤖 Github (readme, actions...)
- Edit **deployment files** located in `.github/workflows/deploy-preprod.yml` && `.github/workflows/deploy-prod.yml`
- Edit **repository secrets**!
- Edit status badges

## ✨ Commits
- Move the file `commit-msg` to `.git/hooks/commit-msg` to have auto-prepended emojis in your commits.  
_(ex: `fix ajax stuff` becomes `🐛 Fix: ajax stuff` automatically)_
```sh
mv ./commit-msg ./.git/hooks/
```

## Readme template
_Looks something like:_
![deploy-preprod](https://github.com/DamChtlv/git-template/actions/workflows/deploy-preprod.yml/badge.svg?branch=release/preprod)
![deploy-prod](https://github.com/DamChtlv/git-template/actions/workflows/deploy-prod.yml/badge.svg?branch=release/prod)

```md
# Project

### Status
![deploy-preprod](https://github.com/DamChtlv/git-template/actions/workflows/deploy-preprod.yml/badge.svg?branch=release/preprod)
![deploy-prod](https://github.com/DamChtlv/git-template/actions/workflows/deploy-prod.yml/badge.svg?branch=release/prod)
```

## 💡 Improvments
- Force lint commits messages using [commitlint](https://github.com/conventional-changelog/commitlint#what-is-commitlint)?
