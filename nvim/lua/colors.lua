local c = vim.cmd
local g = vim.g

local base16 = require('base16')


local smyck = {
    '000000', 'C75646', '8EB33B', 'D0B03C',
    '4E90A7', 'C8A0D1', '218693', 'B0B0B0',
    '5D5D5D', 'E06990', 'CDEE69', 'FFE377',
    '9CD9F0', 'FBB1F9', '77DFD8', 'F7F7F7',
    }

local theme = base16.theme_from_array(smyck)

base16(base16.themes['gruvbox-dark-medium'], true)

c('hi Normal guibg=NONE ctermbg=NONE')
c('hi LineNr ctermbg=none guibg=none')

c('hi SignColumn ctermbg=none guibg=none')

c('hi SignColumn     guibg=NONE                  ')
c('hi VertSplit      guibg=NONE     guifg=#2a2e36')
c('hi EndOfBuffer                   guifg=#1e222a')
c('hi PmenuSel       guibg=#98c379               ')
c('hi Pmenu          guibg=#282c34               ')

c('hi! StatusLineNC gui=underline guibg=NONE guifg=#606060')

c('hi clear CursorLine')
c('hi clear cursorlinenr guibg=#333333 guifg=#fbb2bf')

---------------------
-- TERMINAL COLORS --
---------------------
g.terminal_color_0  = '#000000'
g.terminal_color_1  = '#C75646'
g.terminal_color_2  = '#8EB33B'
g.terminal_color_3  = '#D0B03C'
g.terminal_color_4  = '#4E90A7'
g.terminal_color_5  = '#C8A0D1'
g.terminal_color_6  = '#218693'
g.terminal_color_7  = '#B0B0B0'
g.terminal_color_8  = '#5D5D5D'
g.terminal_color_9  = '#E06990'
g.terminal_color_10 = '#CDEE69'
g.terminal_color_11 = '#FFE377'
g.terminal_color_12 = '#9CD9F0'
g.terminal_color_13 = '#FBB1F9'
g.terminal_color_14 = '#77DFD8'
g.terminal_color_15 = '#F7F7F7'
