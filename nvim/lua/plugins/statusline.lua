local gl = require('galaxyline')
local gc = vim.g.colors

local colors = {
    bg = gc.base02,
    yellow = gc.base0A,
    dark_yellow = gc.base09,
    cyan = gc.cyan,
    green = gc.base0C,
    light_green = gc.light_green,
    string_orange = gc.base05,
    orange = gc.orange,
    purple = gc.purple,
    magenta = gc.base0E,
    grey = gc.base03,
    blue = gc.blue,
    vivid_blue = gc.base0D,
    light_blue = gc.light_blue,
    red = gc.base0F,
    error_red = gc.base08,
    info_yellow = gc.base0A,
}

local modes = {
	['c']  = {'COMMAND-LINE',      colors.red},
	['ce'] = {'NORMAL EX',         colors.red},
	['cv'] = {'EX',                colors.error_red},
	['i']  = {'INSERT',            colors.green},
	['ic'] = {'INS-COMPLETE',      colors.light_green},
	['n']  = {'NORMAL',            colors.purple},
	['no'] = {'OPERATOR-PENDING',  colors.purple},
	['r']  = {'HIT-ENTER',         colors.cyan},
	['r?'] = {':CONFIRM',          colors.cyan},
	['rm'] = {'--MORE',            colors.cyan},
	['R']  = {'REPLACE',           colors.orange},
	['Rv'] = {'VIRTUAL',           colors.orange},
	['s']  = {'SELECT',            colors.magenta},
	['S']  = {'SELECT',            colors.magenta},
	['']   = {'SELECT',            colors.magenta},
	['t']  = {'TERMINAL',          colors.orange},
	['v']  = {'VISUAL',            colors.blue},
	['V']  = {'VISUAL LINE',       colors.blue},
	['']   = {'VISUAL BLOCK',      colors.blue},
	['!']  = {'SHELL',             colors.yellow},

	-- libmodal
	['TABS']    = colors.blue,
	['BUFFERS'] = colors.red,
	['TABLES']  = colors.orange,
}


local condition = require('galaxyline.condition')
local gls = gl.section
gl.short_line_list = {'NvimTree', 'vista', 'dbui', 'packer'}

gls.left[1] = {
    ViMode = {
        provider = function()

            local c = nil
            local t = nil

            if vim.g.libmodalActiveModeName then
                t = vim.g.libmodalActiveModeName
                c = modes[t]
            else
                local mm = vim.fn.mode(true)
                local mm2 = vim.fn.mode(false)

                print(mm)
                print(mm2)
                local cm = modes[vim.fn.mode(true)] or modes[vim.fn.mode(false)]

                t = cm[1]
                c = cm[2]
            end
            vim.api.nvim_command('hi GalaxyViMode guifg=' .. colors.grey .. ' guibg=' .. c)
            return ' ' .. t .. ' '
        end,
        highlight = {colors.red, colors.bg}
    }
}

gls.left[2] = {
    GitIcon = {
        provider = function()
            return ' '
        end,
        condition = condition.check_git_workspace,
        separator = ' ',
        separator_highlight = {'NONE', colors.bg},
        highlight = {colors.orange, colors.bg}
    }
}

gls.left[3] = {
    GitBranch = {
        provider = 'GitBranch',
        condition = condition.check_git_workspace,
        separator = ' ',
        separator_highlight = {'NONE', colors.bg},
        highlight = {colors.grey, colors.bg}
    }
}

gls.left[4] = {
    DiffAdd = {
        provider = 'DiffAdd',
        condition = condition.hide_in_width,
        icon = '  ',
        highlight = {colors.green, colors.bg}
    }
}
gls.left[5] = {
    DiffModified = {
        provider = 'DiffModified',
        condition = condition.hide_in_width,
        icon = ' 柳',
        highlight = {colors.blue, colors.bg}
    }
}
gls.left[6] = {
    DiffRemove = {
        provider = 'DiffRemove',
        condition = condition.hide_in_width,
        icon = '  ',
        highlight = {colors.red, colors.bg}
    }
}

gls.right[1] = {
    DiagnosticError = {
        provider = 'DiagnosticError',
        icon = '  ',
        highlight = {colors.error_red, colors.bg}
    }
}
gls.right[2] = {
    DiagnosticWarn = {
        provider = 'DiagnosticWarn',
        icon = '  ',
        highlight = {colors.orange, colors.bg}
    }
}

gls.right[3] = {
    DiagnosticHint = {
        provider = 'DiagnosticHint',
        icon = '  ',
        highlight = {
            colors.vivid_blue, colors.bg}
    }
}

gls.right[4] = {
    DiagnosticInfo = {
        provider = 'DiagnosticInfo',
        icon = '  ',
        highlight = {colors.info_yellow, colors.bg}
    }
}

gls.right[5] = {
    ShowLspClient = {
        provider = 'GetLspClient',
        condition = function()
            local tbl = {['dashboard'] = true, [' '] = true}
            if tbl[vim.bo.filetype] then return false end
            return true
        end,
        icon = ' ',
        highlight = {colors.grey, colors.bg}
    }
}

gls.right[6] = {
    LineInfo = {
        provider = 'LineColumn',
        separator = ' ',
        separator_highlight = {'NONE', colors.bg},
        highlight = {colors.grey, colors.bg}
    }
}

gls.right[7] = {
    PerCent = {
        provider = 'LinePercent',
        separator = ' ',
        separator_highlight = {'NONE', colors.bg},
        highlight = {colors.grey, colors.bg}
    }
}

gls.right[8] = {
    Tabstop = {
        provider = function()
            return "Spaces: " .. vim.api.nvim_buf_get_option(0, "shiftwidth") .. " "
        end,
        condition = condition.hide_in_width,
        separator = ' ',
        separator_highlight = {'NONE', colors.bg},
        highlight = {colors.red, colors.bg}
    }
}

gls.right[9] = {
    BufferType = {
        provider = 'FileTypeName',
        condition = condition.hide_in_width,
        separator = ' ',
        separator_highlight = {'NONE', colors.bg},
        highlight = {colors.dark_yellow, colors.bg}
    }
}

gls.right[10] = {
    FileEncode = {
        provider = 'FileEncode',
        condition = condition.hide_in_width,
        separator = ' ',
        separator_highlight = {'NONE', colors.bg},
        highlight = {colors.grey, colors.bg}
    }
}

gls.right[11] = {
    Space = {
        provider = function()
            return ' '
        end,
        separator = ' ',
        separator_highlight = {'NONE', colors.bg},
        highlight = {colors.orange, colors.bg}
    }
}

gls.short_line_left[1] = {
    BufferType = {
        provider = 'FileTypeName',
        separator = ' ',
        separator_highlight = {'NONE', colors.bg},
        highlight = {colors.grey, colors.bg}
    }
}

gls.short_line_left[2] = {
    SFileName = {
        provider = 'SFileName',
        condition = condition.buffer_not_empty,
        highlight = {colors.grey, colors.bg}
    }
}

gls.short_line_right[1] = {
    BufferIcon = {
        provider = 'BufferIcon',
        highlight = {colors.grey, colors.bg}
    }
}

