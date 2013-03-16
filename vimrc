" Plugins
filetype off
 
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

Bundle 'gmarik/vundle'
Bundle 'Solarized'

Bundle 'scrooloose/nerdtree'      " project tree
Bundle 'tpope/vim-fugitive'       " git wrapper
Bundle 'EasyMotion'               " move faster through the code with
Bundle 'surround.vim'             " change surrounding block characters
Bundle 'SuperTab-continued.'      " autocompletion
Bundle 'snipMate'                 " snippets

" Settings

syntax enable
set background=dark
colorscheme solarized

syntax on
filetype plugin indent on

set nocompatible

set number                        " show line number
set mouse=a                       " mouse support
set mousehide                     " hide mouse when typing

set hlsearch                      " highlight search matches
set incsearch                     " highlight as you type
set showmatch                     " jump briefly to matching parenthesis
set ignorecase                    " case insensitive search
set history=1000                  " length of commands history
set cursorline                    " highlight current line

set autoindent                    " copy indent from previous line when new one
set expandtab                     " spaces isntead of tabs
set smarttab
set shiftwidth=4
set tabstop=4
set softtabstop=4

" Mappings
let mapleader = "-"
map <leader>t :NERDTreeToggle<cr>
" Easy window navigation
nmap <leader>h <C-w>h
nmap <leader>j <C-w>j
nmap <leader>k <C-w>k
nmap <leader>l <C-w>l

vmap < <gv                        " keep visual block selection
vmap > >gv                        " keep visual block selection

inoremap {      {}<Left>
inoremap {<CR>  {<CR>}<Esc>O
inoremap {{     {
inoremap {}     {}

" Nerdtree
autocmd vimenter * NERDTree
let NERDTreeShowBookmarks=1
let NERDTreeChDirMode=0
let NERDTreeQuitOnOpen=0
let NERDTreeMouseMode=2
let NERDTreeShowHidden=1
let NERDTreeIgnore=['\.pyc','\~$','\.swo$','\.swp$','\.git','\.hg','\.svn','\.bzr']
let NERDTreeKeepTreeInNewTab=1
let g:nerdtree_tabs_open_on_gui_startup=0
