"------------------------------------------------------
"basic
"------------------------------------------------------
"シンタックスハイライト"
syntax on
"vueファイルのシンタックスハイライト"
autocmd BufNewFile,BufRead *.{html,htm,vue*} set filetype=html
" 全角スペースをハイライト
highlight ZenkakuSpace cterm=underline ctermfg=lightblue guibg=white
match ZenkakuSpace /　/

"swpファイルなし
set noswapfile
"ウインドウのタイトルバーにファイルのパス情報等を表示する 
set title
"カーソルが何行目の何列目に置かれているかを表示する
set ruler
" エディタウィンドウの末尾から2行目にステータスラインを常時表示させる 
set laststatus=2
" ステータス行に表示させる情報
set statusline=%<%f\ %m%r%h%w%{'['.(&fenc!=''?&fenc:&enc).']['.&ff.']'}%=%l,%c%V%8P

" 保存されていないファイルがあるときでも別のファイルを開くことが出来る
set hidden
"行番号を振る
set number
"内容が変更されたら自動的に再読み込み
set autoread
" ヤンクでクリップボードにコピー
set clipboard=unnamed,autoselect

"scrollの際、必ず上下にある行数
set scrolloff=5
"括弧の対応を見せる設定とその時間（秒）
set showmatch matchtime=1
"補完メニュー(変換候補の出てくるやつ)の高さ
set pumheight=10
"backspace有効
set backspace=indent,eol,start
" Prevent from opening scratch preview
set completeopt=menuone

"------------------------------------------------------
"indent
"------------------------------------------------------
"新しい行を開始したときに、新しい行のインデントを現在行と同じ量にする
set autoindent smartindent
"タブを押した時にスペースに変換する
set expandtab
"tabのスペース設定
set tabstop=2 shiftwidth=4 softtabstop=0

"インデントの数を折畳のレベル(深さ)とする
set foldmethod=indent
set foldlevel=1
set foldnestmax=2
set foldtext=FoldCCtext()

"------------------------------------------------------
"color
"------------------------------------------------------
set t_Co=256

"------------------------------------------------------
"search
"------------------------------------------------------
" 大文字小文字無視
set ignorecase
" 検索結果をハイライトする
set hlsearch
" Escの2回押しでハイライト消去
nnoremap <Esc><Esc> :nohlsearch<CR><ESC>
" 検索ワードの最初の文字を入力した時点で検索を開始する
set incsearch

"------------------------------------------------------
"other
"------------------------------------------------------
"80カラムルール
let &colorcolumn=join(range(81,999),",")
hi ColorColumn ctermbg=235 guibg=#2c2d27

""""""""""""""""""""""""""""""
" 挿入モード時、ステータスラインの色を変更
""""""""""""""""""""""""""""""
let g:hi_insert = 'highlight StatusLine guifg=darkblue guibg=darkyellow gui=none ctermfg=blue ctermbg=yellow cterm=none'

if has('syntax')
    augroup InsertHook
        autocmd!
        autocmd InsertEnter * call s:StatusLine('Enter')
        autocmd InsertLeave * call s:StatusLine('Leave')
    augroup END
endif

let s:slhlcmd = ''
function! s:StatusLine(mode)
    if a:mode == 'Enter'
        silent! let s:slhlcmd = 'highlight ' . s:GetHighlight('StatusLine')
        silent exec g:hi_insert
    else
        highlight clear StatusLine
        silent exec s:slhlcmd
    endif
endfunction

function! s:GetHighlight(hi)
    redir => hl
    exec 'highlight '.a:hi
    redir END
    let hl = substitute(hl, '[\r\n]', '', 'g')
    let hl = substitute(hl, 'xxx', '', '')
    return hl
endfunction

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
 " ファイルを開けるのを便利に
 call dein#add('Shougo/unite.vim')
 " Unite.vimで最近使ったファイルを表示できるようにする
 call dein#add('Shougo/neomru.vim')

 if !has('nvim')
   call dein#add('roxma/nvim-yarp')
   call dein#add('roxma/vim-hug-neovim-rpc')
 endif

 call dein#end()
 call dein#save_state()
endif

filetype plugin indent on
syntax enable

