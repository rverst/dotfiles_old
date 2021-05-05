-- colors

local c = vim.g.colors

local bar_bg = c.bg.hex
local bar_fg = c.dark3.hex

require 'bufferline'.setup {
    options = {
        numbers = 'none',
        number_style = 'superscript',
        diagnostics = 'none',
        buffer_close_icon = '',
        modified_icon = '',
        close_icon = '',
        left_trunc_marker = '',
        right_trunc_marker = '',
        max_name_length = 14,
        max_prefix_length = 13,
        tab_size = 18,
        enforce_regular_tabs = true,
        view = 'multiwindow',
        show_buffer_close_icons = true,
        separator_style = 'none'
    },
    -- ToDo: finish styling
    highlights = {
            fill = {
                guifg = bar_fg,
                guibg = bar_bg,
            },
            background = {
                guifg = bar_fg,
                guibg = bar_bg
            },
            tab = {
                guifg = bar_fg,
                guibg = bar_bg
            },
            tab_selected = {
                guifg = '#550022',
                guibg = c.bg.hex,
            },
            tab_close = {
                guifg = bar_fg,
                guibg = c.bg.hex,
            },
            buffer_visible = {
                guifg = c.yellow.hex,
                guibg = bar_bg,
                gui = 'italic'
            },
            buffer_selected = {
                guifg = c.green.hex,
                guibg = c.bg.hex,
                gui = "bold"
            },
            diagnostic = {
                guifg = bar_fg,
                guibg = bar_bg,
            },
            diagnostic_visible = {
                guifg = bar_fg,
                guibg = bar_bg,
            },
            diagnostic_selected = {
                guifg = bar_fg,
                guibg = c.bg.hex,
                gui = "bold,italic"
            },
            info = {
                guifg = bar_fg,
                guisp = '#129900',
                guibg = bar_bg
            },
            info_visible = {
                guifg = bar_fg,
                guibg = bar_bg
            },
            info_selected = {
                guifg = bar_fg,
                guibg = c.bg.hex,
                gui = "bold,italic",
                guisp = '#048830'
            },
            info_diagnostic = {
                guifg = bar_fg,
                guisp = '#048830',
                guibg = bar_bg
            },
            info_diagnostic_visible = {
                guifg = bar_fg,
                guibg = bar_bg
            },
            info_diagnostic_selected = {
                guifg = bar_fg,
                guibg = c.bg.hex,
                gui = "bold,italic",
                guisp = '#048830'
            },
            warning = {
                guifg = bar_fg,
                guisp = '#048830',
                guibg = bar_bg
            },
            warning_visible = {
                guifg = bar_fg,
                guibg = bar_bg
            },
            warning_selected = {
                guifg = bar_fg,
                guibg = c.bg.hex,
                gui = "bold,italic",
                guisp = '#048830'
            },
            warning_diagnostic = {
                guifg = bar_fg,
                guisp = '#048830',
                guibg = bar_bg
            },
            warning_diagnostic_visible = {
                guifg = bar_fg,
                guibg = bar_bg
            },
            warning_diagnostic_selected = {
                guifg = bar_fg,
                guibg = c.bg.hex,
                gui = "bold,italic",
                guisp = c.red.hex
            },
            error = {
                guifg = bar_fg,
                guibg = bar_bg,
                guisp = '#048830'
            },
            error_visible = {
                guifg = bar_fg,
                guibg = bar_bg
            },
            error_selected = {
                guifg = bar_fg,
                guibg = c.bg.hex,
                gui = "bold,italic",
                guisp = '#048830'
            },
            error_diagnostic = {
                guifg = bar_fg,
                guibg = bar_bg,
                guisp = '#048830'
            },
            error_diagnostic_visible = {
                guifg = bar_fg,
                guibg = bar_bg
            },
            error_diagnostic_selected = {
                guifg = bar_fg,
                guibg = c.bg.hex,
                gui = "bold,italic",
                guisp = '#048830'
            },
            modified = {
                guifg = bar_fg,
                guibg = bar_bg
            },
            modified_visible = {
                guifg = bar_fg,
                guibg = bar_bg
            },
            modified_selected = {
                guifg = bar_fg,
                guibg = bar_bg
            },
            duplicate_selected = {
                guifg = bar_fg,
                gui = "italic",
                guibg = c.bg.hex,
            },
            duplicate_visible = {
                guifg = bar_fg,
                gui = "italic",
                guibg = bar_bg
            },
            duplicate = {
                guifg = bar_fg,
                gui = "italic",
                guibg = bar_bg
            },
            separator_selected = {
                guifg = bar_bg,
                guibg = bar_bg
            },
            separator_visible = {
                guifg = bar_bg,
                guibg = bar_bg
            },
            separator = {
                guifg = bar_bg,
                guibg = bar_bg
            },
            indicator_selected = {
                guifg = bar_bg,
                guibg = bar_bg
            },
            pick_selected = {
                guifg = bar_fg,
                guibg = c.bg.hex,
                gui = "bold,italic"
            },
            pick_visible = {
                guifg = bar_fg,
                guibg = c.bg.hex,
                gui = "bold,italic"
            },
            pick = {
                guifg = bar_fg,
                guibg = bar_bg,
                gui = "bold,italic"
            },
    }
}

local opt = {silent = true, noremap = true}
local map = require('utils').map
--command that adds new buffer and moves to it
map('n', '<S-t>', [[<Cmd>tabnew<CR>]], opt)

--removing a buffer
map('n', '<S-x>', [[<Cmd>bdelete<CR>]], opt)

-- tabnew and tabprev
map('n', '<S-l>', [[<Cmd>BufferLineCycleNext<CR>]], opt)
map('n', '<S-k>', [[<Cmd>BufferLineCyclePrev<CR>]], opt)
