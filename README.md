# ISUCON
ISUCON7-qualifier's repository

## 使い方
1. ~/ 直下で git を使ってリポジトリを取ってくる
```bash
$ git init
$ git remote add upstream https://github.com/keisuke123/ISUCON.git
$ git pull upstream master
$ git config --global user.name "John Doe"
$ git config --global user.email johndoe@example.com
```
  - masterに上書きする場合
```bash
  $ git branch --set-upstream-to=upstream/master master
```
  - 別branchを作成する場合
```bash
  $ git checkout -b shimamon upstream/master
  $ git push -u upstream shimamon
```

2. ~/config/Makefile のパラメータを書き換える.

3. install.sh を実行して, しまもんとその他便利ツールが一式を入れ,
~/backup 以下にNginxとMySQLの設定ファイル, MySQLのDBのバックアップも取る.
```bash
$ ~/config/install.sh && source ~/.bash_profile
```
shimamon および simamon のどちらでもOK d(^_^o).

4. my.cnf と nginx.conf を書き換える.
安全のため自動配置はしないので, 手動で書き換えてね.

