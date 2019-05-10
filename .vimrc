"------------------------------------------------------
"basic
"------------------------------------------------------
" シンタックスハイライト"
syntax on
" vueファイルのシンタックスハイライト"
autocmd BufNewFile,BufRead *.{html,htm,vue*} set filetype=html
" 全角スペースをハイライト
highlight ZenkakuSpace cterm=underline ctermfg=lightblue guibg=white
match ZenkakuSpace /　/

" swpファイルなし
set noswapfile
" ウインドウのタイトルバーにファイルのパス情報等を表示する 
set title
" カーソルが何行目の何列目に置かれているかを表示する
set ruler
" エディタウィンドウの末尾から2行目にステータスラインを常時表示させる 
set laststatus=2
" ステータス行に表示させる情報
set statusline=%<%f\ %m%r%h%w%{'['.(&fenc!=''?&fenc:&enc).']['.&ff.']'}%=%l,%c%V%8P

" 保存されていないファイルがあるときでも別のファイルを開くことが出来る
set hidden
" 行番号を振る
set number
" 内容が変更されたら自動的に再読み込み
set autoread
" ヤンクでクリップボードにコピー
set clipboard=unnamed,autoselect

" 自動補完
set completeopt=menuone
for k in split("abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ_",'\zs')
  exec "imap <expr> " . k . " pumvisible() ? '" . k . "' : '" . k . "\<C-X>\<C-P>\<C-N>'"
endfor
" カッコ補完
inoremap { {}<Left>
inoremap {<Enter> {}<Left><CR><ESC><S-o>
inoremap ( ()<ESC>i
inoremap (<Enter> ()<Left><CR><ESC><S-o>
inoremap [ []<Left>
inoremap [<Enter> []<Left><CR><ESC><S-o>
inoremap ' ''<LEFT>
inoremap " ""<LEFT>

" scrollの際、必ず上下にある行数
set scrolloff=5
" 括弧の対応を見せる設定とその時間（秒）
set showmatch matchtime=1
"補完メニュー(変換候補の出てくるやつ)の高さ
set pumheight=10
" backspace有効
set backspace=indent,eol,start
" Prevent from opening scratch preview
set completeopt=menuone
" ビープ音を鳴らさずエラーメッセージを表示する
set visualbell t_vb=
set noerrorbells

" ウィンドウの分割サイズ変更を1ずつ動くように
let g:winresizer_vert_resize = 1
let g:winresizer_horiz_resize = 1

"------------------------------------------------------
"indent
"------------------------------------------------------
"新しい行を開始したときに、新しい行のインデントを現在行と同じ量にする
set autoindent smartindent
"タブを押した時にスペースに変換する
set expandtab
"tabのスペース設定
set tabstop=2 shiftwidth=2 softtabstop=0

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
"キーバインド
"------------------------------------------------------
"Escキーをjjに割当て"
inoremap <silent> jj <ESC>

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

 call dein#add('scrooloose/nerdtree')
 call dein#add('vim-airline/vim-airline')
 call dein#add('vim-airline/vim-airline-themes')
 call dein#add('tpope/vim-fugitive')
 call dein#add('Shougo/neosnippet.vim')
 call dein#add('Shougo/neosnippet-snippets')
 " マークアップ用
 call dein#add('mattn/emmet-vim')
 call dein#add('tell-k/vim-browsereload-mac')
 " Syntax Highlight
 call dein#add('digitaltoad/vim-pug')
 call dein#add('tomlion/vim-solidity')
 call dein#add('fatih/vim-go')
 call dein#add('leafgarland/typescript-vim')
 call dein#add('godlygeek/tabular')
 call dein#add('plasticboy/vim-markdown')
 call dein#add('suan/vim-instant-markdown')
 call dein#add('slim-template/vim-slim')
 call dein#add('simeji/winresizer')

 if !has('nvim')
   call dein#add('roxma/nvim-yarp')
   call dein#add('roxma/vim-hug-neovim-rpc')
 endif

 call dein#end()
 call dein#save_state()
endif

"未インストールのものがあったら自動的にインストール
if dein#check_install()
  call dein#install()
endif

"------------------------------------------------------
"NERDTree
"------------------------------------------------------
" ファイルが指定された場合は非表示にし、指定なしの場合は表示する
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
" キーバインド
map <C-n> :NERDTreeToggle<CR>
" NERDTree File highlighting
function! NERDTreeHighlightFile(extension, fg, bg, guifg, guibg)
 exec 'autocmd filetype nerdtree highlight ' . a:extension .' ctermbg='. a:bg .' ctermfg='. a:fg .' guibg='. a:guibg .' guifg='. a:guifg
 exec 'autocmd filetype nerdtree syn match ' . a:extension .' #^\s\+.*'. a:extension .'$#'
endfunction
call NERDTreeHighlightFile('py',     'yellow',  'none', 'yellow',  '#151515')
call NERDTreeHighlightFile('md',     'blue',    'none', '#3366FF', '#151515')
call NERDTreeHighlightFile('yml',    'yellow',  'none', 'yellow',  '#151515')
call NERDTreeHighlightFile('config', 'yellow',  'none', 'yellow',  '#151515')
call NERDTreeHighlightFile('conf',   'yellow',  'none', 'yellow',  '#151515')
call NERDTreeHighlightFile('json',   'yellow',  'none', 'yellow',  '#151515')
call NERDTreeHighlightFile('html',   'yellow',  'none', 'yellow',  '#151515')
call NERDTreeHighlightFile('styl',   'cyan',    'none', 'cyan',    '#151515')
call NERDTreeHighlightFile('css',    'cyan',    'none', 'cyan',    '#151515')
call NERDTreeHighlightFile('rb',     'Red',     'none', 'red',     '#151515')
call NERDTreeHighlightFile('js',     'Red',     'none', '#ffa500', '#151515')
call NERDTreeHighlightFile('php',    'Magenta', 'none', '#ff00ff', '#151515')

filetype plugin indent on
syntax enable

