--[[

 my neovim lua config

 many ideas and snippets shamelessly borrowed from (in alphabetical order):

 - Camilo Orrego (https://github.com/baldore)
 - Luke Smith (https://github.com/LukeSmithxyz)
 - siduck76 (https://github.com/siduck76/neovim-dots)
 - ThePrimeagen (https://github.com/awesome-streamers/awesome-streamerrc/blob/master/ThePrimeagen)
 - TJ DeVries (https://github.com/tjdevries)

--]]

-- leaderkey is space
vim.g.mapleader = ' '

--local fn = vim.fn
--local cmd = vim.cmd
--local exec = vim.api.nvim_command
--local utils = require('utils')

-- plugin manager
require('plugins.paq')

-- different settings
require('settings')
require('bindings')
require('autocmds')

-- plugin configurations
require('plugins.lsp')
require('plugins.completion')
require('plugins.snippets')
require('plugins.treesitter')
require('plugins.colorizer')
require('plugins.devicons')
require('plugins.galaxyline')

-- colorscheme
require('colorbuddy').colorscheme('onebuddy')
--require('colorbuddy').colorscheme('smyck')
--require('colorbuddy').colorscheme('gruvbuddy')
