
local c = vim.cmd
local g = vim.g
local base16 = require('base16')

local t = g.colors.theme
base16(t, true)

c('hi Normal guibg=NONE ctermbg=NONE')
c('hi LineNr ctermbg=none guibg=none')

c('hi SignColumn ctermbg=none guibg=none')

c('hi SignColumn     guibg=NONE')
c('hi VertSplit      guibg=NONE  guifg=#' .. t.base02)
c('hi EndOfBuffer    guifg=#' .. t.base00)
c('hi PmenuSel       guibg=#' .. t.base0C)
c('hi Pmenu          guibg=#' .. t.base01)

c('hi! StatusLineNC gui=underline guibg=NONE guifg=#' .. t.base02)

c('hi clear CursorLine')
c('hi CursorLineNR guibg=#' .. t.base01 .. ' guifg=#' .. t.base09)
