local utils = require('utils')
local c = vim.cmd
local g = vim.g

local base16 = require('base16')

base16.themes['smyck'] = {
 base00 = '232323', base01 = '3c3836', base02 = '504945', base03 = '8a8a8a',
 base04 = 'bdae92', base05 = 'd5c4a1', base06 = 'ebedb0', base07 = 'f7f7f7',
 base08 = 'e04223', base09 = 'd0b03c', base0A = 'ffe377', base0B = 'cdce23',
 base0C = '8eb33b', base0D = '4e90a7', base0E = 'e06990', base0F = 'c75646',
}
local theme = base16.themes['smyck']

-- themes['smyck'] = {
--  base00 = '#232323', base01 = '#3c3836', base02 = '#504945', base03 = '#8a8a8a',
--  base04 = '#bdae92', base05 = '#d5c4a1', base06 = '#ebedb0', base07 = '#f7f7f7',
--  base08 = '#e04223', base09 = '#d0b03c', base0A = '#ffe377', base0B = '#cdce23',
--  base0C = '#8eb33b', base0D = '#4e90a7', base0E = '#e06990', base0F = '#c75646',
-- }
-- themes['gruvbox-dark-hard'] = {
-- 	base00 = '#1d2021'; base01 = '#3c3836'; base02 = '#504945'; base03 = '#665c54';
-- 	base04 = '#bdae93'; base05 = '#d5c4a1'; base06 = '#ebdbb2'; base07 = '#fbf1c7';
-- 	base08 = '#fb4934'; base09 = '#fe8019'; base0A = '#fabd2f'; base0B = '#b8bb26';
-- 	base0C = '#8ec07c'; base0D = '#83a598'; base0E = '#d3869b'; base0F = '#d65d0e';
-- }
-- themes['gruvbox-dark-medium'] = {
-- 	base00 = '#282828'; base01 = '#3c3836'; base02 = '#504945'; base03 = '#665c54';
-- 	base04 = '#bdae93'; base05 = '#d5c4a1'; base06 = '#ebdbb2'; base07 = '#fbf1c7';
-- 	base08 = '#fb4934'; base09 = '#fe8019'; base0A = '#fabd2f'; base0B = '#b8bb26';
-- 	base0C = '#8ec07c'; base0D = '#83a598'; base0E = '#d3869b'; base0F = '#d65d0e';
-- }
-- themes['gruvbox-dark-pale'] = {
-- 	base00 = '#262626'; base01 = '#3a3a3a'; base02 = '#4e4e4e'; base03 = '#8a8a8a';
-- 	base04 = '#949494'; base05 = '#dab997'; base06 = '#d5c4a1'; base07 = '#ebdbb2';
-- 	base08 = '#d75f5f'; base09 = '#ff8700'; base0A = '#ffaf00'; base0B = '#afaf00';
-- 	base0C = '#85ad85'; base0D = '#83adad'; base0E = '#d485ad'; base0F = '#d65d0e';
-- }
-- themes['gruvbox-dark-soft'] = {
-- 	base00 = '#32302f'; base01 = '#3c3836'; base02 = '#504945'; base03 = '#665c54';
-- 	base04 = '#bdae93'; base05 = '#d5c4a1'; base06 = '#ebdbb2'; base07 = '#fbf1c7';
-- 	base08 = '#fb4934'; base09 = '#fe8019'; base0A = '#fabd2f'; base0B = '#b8bb26';
-- 	base0C = '#8ec07c'; base0D = '#83a598'; base0E = '#d3869b'; base0F = '#d65d0e';
-- }
-- themes['smyck_orig'] = {
--  base00 = '#000000', base01 = '#C75646', base02 = '#8EB33B', base03 = '#D0B03C',
--  base04 = '#4E90A7', base05 = '#C8A0D1', base06 = '#218693', base07 = '#B0B0B0',
--  base08 = '#5D5D5D', base09 = '#E06990', base0A = '#CDEE69', base0B = '#FFE377',
--  base0C = '#9CD9F0', base0D = '#FBB1F9', base0E = '#77DFD8', base0F = '#F7F7F7',
-- }


-- table for reused colors
g.colors = {
    theme = theme,
    border = '#' .. theme.base04,

    base00 = '#' .. theme.base00,
    base01 = '#' .. theme.base01,
    base02 = '#' .. theme.base02,
    base03 = '#' .. theme.base03,
    base04 = '#' .. theme.base04,
    base05 = '#' .. theme.base05,
    base06 = '#' .. theme.base06,
    base07 = '#' .. theme.base07,
    base08 = '#' .. theme.base08,
    base09 = '#' .. theme.base09,
    base0A = '#' .. theme.base0A,
    base0B = '#' .. theme.base0B,
    base0C = '#' .. theme.base0C,
    base0D = '#' .. theme.base0D,
    base0E = '#' .. theme.base0E,
    base0F = '#' .. theme.base0F,

    purple      = '#C8A0D1',
    cyan        = '#77DFD8',
    blue        = '#218693',
    yellow      = '#FABD2f',
    orange      = '#FE8019',
    light_blue  = '#9CD9F0',
    light_green = '#CDEE67',
}


c('hi GitSignsAdd guifg=' .. g.colors.base0C)
c('hi GitSignsChange guifg=' .. g.colors.base09)
c('hi GitSignsDelete guifg=' .. g.colors.base0F)
c('hi GitSignsChangeDelete guifg=' .. g.colors.base0E)
