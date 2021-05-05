local c = vim.g.colors
local fn = require('utils.fn')
local base16 = require('base16')

base16(vim.g.mytheme, true)


--fn.highlight(Group, fg, bg, attr, sp)

fn.highlight('Normal', nil, 'NONE', nil, nil)
fn.highlight('LineNr', nil, 'NONE', nil, nil)
fn.highlight('SignColumn', nil, 'NONE', nil, nil)
fn.highlight('VertSplit', c.border, 'NONE', nil, nil)


fn.highlight('GitSignsAdd', c.green, nil, 'NONE', nil)
fn.highlight('GitSignsChange', c.yellow, nil, 'NONE', nil)
fn.highlight('GitSignsDelete', c.red, nil, 'NONE', nil)
fn.highlight('GitSignsChangeDelete',c.cyan, nil, 'NONE', nil)

--c('hi Normal guibg=NONE ctermbg=NONE')
--c('hi LineNr ctermbg=none guibg=none')

--c('hi SignColumn ctermbg=none guibg=none')

--c('hi SignColumn     guibg=NONE')
--c('hi VertSplit      guibg=NONE  guifg=#' .. t.base02)
--c('hi EndOfBuffer    guifg=#' .. t.base00)
--('hi PmenuSel       guibg=#' .. t.base0C)
--c('hi Pmenu          guibg=#' .. t.base01)

--c('hi! StatusLineNC gui=underline guibg=NONE guifg=#' .. t.base02)

--c('hi clear CursorLine')
--c('hi CursorLineNR guibg=#' .. t.base01 .. ' guifg=#' .. t.base09)
--
--
-- c('hi GitSignsAdd guifg=' .. g.colors.base0C)
-- c('hi GitSignsChange guifg=' .. g.colors.base09)
-- c('hi GitSignsDelete guifg=' .. g.colors.base0F)
-- c('hi GitSignsChangeDelete guifg=' .. g.colors.base0E)
