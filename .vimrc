if &compatible
  set nocompatible "vim拡張使用
endif

if !isdirectory($HOME . '/.vim/tmp')
  call mkdir($HOME . '/.vim/tmp', 'p')
endif
set directory=~/.vim/tmp
set backupdir=~/.vim/tmp

syntax enable
filetype plugin indent on
set encoding=utf-8
set clipboard+=unnamed

set number "行番号表示
set showmode "モード表示
set title "編集中のファイル名を表示
set ruler "ルーラーの表示
set showcmd "入力中のコマンドをステータスに表示する
set showmatch "括弧入力時の対応する括弧を表示
set laststatus=2 "ステータスラインを常に表示
set cursorline " カーソルラインを強調

set smartindent "オートインデント
set expandtab "タブの代わりに空白文字挿入
set ts=2 sw=2 sts=0 "タブは半角2文字分のスペース

set hlsearch "検索語句のハイライト
set ignorecase "検索文字列が小文字の場合は大文字小文字を区別なく検索する
set smartcase "検索文字列に大文字が含まれている場合は区別して検索する
set wrapscan "検索時に最後まで行ったら最初に戻る
set noincsearch "検索文字列入力時に順次対象文字列にヒットさせない
set nohlsearch "検索結果文字列の非ハイライト表示

"タブ, 空白, 改行の可視化
set list
set listchars=tab:>.,trail:_,extends:>,precedes:<,nbsp:%

"全角スペースをハイライト
function! JISX0208SpaceHilight()
    syntax match JISX0208Space "　" display containedin=ALL
    highlight JISX0208Space term=underline ctermbg=LightCyan
endf
"syntaxの有無をチェックし、新規バッファと新規読み込み時にハイライト
if has("syntax")
    syntax on
        augroup invisible
        autocmd! invisible
        autocmd BufNew,BufRead * call JISX0208SpaceHilight()
    augroup END
endif

"誤操作防止
nnoremap ZZ <Nop>
nnoremap ZQ <Nop>
nnoremap Q  <Nop>

