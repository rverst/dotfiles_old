set wildmode=longest,list,full
set wildmenu
set relativenumber
set number
set signcolumn=yes
set hlsearch
set incsearch
set noerrorbells

set tabstop=2 softtabstop=2
set shiftwidth=2
set expandtab
set smartindent

" we do use widescreen monitor nowadays
set colorcolumn=99
set nowrap

set scrolloff=8
set cmdheight=2

" no swap files and safety net, but create undo files
set hidden
set noswapfile
set nobackup
set undodir=$XDG_CACHE_HOME/nvim/undo
set undofile

" set minimum width and heigt for windows, quite
" useful for the awesome `szw/vim-maximizer` plugin
set winminwidth=5
set winheight=2
set winminheight=2

set updatetime=100

set completeopt=menuone,noinsert,noselect
set shortmess+=c
let g:completion_matching_strategy_list=['exact', 'substring', 'fuzzy']
