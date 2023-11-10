# Personal git template / starter

## 🤖 Github (readme, actions...)
- Edit **deployment file** located in `.github/workflows/deployment.yml`

## ✨ Commits
- Move the file `commit-msg` to `.git/hooks/commit-msg` to have auto-prepended emojis in your commits.  
_(ex: `fix ajax stuff` becomes `🐛 Fix: ajax stuff` automatically)_
```sh
mv ./commit-msg ./.git/hooks/
```

## 💡 Improvments
- Force lint commits messages using [commitlint](https://github.com/conventional-changelog/commitlint#what-is-commitlint)?
