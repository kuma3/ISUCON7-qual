# ISUCON
ISUCON7-qualifier's repository

## 使い方
1. ~/ 直下で git を使ってリポジトリを取ってくる
```bash
$ git init
$ git remote add origin https://github.com/keisuke123/ISUCON.git
$ git pull origin master
$ git config --global user.name "John Doe"
$ git config --global user.email johndoe@example.com
```
  1.  master上書き
  ```bash
  $ git branch --set-upstream-to=origin/master master
  ```

  2.  別branch作成
  ```bash
  $ git branch shimamon origin/shimamon
  $ git checkout shimamon
  $ git pull origin shimamon
  $ git branch --set-upstream-to=origin/shimamon master
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

