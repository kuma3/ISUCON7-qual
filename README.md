# ISUCON
ISUCON7-qualifier's repository

## 使い方
1. Makefile のパラメータを書き換える.

2. 以下で, しまもん[^しまもん]とその他便利ツールが一式入り,
NginxとMySQLの設定ファイルとDBのバックアップも取る (~/backup 以下).
```bash
$ config/install.sh
```
[^しまもん]: shimamon および simamon のどちらでもOK d(^_^o).

3. my.cnf と nginx.conf の書き換え.
安全のため自動配置はしないので, 手動で書き換える必要がある.
