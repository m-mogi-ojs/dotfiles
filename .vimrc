
set nocompatible
syntax enable
filetype plugin indent on
colorscheme molokai
set t_Co=256

" 検索パターンに大文字小文字を区別しない
set ignorecase
" インクリメンタルサーチ. １文字入力毎に検索を行う
set incsearch
" 検索パターンに大文字を含んでいたら大文字小文字を区別する
set smartcase
" 検索結果をハイライト"
set hlsearch

" タブをスペースに変換する
set expandtab
" ファイル上のタブ文字の幅
set tabstop=2
" 連続した空白に対してタブキーやバックスペースでカーソルが動く幅
set softtabstop=2
" 改行時に前の行の構文をチェックし次の行のインデントを増減する
set smartindent
" smartindentで増減する幅
set shiftwidth=2

" 行数を表示
set number
" ファイルタイトルを表示
set title
" -(ハイフン)を単語に含める
set isk+=-
" vimの256色対応
set t_Co=256
" クリップボード
set clipboard=unnamed
" indent: 行頭の空白, eol: 改行, start: 挿入モード開始位置より手前の文字でバックスペースを有効化
set backspace=indent,eol,start
" □や○文字が崩れる問題を解決
set ambiwidth=double
" Vimの「%」を拡張する
source $VIMRUNTIME/macros/matchit.vim
" コマンドモードの補完
set wildmenu
" 不可視文字を表示する
set list
" タブを -- 半スペを - で表示する
set lcs=tab:>-,trail:-
" 末尾に改行がついていないファイルを編集し保存するとファイル末尾に改行追加されるのを防ぐ
set nofixeol

" vimを立ち上げたときに、自動的にvim-indent-guidesをオンにする
let g:indent_guides_enable_on_vim_startup = 1

" C-eでNERDTreeを表示
nnoremap <silent><C-e> :NERDTreeToggle<CR>
" C-pでfzfのFiles
nnoremap <silent><C-p> :Files<CR>
" NERDTreeを初期表示する
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
