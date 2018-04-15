"------------------------------------------------------
"basic
"------------------------------------------------------
"シンタックスハイライト"
syntax on
"scrollの際、必ず上下にある行数
set scrolloff=5
"内容が変更されたら自動的に再読み込み
set autoread
"swpファイルなし
set noswapfile
" 保存されていないファイルがあるときでも別のファイルを開くことが出来る
set hidden
"括弧の対応を見せる設定とその時間（秒）
set showmatch matchtime=1
"行番号を振る
set number
"補完メニュー(変換候補の出てくるやつ)の高さ
set pumheight=10
"backspace有効
set backspace=indent,eol,start
" Prevent from opening scratch preview
set completeopt=menuone


"------------------------------------------------------
"color
"------------------------------------------------------

set t_Co=256


"------------------------------------------------------
"search
"------------------------------------------------------

"大文字小文字無視
set ignorecase
"検索結果をハイライトする
set hlsearch
" 全角スペースをハイライトする
highlight ZenkakuSpace cterm=underline ctermfg=lightblue guibg=darkgray
match ZenkakuSpace /　/

"------------------------------------------------------
"indent
"------------------------------------------------------

"新しい行を開始したときに、新しい行のインデントを現在行と同じ量にする
set autoindent smartindent
"タブを押した時にスペースに変換する
set expandtab
"tabのスペース設定
set tabstop=2 shiftwidth=4 softtabstop=0

"------------------------------------------------------
"other
"------------------------------------------------------

"80カラムルール
let &colorcolumn=join(range(81,999),",")
hi ColorColumn ctermbg=235 guibg=#2c2d27

"------------------------------------------------------
"dein
"------------------------------------------------------
if &compatible
 set nocompatible
endif
" Add the dein installation directory into runtimepath
set runtimepath+=~/.cache/dein/repos/github.com/Shougo/dein.vim

if dein#load_state('~/.cache/dein')
 call dein#begin('~/.cache/dein')

 call dein#add('~/.cache/dein')
 call dein#add('Shougo/deoplete.nvim')
 if !has('nvim')
   call dein#add('roxma/nvim-yarp')
   call dein#add('roxma/vim-hug-neovim-rpc')
 endif

 call dein#end()
 call dein#save_state()
endif

filetype plugin indent on
syntax enable

