""" set leader key
let mapleader =","

""" always show the signcolumn (coc.vim suggestion)
if has("patch-8.1.1564")
  set signcolumn=number
else
  set signcolumn=yes
endif

""" textEdit might fail if hidden is not set (coc.vim suggestion)
set hidden

""" some language servers have issues with backup files (coc.vim suggestion)
set nobackup
set nowritebackup

""" longer updatetime leads to noticeable delays and poor expirience (coc.vim suggestion)
set updatetime=300

filetype plugin on
syntax on
set encoding=utf-8
set pyx=3
set termguicolors
set wildmenu
set number relativenumber
set tabstop=2 softtabstop=0 expandtab shiftwidth=2 smarttab
set smartcase
set ruler
set autoindent
set showcmd
set showmode
set incsearch hlsearch

""" autocompletion
set wildmode=longest,list,full

