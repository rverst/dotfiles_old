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

local fn = vim.fn
local cmd = vim.cmd
local exec = vim.api.nvim_command
local utils = require('utils')

require('plugins')
require('settings')
require('bindings')
require('autocmds')

require('config.lsp')
require('config.colorizer')
require('config.devicons')
require('config.galaxyline')

require('colorbuddy').colorscheme('smyck')
--require('colorbuddy').colorscheme('gruvbuddy')
