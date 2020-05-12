if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://gitee.com/wlgc1801lzh/config/raw/master/vim/plug.vim
  autocmd VimEnter * PlugInstall --sync | source ~/.vimrc
endif

"========== 修改键位 ==========
map ; :
let mapleader = " "
map sr :source ~/.vimrc<CR>
map <LEADER><CR> :noh<CR>
map <LEADER>c :"+y<CR>
map <LEADER>k <C-w>k
map <LEADER>j <C-w>j
map <LEADER>h <C-w>h
map <LEADER>l <C-w>l
map <LEADER>K <C-w>K
map <LEADER>J <C-w>J
map <LEADER>H <C-w>H
map <LEADER>L <C-w>L

"========== 常规设置 ==========
set nocompatible
set langmenu=zh_CN.UTF-8
set wildmenu
set number
set relativenumber
set cursorline
set showcmd
au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif
set tabstop=2
set shiftwidth=2
set softtabstop=2
set expandtab
set smarttab
set autoindent
set smartindent
set wrap
set linebreak
syntax on
set autochdir
exec "nohlsearch"
set ignorecase
set incsearch
set hlsearch
set showmatch
filetype on
filetype indent on
filetype plugin on
filetype plugin indent on

"========== 运行代码 ==========
map \r :call Run()<CR>
func! Run()
  exec "w"
  if &filetype == 'java'
    exec "!javac %"
    exec "!java %<"
  elseif &filetype == 'python'
    exec "!python3 %"
  elseif &filetype == 'html'
    exec '!firefox % &'
  elseif &filetype == 'cpp'
    exec '!g++ % -o %<'
    exec '!time ./%<'
  elseif &filetype == 'c'
    exec '!gcc % -o %<'
    exec '!time ./%<'
  endif
endfunc

"========== vim-plug ==========
call plug#begin('~/.vim/plugged')

" snazzy
Plug 'connorholyday/vim-snazzy'
" auto-pairs
Plug 'jiangmiao/auto-pairs'
" autoformat
Plug 'Chiel92/vim-autoformat'
" airline
Plug 'vim-airline/vim-airline'
" nerdtree
Plug 'scrooloose/nerdtree'
" tagbar
Plug 'majutsushi/tagbar'
" coc
Plug 'neoclide/coc.nvim', {'tag': '*', 'do': { -> coc#util#install()}}
" markdown
Plug 'iamcco/markdown-preview.nvim', {'do': { -> mkdp#util#install()}}
" emmet
Plug 'mattn/emmet-vim'

call plug#end()

"========== theme  ===========
colorscheme snazzy

"========== autoformat ==========
nnoremap \f :Autoformat<CR>

"========== nerdtree ==========
map <leader>nt :NERDTreeToggle<CR>
map <leader>tc :tabc<CR>
map <leader>to :tabo<CR>
map <leader>ts :tabs<CR>
map <leader>tp :tabp<CR>
map <leader>tn :tabn<CR>
let NERDTreeHighlightCursorline = 1
let NERDTreeShowLineNumbers = 1
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | end

"========= tagbar ==========
map <leader>tb :TagbarToggle<CR>
let g:tagbar_ctags_bin = 'ctags'
let g:tagbar_width     = 30
let g:tagbar_autofocus = 1
let g:tagbar_show_linenumbers = 2

"========== markdown =========
nmap mm <Plug>MarkdownPreview
nmap ms <Plug>MarkdownPreviewStop
nmap mt <Plug>MarkdownPreviewToggle
