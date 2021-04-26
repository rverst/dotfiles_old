local fn = vim.fn
local cmd = vim.cmd
local path = fn.stdpath('data') .. '/site/pack/paqs/opt/paq-nvim'
local installed = fn.empty(fn.glob(path)) == 0

-- ToDo: do some check for periodic updates
local update = false

if not installed then
 fn.system({'git', 'clone', 'https://github.com/savq/paq-nvim.git', path})
end

cmd 'packadd paq-nvim'
local p = require('paq-nvim')
p.paq{'savq/paq-nvim', opt=true} -- let paq manage itself

-- telescope
p.paq 'nvim-telescope/telescope.nvim'
p.paq 'nvim-lua/popup.nvim'
p.paq 'nvim-lua/plenary.nvim'

-- nvim treesitter
p.paq {'nvim-treesitter/nvim-treesitter', run='TSUpdate'}
p.paq 'nvim-treesitter/playgound'

-- LSP plugins
p.paq 'neovim/nvim-lspconfig'
p.paq 'nvim-lua/completion-nvim'
p.paq 'nvim-lua/lsp_extensions.nvim'

-- maximize windows
p.paq 'szw/vim-maximizer'


-- zen mode
p.paq 'junegunn/goyo.vim'

-- color schemes
p.paq 'sainnhe/gruvbox-material'




if not installed then
  p.install()
elseif update then
  p.update()
end
