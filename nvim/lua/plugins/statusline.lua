local gl = require('galaxyline')
local gls = gl.section
local gc = vim.g.colors

local colors = {
    bg = gc.dark3.hex,
    bgm = gc.dark2.hex,
    black = gc.black.hex,
    yellow = gc.yellow_light.hex,
    dark_yellow = gc.yellow.hex,
    cyan = gc.cyan.hex,
    green = gc.green.hex,
    light_green = gc.green_light.hex,
    string_orange = gc.yellow.hex,
    orange = gc.yellow.hex,
    purple = gc.magenta_light.hex,
    magenta = gc.magenta.hex,
    grey = gc.gray.hex,
    blue = gc.blue.hex,
    vivid_blue = gc.blue_light.hex,
    light_blue = gc.cyan.hex,
    red = gc.red.hex,
    error_red = gc.red_error.hex,
    info_yellow = gc.yellow.hex,
}

local modes = {
	['c']  = {'CMD',               colors.string_orange},
	['ce'] = {'NORMAL EX',         colors.red},
	['cv'] = {'EX',                colors.error_red},
	['i']  = {'INSERT',            colors.green},
	['ic'] = {'INS-COMPLETE',      colors.light_green},
	['n']  = {'NORMAL',            colors.vivid_blue},
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

local separators =
{
	left = ' ',
	right = ' '
}

local function all(...)
    local args = {...}
    return function()
        for _, fn in ipairs(args) do
            if not fn() then return false end
        end
        return true
    end
end

local function bufferNotEmpty()
	return vim.fn.empty(vim.fn.expand('%:t')) ~= 1
end

local function checkwidth()
	return (vim.fn.winwidth(0) / 2) > 40
end

local function findGitRoot()
	return require('galaxyline/provider_vcs').get_git_dir(vim.fn.expand('%:p:h'))
end

local function getFileIconColor()
	return require('galaxyline/provider_fileinfo').get_file_icon_color()
end

local function lineColumn()
    return function() return vim.fn.line('.') .. ':' .. vim.fn.col('.') end
end

local negated = function(f)
    return function() return not f() end
end

local printer = function(s)
    return function() return s end
end

local space = printer(' ')

gl.short_line_list =
{
	'dbui',
	'diff',
	'peekaboo',
	'undotree',
	'vista',
	'vista_markdown'
}

gls.left =
{
	{ViMode = {
		provider = function() -- auto change color according the vim mode
			local mode_color = nil
			local mode_name = nil

			if vim.g.libmodalActiveModeName then
				mode_name = vim.g.libmodalActiveModeName
				mode_color = modes[mode_name]
			else
				local current_mode = modes[vim.fn.mode(true)] or modes[vim.fn.mode(false)]

				mode_name = current_mode[1]
				mode_color = current_mode[2]
			end

--			require('highlite').highlight('GalaxyViMode', {fg=mode_color, style='bold'})
            vim.cmd('hi GalaxyViMode gui=bold guifg=' .. mode_color)
			return mode_name..' '
		end,
		icon = '▊ ',
		highlight = {colors.bg, colors.bg},
		separator = separators.right,
		separator_highlight = {colors.bg, getFileIconColor}
	}},

	{FileIcon = {
		provider  = {space, 'FileIcon'},
		highlight = {colors.bg, getFileIconColor},
		separator = separators.left,
		separator_highlight = {colors.bg, getFileIconColor}
	}},

	{FileName = {
		provider  = {space, 'FileName', 'FileSize'},
		condition = bufferNotEmpty,
		highlight = {colors.text, colors.bg, 'bold'}
	}},


	{LeftEnd = {
		provider = printer(separators.left),
		condition = negated(findGitRoot),
		highlight = {colors.bgm, findGitRoot() and colors.green_dark or colors.bg}
	}},

	{DiagnosticError = {
		provider = 'DiagnosticError',
		icon = 'Ⓧ ',
		highlight = {colors.red, colors.bgm},
		separator = ' ',
		separator_highlight = {colors.bgm, colors.bgm},
	}},

	{DiagnosticWarn = {
		provider = 'DiagnosticWarn',
		icon = '⚠️ ',
		highlight = {colors.yellow, colors.bgm},
		separator = ' ',
		separator_highlight = {colors.bgm, colors.bgm},
	}},

	{DiagnosticHint = {
		provider = 'DiagnosticHint',
		icon = '💡',
		highlight = {colors.magenta, colors.bgm},
		separator = ' ',
		separator_highlight = {colors.bgm, colors.bgm},
	}},

	{DiagnosticInfo = {
		provider = 'DiagnosticInfo',
		icon = 'ⓘ ',
		highlight = {colors.white, colors.bgm},
		separator = ' ',
		separator_highlight = {colors.bgm, colors.bgm},
	}},
} -- gls.left

gls.right =
{
	{Vista = {
		provider = 'VistaPlugin',
		condition = function() return vim.fn.exists(':Vista') ~= 0 end,
		highlight = {colors.text, colors.bgm},
	}},

	{RightBegin = {
		provider = space,
		condition = checkwidth,
		highlight = {colors.bgm, colors.bg},
		separator = separators.right,
		separator_highlight = {colors.bgm, colors.bg}
	}},

	{DiffAdd = {
		provider = 'DiffAdd',
		condition = all(checkwidth, findGitRoot),
		icon = '+',
		highlight = {colors.green_light, colors.bg},
	}},

	{DiffModified = {
		provider = 'DiffModified',
		condition = all(checkwidth, findGitRoot),
		icon = '~',
		highlight = {colors.orange_light, colors.bg},
	}},

	{DiffRemove = {
		provider = 'DiffRemove',
		condition = all(checkwidth, findGitRoot),
		icon = '-',
		highlight = {colors.red_light, colors.bg},
	}},

	{GitBranch = {
		provider = { printer('  '), 'GitBranch', space},
		condition = findGitRoot,
		highlight = {colors.orange, colors.green_dark, 'bold'},
		separator = separators.left,
		separator_highlight = {colors.bgm, colors.green_dark},
	}},

	{FileFormatSep = {
		provider = printer(separators.left),
		highlight = {getFileIconColor, colors.bg},
	}},

	{FileFormat = {
		provider = {space, 'FileFormat', space},
		highlight = {colors.text, colors.bg},
	}},

	{FileEncode = {
		provider = {space, 'FileEncode', space},
		highlight = {colors.black, getFileIconColor, 'bold'},
		separator = '',
		separator_highlight = {getFileIconColor, colors.bg},
	}},

	{FileSep = {
		provider = printer(separators.right),
		highlight = {getFileIconColor, colors.bg},
	}},

	{LineColumn = {
        provider = lineColumn(),
		condition = bufferNotEmpty,
		highlight = {colors.text, colors.bg},
		separator = ' ',
		separator_highlight = {colors.bg, colors.bg},
	}},

	{PerCentSeparator = {
		provider = printer(separators.left),
		highlight = {colors.magenta_dark, colors.bg},
		separator = ' ',
		separator_highlight = {colors.bg, colors.bg},
	}},

	{PerCent = {
		provider = {space, 'LinePercent'},
		highlight = {colors.white, colors.magenta_dark},
	}},

	{ScrollBar = {
		provider = 'ScrollBar',
		highlight = {colors.gray, colors.magenta_dark},
	}}
} -- gls.right

gls.short_line_left =
{
	{BufferType = {
		provider = {space, space, 'FileTypeName', space},
		highlight = {colors.black, colors.purple, 'bold'},
		separator = separators.right,
		separator_highlight = {colors.purple, colors.bgm}
	}}
}

gls.short_line_right =
{
	{BufferIcon = {
		provider = 'BufferIcon',
		highlight = {colors.black, colors.purple, 'bold'},
		separator = separators.left,
		separator_highlight = {colors.purple, colors.bgm}
	}}
}

