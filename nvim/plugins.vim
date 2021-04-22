call plug#begin(stdpath('data') . '/plugged')

  " nerdtree
  Plug 'preservim/nerdtree'

  " maximize windows
  Plug 'szw/vim-maximizer'

  " nvim-telescope
  Plug 'nvim-lua/popup.nvim'
  Plug 'nvim-lua/plenary.nvim'
  Plug 'nvim-telescope/telescope.nvim'
  Plug 'nvim-telescope/telescope-fzy-native.nvim'

  " nvim-treesitter
  Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
  Plug 'nvim-treesitter/playground'

  " LSP
  Plug 'neovim/nvim-lspconfig'
  Plug 'williamboman/nvim-lsp-installer'
  Plug 'nvim-lua/completion-nvim'
  Plug 'tjdevries/nlua.nvim'
  Plug 'tjdevries/lsp_extensions.nvim'

  " debugger
  Plug 'puremourning/vimspector'

  " zen mode
  Plug 'junegunn/goyo.vim'

  " color schemes
  Plug 'sainnhe/gruvbox-material'

call plug#end()
