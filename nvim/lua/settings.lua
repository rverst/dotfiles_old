local utils = require('utils')
local fn = require('utils.fn')
local v = require('utils.vars')

local cmdheight = 2
local indent = 2
local scrolloff = 8

vim.cmd('syntax enable')
vim.cmd('syntax on')
vim.cmd('filetype plugin indent on')

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
utils.opt('o', 'showmode', false)
utils.opt('o', 'termguicolors', true)
utils.opt('o', 'scrolloff', scrolloff)
utils.opt('o', 'completeopt', 'menuone,noselect')
utils.opt('o', 'wildmode', 'longest:list:full')
utils.opt('o', 'shortmess', 'filnxtToOFc')

utils.opt('o', 'hidden', true)
utils.opt('o', 'backup', false)
utils.opt('o', 'undodir', v.undoDir)
utils.opt('o', 'undofile', true)

utils.opt('o', 'mouse', 'nv')

utils.opt('b', 'swapfile', false)
utils.opt('b', 'expandtab', true)
utils.opt('b', 'smartindent', true)
utils.opt('b', 'shiftwidth', indent)
utils.opt('b', 'tabstop', indent)

utils.opt('w', 'number', true)
utils.opt('w', 'relativenumber', true)
utils.opt('o', 'numberwidth', 3)
utils.opt('w', 'signcolumn', 'yes:2')

local clipName
local clipProvCopy
local clipProvPaste
local clipCache

if v.isWsl or v.isWindows then
  clipName = 'windows-clipboard'
  clipProvCopy = {'pbcopy.exe'}
  clipProvPaste = {'pbpaste.exe', '--lf'}
  clipCache = 1
elseif v.isMacOs then
  clipName = 'macos-clipboard'
  clipProvCopy = {'pbcopy'}
  clipProvPaste = {'pbpaste'}
  clipCache = 0
end

if clipProvCopy then
  vim.g.clipboard = {
    name = clipName,
    copy = {
      ['+'] = clipProvCopy,
      ['*'] = clipProvCopy
    },
    paste = {
      ['+'] = clipProvPaste,
      ['*'] = clipProvPaste
    },
    cache_enabled = clipCache
  }
end

vim.o.clipboard = vim.o.clipboard .. 'unnamedplus'
