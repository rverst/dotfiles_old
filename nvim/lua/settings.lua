local utils = require('utils')
local cmd = vim.cmd
local fn = vim.fn

local cmdheight = 2
local indent = 4
local scrolloff = 8
local undoDir = fn.stdpath('cache') .. '/undo'

cmd 'syntax enable'
cmd 'filetype plugin indent on'

utils.opt('o', 'updatetime', 250)
utils.opt('o', 'cmdheight', cmdheight)
utils.opt('o', 'winheight', cmdheight)
utils.opt('o', 'winminheight', cmdheight)
utils.opt('o', 'winminwidth', cmdheight*2)
utils.opt('o', 'ignorecase', true)
utils.opt('o', 'smartcase', true)
utils.opt('o', 'shiftround', true)
utils.opt('o', 'splitbelow', true)
utils.opt('o', 'splitright', true)
utils.opt('o', 'termguicolors', true)
utils.opt('o', 'scrolloff', scrolloff)
utils.opt('o', 'completeopt', 'menuone,noinsert,noselect')
utils.opt('o', 'wildmode', 'longest:list:full')
utils.opt('o', 'clipboard', 'unnamed,unnamedplus')
utils.opt('o', 'shortmess', 'filnxtToOFc')

utils.opt('o', 'hidden', true)
utils.opt('o', 'backup', false)
utils.opt('o', 'undodir', undoDir)
utils.opt('o', 'undofile', true)

utils.opt('o', 'mouse', 'nv')

utils.opt('b', 'swapfile', false)
utils.opt('b', 'expandtab', true)
utils.opt('b', 'smartindent', true)
utils.opt('b', 'shiftwidth', indent)
utils.opt('b', 'tabstop', indent)

utils.opt('w', 'number', true)
utils.opt('w', 'relativenumber', true)

