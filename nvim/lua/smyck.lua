-- Name:        Smyckbuddy
-- Desciption   lua coloscheme based on https://color.smyck.org

local Color, c, Group, g, s = require('colorbuddy').setup()

local exec = vim.api.nvim_command
local fn = vim.fn

local b = s.bold
local i = s.italic
local uc = s.undercurl
local ul = s.underline
local r = s.reverse
local no = s.NONE
local v = vim.g

exec('highlight clear')
if fn.exists('syntax_on') then
    exec('syntax reset')
end

v.colors_name = "smyck"
--[[
Color.new('bg',           '#252525')
Color.new('bg1',          '#404040')
Color.new('bg2',          '#5D5D5D')
Color.new('fg',           '#B0B0B0')
Color.new('fg1',          '#F7F7F7')
Color.new('fg2',          '#FFFFFF')
Color.new('red',          '#C75646')
Color.new('green',        '#8EB33B')
Color.new('yellow',       '#D0B03C')
Color.new('blue',         '#4E90A7')
Color.new('purple',       '#C8A0D1')
Color.new('cyan',         '#218693')
Color.new('brightRed',    '#E06990')
Color.new('brigthGreen',  '#CDEE69')
Color.new('brightYellow', '#FFE377')
Color.new('brightBlue',   '#9CD9F0')
Color.new('brightPurple', '#FBB1F9')
Color.new('brightCyan',   '#77DFD8')
--]]

Color.new('black',        '#000000')
Color.new('bg',           '#404040')
Color.new('bg1',          '#404040')
Color.new('disabled',     '#404040')
Color.new('bg2',          '#5D5D5D')
Color.new('fg',           '#B0B0B0')
Color.new('gray',         '#B0B0B0')
Color.new('white',        '#F7F7F7')
Color.new('fg1',          '#F7F7F7')
Color.new('fg2',          '#FFFFFF')
Color.new('fg3',          '#FFFFFF')
Color.new('red',          '#C75646')
Color.new('error',        '#C75646')
Color.new('green',        '#8EB33B')
Color.new('darkGreen',    '#627A29')
Color.new('orange',       '#D0B03C')
Color.new('blue',         '#4E90A7')
Color.new('purple',       '#C8A0D1')
Color.new('cyan',         '#218693')
Color.new('warning',      '#E06990')
Color.new('brigthGreen',  '#CDEE69')
Color.new('yellow',       '#FFE377')
Color.new('paleblue',     '#9CD9F0')
Color.new('pink',         '#FBB1F9')
Color.new('link',         '#77DFD8')

Color.new('invisibles',			'#80869E')
Color.new('text',			    '#87A838')
Color.new('comments',			'#474747')
Color.new('selection',			'#1F2233')
Color.new('line_numbers',		'#3B3F51')
Color.new('line_highlight',		'#D0B03C')
Color.new('accent',				'#77dfff')

---------------------
-- TERMINAL COLORS --
---------------------
vim.g.terminal_color_0  = '#000000'
vim.g.terminal_color_1  = '#C75646'
vim.g.terminal_color_2  = '#8EB33B'
vim.g.terminal_color_3  = '#D0B03C'
vim.g.terminal_color_4  = '#4E90A7'
vim.g.terminal_color_5  = '#C8A0D1'
vim.g.terminal_color_6  = '#218693'
vim.g.terminal_color_7  = '#B0B0B0'
vim.g.terminal_color_8  = '#5D5D5D'
vim.g.terminal_color_9  = '#E06990'
vim.g.terminal_color_10 = '#CDEE69'
vim.g.terminal_color_11 = '#FFE377'
vim.g.terminal_color_12 = '#9CD9F0'
vim.g.terminal_color_13 = '#FBB1F9'
vim.g.terminal_color_14 = '#77DFD8'
vim.g.terminal_color_15 = '#F7F7F7'

----------------------
-- Highlight groups --
----------------------

v.smyck_italic_comments = 1
v.smyck_italic_keywords = 1


if v.smyck_italic_comments == 1 or v.smyck_italics == 1 then
    Group.new('Comment', c.comments, c.none, i) -- italic comments
else
    Group.new('Comment', c.comments, c.none, no) -- normal comments
end

if v.smyck_italic_keywords == 1 then
    Group.new('Conditional', c.blue, c.none, i) -- italic if, then, else, endif, switch, etc.
    Group.new('Repeat', c.purple, c.none, i) -- italic for, do, while, etc.
    Group.new('Keyword', c.blue, c.none, i) -- italic any other keyword
else
    Group.new('Conditional', c.blue, c.none, no) -- normal if, then, else, endif, switch, etc.
    Group.new('Repeat', c.purple, c.none, no) -- normal for, do, while, etc.
    Group.new('Keyword', c.blue, c.none, no) -- normal any other keyword
end

if v.smyck_italic_functions == 1 then
    Group.new('Function', c.blue, c.none, i) -- italic funtion names
else
    Group.new('Function', c.blue, c.none, no) -- normal function names
end

Group.new('Constant', c.orange, c.none, no) -- any constant
Group.new('String', c.darkGreen, c.none, i) -- this is a string
Group.new('Character', c.orange, c.none, no) -- a character constant: 'c', '\n'
Group.new('Number', c.orange, c.none, no) -- a number constant: 5
Group.new('Boolean', c.pink, c.none, no) -- a boolean constant: TRUE, false
Group.new('Float', c.orange, c.none, no) -- a floating point constant: 2.3e10
Group.new('Identifier', c.gray, c.none, no) -- any variable name
Group.new('Statement', c.purple, c.none, no) -- any statement
Group.new('Label', c.yellow, c.none, no) -- case, default, etc.
Group.new('Operator', c.yellow, c.none, no) -- sizeof", "+", "*", etc.
Group.new('Exception', c.pink, c.none, no) -- try, catch, throw
Group.new('PreProc', c.purple, c.none, no) -- generic Preprocessor
Group.new('Include', c.red, c.none, no) -- preprocessor #include
Group.new('Define', c.pink, c.none, no) -- preprocessor #define
Group.new('Macro', c.cyan, c.none, no) -- same as Define
Group.new('PreCondit', c.purple, c.none, no) -- preprocessor #if, #else, #endif, etc.
Group.new('Type', c.purple, c.none, no) -- int, long, char, etc.
Group.new('StorageClass', c.cyan, c.none, no) -- static, register, volatile, etc.
Group.new('Structure', c.purple, c.none, no) -- struct, union, enum, etc.
Group.new('Typedef', c.cyan, c.none, no) -- A typedef
Group.new('Special', c.yellow, c.none, i) -- any special symbol
Group.new('SpecialChar', c.blue, c.none, no) -- special character in a constant
Group.new('Tag', c.orange, c.none, no) -- you can use CTRL-] on this
Group.new('Delimiter', c.cyan, c.none, no) -- character that needs attention like ; or .
Group.new('SpecialComment', c.gray, c.none, no) -- special things inside a comment
Group.new('Debug', c.red, c.none, no) -- debugging statements
Group.new('Underlined', c.link, c.none, ul) -- text that stands out, HTML links
Group.new('Ignore', c.disabled, c.none, no) -- left blank, hidden
Group.new('Error', c.error, c.none, b + ul) -- any erroneous construct
Group.new('Todo', c.yellow, c.none, b + i) -- anything that needs extra attention; mostly the keywords TODO FIXME and XXX



-- Highlight groups

if v.smyck_flat_ui == 1 then
    Group.new('VertSplit', c.bg, c.none, no) -- the column separating vertically split windows
else
    Group.new('VertSplit', c.selection, c.none, no) -- the column separating vertically split windows
end

Group.new('ColorColumn', c.fg3, c.bg, no) --  used for the columns set with 'colorcolumn'
Group.new('Conceal', c.blue, c.bg, no) -- placeholder characters substituted for concealed text (see 'conceallevel')
Group.new('Cursor', c.none, c.none, r) -- the character under the cursor
Group.new('CursorIM', c.text, c.none, r) -- like Cursor, but used when in IME mode
Group.new('Directory', c.blue, c.none, no) -- directory names (and other special names in listings)
Group.new('DiffAdd', c.green, c.none, r) -- diff mode: Added line
Group.new('DiffChange', c.orange, c.none, r) --  diff mode: Changed line
Group.new('DiffDelete', c.red, c.none, r) -- diff mode: Deleted line
Group.new('DiffText', c.yellow, c.none, r) -- diff mode: Changed text within a changed line
Group.new('EndOfBuffer', c.invisibles, c.none, no) -- filler lines (~) after the last line in the buffer
Group.new('ErrorMsg', c.error, c.bg, no) -- error messages on the command line
Group.new('Folded', c.purple, c.bg, i) -- line used for closed folds
Group.new('FoldColumn', c.blue, c.none, no) -- 'foldcolumn'
Group.new('SignColumn', c.fg1, c.none, no) -- column where signs are displayed
Group.new('IncSearch', c.selection, c.white, r) -- 'incsearch' highlighting; also used for the text replaced with ":s///c"
Group.new('LineNr', c.line_numbers, c.none, no) -- Line number for ":number" and ":#" commands, and when 'number' or 'relativenumber' option is set.
Group.new('CursorLineNr', c.accent, c.none, no) -- Like LineNr when 'cursorline' or 'relativenumber' is set for the cursor line.
Group.new('MatchParen', c.cyan, c.none, b) -- The character under the cursor or just before it, if it is a paired bracket, and its match.
Group.new('ModeMsg', c.accent, c.none, no) -- 'showmode' message (e.g., "-- INSERT --")
Group.new('MoreMsg', g.ModeMsg, g.ModeMsg, g.ModeMsg) -- more-prompt
Group.new('NonText', c.gray, c.none, no) -- '~' and '@' at the end of the window, characters from 'showbreak' and other characters that do not really exist in the text (e.g., ">" displayed when a double-wide character doesn't fit at the end of the line).
Group.new('Normal', c.fg1, c.bg, no) -- normal text
Group.new('Pmenu', c.fg2, c.selection, no) -- Popup menu: normal item.
Group.new('PmenuSel', c.accent, c.disabled, no) -- Popup menu: selected item.
Group.new('PmenuSbar', c.fg2, c.fg1, no) -- Popup menu: scrollbar.
Group.new('PmenuThumb', c.fg1, c.accent, no) -- Popup menu: Thumb of the scrollbar.
Group.new('Question', c.green, c.none, b) -- hit-enter prompt and yes/no questions
Group.new('qfLineNr', g.Type, g.Type, g.Type)
Group.new('Search', c.selection, c.white, r) -- Last search pattern highlighting (see 'hlsearch'). Also used for similar items that need to stand out.
Group.new('QuickFixLine', g.Search, g.Search, g.Search) -- Current quickfix item in the quickfix window.
Group.new('SpecialKey', c.purple, c.none, no) -- Meta and special keys listed with ":map", also for text used to show unprintable characters in the text, 'listchars'. Generally: text that is displayed differently from what it really is.
Group.new('SpellBad', c.red, c.none, i + uc) -- Word that is not recognized by the spellchecker. This will be combined with the highlighting used otherwise.
Group.new('SpellCap', c.blue, c.none, i + uc) -- Word that should start with a capital. This will be combined with the highlighting used otherwise.
Group.new('SpellLocal', c.cyan, c.none, i + uc) -- Word that is recognized by the spellchecker as one that is used in another region. This will be combined with the highlighting used otherwise.
Group.new('SpellRare', c.purple, c.none, i + uc) -- Word that is recognized by the spellchecker as one that is hardly ever used. spell This will be combined with the highlighting used otherwise.
Group.new('StatusLine', c.fg1, c.selection, no) -- status line of current window
Group.new('StatusLineNC', c.comments, c.selection, no) -- status lines of not-current windows Note: if this is equal to "StatusLine" Vim will use "^^^" in the status line of the current window.
Group.new('StatusLineTerm', g.StatusLine, g.StatusLine, g.StatusLine) -- status line of current :terminal window
Group.new('StatusLineTermNC', g.StatusLineNC, g.StatusLineNC, g.StatusLineNC) -- status line of non-current :terminal window
Group.new('TabLineFill', c.fg1, c.bg, no)
Group.new('TabLineSel', c.bg, c.accent, no)
Group.new('TabLine', g.TabLineFill, g.TabLineFill, g.TabLineFill)
Group.new('Title', c.green, c.none, b) -- titles for output from ":set all", ":autocmd" etc.
Group.new('Visual', c.accent, c.selection, no) -- Visual mode selection
Group.new('VisualNOS', g.Visual, g.Visual, g.Visual) -- Visual mode selection when vim is "Not Owning the Selection". Only X11 Gui's gui-x11 and xterm-clipboard supports this.
Group.new('WarningMsg', c.warning, c.none, no) --  warning messages
Group.new('WildMenu', c.orange, c.bg, b) --  current match in 'wildmenu' completion
Group.new('CursorColumn', c.none, c.selection, no) -- Current cursor column highlight
Group.new('CursorLine', c.none, c.selection, no) -- Current cursor line highlight
Group.new('ToolbarLine', c.fg1, c.disabled, no)
Group.new('ToolbarButton', c.fg1, c.bg, b)
Group.new('NormalMode', c.accent, c.none, r)
Group.new('InsertMode', c.green, c.none, r)
Group.new('ReplaceMode', c.red, c.none, r)
Group.new('VisualMode', c.purple, c.none, r)
Group.new('CommandMode', c.gray, c.none, r)
Group.new('Warnings', c.warning, c.none, r)


-- Language-specific highlighting

-- C
Group.new('cOperator', c.yellow, c.none, no)
Group.new('cStructure', c.pink, c.none, no)
-- CoffeeScript
Group.new('coffeeExtendedOp', c.fg1, c.none, no)
Group.new('coffeeSpecialOp', c.fg2, c.none, no)
Group.new('coffeeCurly', c.orange, c.none, no)
Group.new('coffeeParen', c.fg3, c.none, no)
Group.new('coffeeBracket', c.orange, c.none, no)
-- Clojure
Group.new('clojureKeyword', c.blue, c.none, no)
Group.new('clojureCond', c.orange, c.none, no)
Group.new('clojureSpecial', c.orange, c.none, no)
Group.new('clojureDefine', c.orange, c.none, no)
Group.new('clojureFunc', c.yellow, c.none, no)
Group.new('clojureRepeat', c.yellow, c.none, no)
Group.new('clojureCharacter', c.cyan, c.none, no)
Group.new('clojureStringEscape', c.cyan, c.none, no)
Group.new('clojureException', c.red, c.none, no)
Group.new('clojureRegexp', c.cyan, c.none, no)
Group.new('clojureRegexpEscape', c.cyan, c.none, no)
Group.new('clojureRegexpCharClass', c.fg3, c.none, b)
Group.new('clojureRegexpMod', c.fg3, c.none, b)
Group.new('clojureRegexpQuantifier',  c.fg3, c.none, b)
Group.new('clojureParen', c.fg3, c.none, no)
Group.new('clojureAnonArg', c.yellow, c.none, no)
Group.new('clojureVariable', c.blue, c.none, no)
Group.new('clojureMacro', c.orange, c.none, no)
Group.new('clojureMeta', c.yellow, c.none, no)
Group.new('clojureDeref', c.yellow, c.none, no)
Group.new('clojureQuote', c.yellow, c.none, no)
Group.new('clojureUnquote', c.yellow, c.none, no)
-- CSS
Group.new('cssBraces', c.blue, c.none, no)
Group.new('cssFunctionName', c.yellow, c.none, no)
Group.new('cssIdentifier', c.orange, c.none, no)
Group.new('cssClassName', c.green, c.none, no)
Group.new('cssColor', c.blue, c.none, no)
Group.new('cssSelectorOp', c.blue, c.none, no)
Group.new('cssSelectorOp2', c.blue, c.none, no)
Group.new('cssImportant', c.green, c.none, no)
Group.new('cssVendor', c.fg1, c.none, no)
Group.new('cssTextProp', c.cyan, c.none, no)
Group.new('cssAnimationProp', c.cyan, c.none, no)
Group.new('cssUIProp', c.yellow, c.none, no)
Group.new('cssTransformProp', c.cyan, c.none, no)
Group.new('cssTransitionProp', c.cyan, c.none, no)
Group.new('cssPrintProp', c.cyan, c.none, no)
Group.new('cssPositioningProp', c.yellow, c.none, no)
Group.new('cssBoxProp', c.cyan, c.none, no)
Group.new('cssFontDescriptorProp', c.cyan, c.none, no)
Group.new('cssFlexibleBoxProp', c.cyan, c.none, no)
Group.new('cssBorderOutlineProp', c.cyan, c.none, no)
Group.new('cssBackgroundProp', c.cyan, c.none, no)
Group.new('cssMarginProp', c.cyan, c.none, no)
Group.new('cssListProp', c.cyan, c.none, no)
Group.new('cssTableProp', c.cyan, c.none, no)
Group.new('cssFontProp', c.cyan, c.none, no)
Group.new('cssPaddingProp', c.cyan, c.none, no)
Group.new('cssDimensionProp', c.cyan, c.none, no)
Group.new('cssRenderProp', c.cyan, c.none, no)
Group.new('cssColorProp', c.cyan, c.none, no)
Group.new('cssGeneratedContentProp', c.cyan, c.none, no)
-- DTD
Group.new('dtdFunction', c.gray, c.none, no)
Group.new('dtdTagName', c.purple, c.none, no)
Group.new('dtdParamEntityPunct', c.gray, c.none, no)
Group.new('dtdParamEntityDPunct', c.gray, c.none, no)
-- Diff
Group.new('diffAdded', c.green, c.none, no)
Group.new('diffRemoved', c.red, c.none, no)
Group.new('diffChanged', c.cyan, c.none, no)
Group.new('diffFile', c.orange, c.none, no)
Group.new('diffNewFile', c.yellow, c.none, no)
Group.new('diffLine', c.blue, c.none, no)
-- Elixir
Group.new('elixirDocString', g.Comment, g.Comment, g.Comment)
Group.new('elixirStringDelimiter', c.green, c.none, no)
Group.new('elixirInterpolationDelimiter', c.cyan, c.none, no)
Group.new('elixirModuleDeclaration', c.yellow, c.none, no)
-- Go
Group.new('goDirective', c.cyan, c.none, no)
Group.new('goConstants', c.purple, c.none, no)
Group.new('goDeclaration', g.Keyword, g.Keyword, g.Keyword)
Group.new('goDeclType', c.blue, c.none, no)
Group.new('goBuiltins', c.orange, c.none, no)
-- Haskell
Group.new('haskellType', c.fg1, c.none, no)
Group.new('haskellIdentifier', c.fg1, c.none, no)
Group.new('haskellSeparator', c.fg1, c.none, no)
Group.new('haskellDelimiter', c.fg3, c.none, no)
Group.new('haskellOperators', c.blue, c.none, no)
Group.new('haskellBacktick', c.orange, c.none, no)
Group.new('haskellStatement', c.orange, c.none, no)
Group.new('haskellConditional', c.orange, c.none, no)
Group.new('haskellLet', c.cyan, c.none, no)
Group.new('haskellDefault', c.cyan, c.none, no)
Group.new('haskellWhere', c.cyan, c.none, no)
Group.new('haskellBottom', c.cyan, c.none, no)
Group.new('haskellBlockKeywords', c.cyan, c.none, no)
Group.new('haskellImportKeywords', c.cyan, c.none, no)
Group.new('haskellDeclKeyword', c.cyan, c.none, no)
Group.new('haskellDeriving', c.cyan, c.none, no)
Group.new('haskellAssocType', c.cyan, c.none, no)
Group.new('haskellNumber', c.purple, c.none, no)
Group.new('haskellPragma', c.purple, c.none, no)
Group.new('haskellString', c.green, c.none, no)
Group.new('haskellChar', c.green, c.none, no)
-- HTML (keep consistent with Markdown, below)
Group.new('htmlTag', c.blue, c.none, no)
Group.new('htmlEndTag', c.blue, c.none, no)
Group.new('htmlTagName', c.purple, c.none, no)
Group.new('htmlArg', c.cyan, c.none, no)
Group.new('htmlScriptTag', c.purple, c.none, no)
Group.new('htmlTagN', c.fg1, c.none, no)
Group.new('htmlSpecialTagName', c.cyan, c.none, b)
Group.new('htmlLink', c.link, c.none, ul)
Group.new('htmlSpecialChar', c.orange, c.none, no)
Group.new('htmlBold', c.fg1, c.none, b)
Group.new('htmlBoldUnderline', c.fg2, c.none, b + ul)
Group.new('htmlBoldItalic', c.fg1, c.none, b + i)
Group.new('htmlBoldUnderlineItalic', c.fg2, c.none, b + i + ul)
Group.new('htmlUnderline', c.fg1, c.none, ul)
Group.new('htmlUnderlineItalic', c.fg2, c.none, i + ul)
Group.new('htmlItalic', c.blue, c.none, i)
Group.new('htmlH1', c.blue, c.none, b)
Group.new('htmlH2', c.cyan, c.none, b)
Group.new('htmlH3', c.green, c.none, b)
Group.new('htmlH4', c.yellow, c.none, b)
Group.new('htmlH5', c.yellow, c.none, no)
Group.new('htmlH6', c.yellow, c.none, no)
-- Java
Group.new('javaAnnotation', c.blue, c.none, no)
Group.new('javaDocTags', c.cyan, c.none, no)
Group.new('javaCommentTitle', c.blue, c.none, no)
Group.new('javaParen', c.fg3, c.none, no)
Group.new('javaParen1', c.fg3, c.none, no)
Group.new('javaParen2', c.fg3, c.none, no)
Group.new('javaParen3', c.fg3, c.none, no)
Group.new('javaParen4', c.fg3, c.none, no)
Group.new('javaParen5', c.fg3, c.none, no)
Group.new('javaOperator', c.orange, c.none, no)
Group.new('javaVarArg', c.green, c.none, no)
-- JavaScript
Group.new('javaScriptBraces', c.fg1, c.none, no)
Group.new('javaScriptFunction', c.cyan, c.none, no)
Group.new('javaScriptIdentifier', c.red, c.none, no)
Group.new('javaScriptMember', c.blue, c.none, no)
Group.new('javaScriptNumber', c.purple, c.none, no)
Group.new('javaScriptNull', c.purple, c.none, no)
Group.new('javaScriptParens', c.fg3, c.none, no)
Group.new('javascriptImport', c.cyan, c.none, no)
Group.new('javascriptExport', c.cyan, c.none, no)
Group.new('javascriptClassKeyword', c.cyan, c.none, no)
Group.new('javascriptClassExtends', c.cyan, c.none, no)
Group.new('javascriptDefault', c.cyan, c.none, no)
Group.new('javascriptClassName', c.yellow, c.none, no)
Group.new('javascriptClassSuperName', c.yellow, c.none, no)
Group.new('javascriptGlobal', c.yellow, c.none, no)
Group.new('javascriptEndColons', c.fg1, c.none, no)
Group.new('javascriptFuncArg', c.fg1, c.none, no)
Group.new('javascriptGlobalMethod', c.fg1, c.none, no)
Group.new('javascriptNodeGlobal', c.fg1, c.none, no)
Group.new('javascriptBOMWindowProp', c.fg1, c.none, no)
Group.new('javascriptArrayMethod', c.fg1, c.none, no)
Group.new('javascriptArrayStaticMethod', c.fg1, c.none, no)
Group.new('javascriptCacheMethod', c.fg1, c.none, no)
Group.new('javascriptDateMethod', c.fg1, c.none, no)
Group.new('javascriptMathStaticMethod', c.fg1, c.none, no)
Group.new('javascriptURLUtilsProp', c.link, c.none, no)
Group.new('javascriptBOMNavigatorProp', c.fg1, c.none, no)
Group.new('javascriptDOMDocMethod', c.fg1, c.none, no)
Group.new('javascriptDOMDocProp', c.fg1, c.none, no)
Group.new('javascriptBOMLocationMethod', c.fg1, c.none, no)
Group.new('javascriptBOMWindowMethod', c.fg1, c.none, no)
Group.new('javascriptStringMethod', c.fg1, c.none, no)
Group.new('javascriptVariable', c.orange, c.none, no)
Group.new('javascriptIdentifier', c.orange, c.none, no)
Group.new('javascriptClassSuper', c.orange, c.none, no)
Group.new('javascriptFuncKeyword', c.cyan, c.none, no)
Group.new('javascriptAsyncFunc', c.cyan, c.none, no)
Group.new('javascriptClassStatic', c.orange, c.none, no)
Group.new('javascriptOperator', c.red, c.none, no)
Group.new('javascriptForOperator', c.red, c.none, no)
Group.new('javascriptYield', c.red, c.none, no)
Group.new('javascriptExceptions', c.red, c.none, no)
Group.new('javascriptMessage', c.red, c.none, no)
Group.new('javascriptTemplateSB', c.cyan, c.none, no)
Group.new('javascriptTemplateSubstitution', c.fg1, c.none, no)
Group.new('javascriptLabel', c.fg1, c.none, no)
Group.new('javascriptObjectLabel', c.fg1, c.none, no)
Group.new('javascriptPropertyName', c.fg1, c.none, no)
Group.new('javascriptLogicSymbols', c.fg1, c.none, no)
Group.new('javascriptArrowFunc', c.yellow, c.none, no)
Group.new('javascriptDocParamName', c.fg3, c.none, no)
Group.new('javascriptDocTags', c.fg3, c.none, no)
Group.new('javascriptDocNotation', c.fg3, c.none, no)
Group.new('javascriptDocParamType', c.fg3, c.none, no)
Group.new('javascriptDocNamedParamType', c.fg3, c.none, no)
Group.new('javascriptBrackets', c.fg1, c.none, no)
Group.new('javascriptDOMElemAttrs', c.fg1, c.none, no)
Group.new('javascriptDOMEventMethod', c.fg1, c.none, no)
Group.new('javascriptDOMNodeMethod', c.fg1, c.none, no)
Group.new('javascriptDOMStorageMethod', c.fg1, c.none, no)
Group.new('javascriptHeadersMethod', c.fg1, c.none, no)
Group.new('javascriptAsyncFuncKeyword', c.red, c.none, b)
Group.new('javascriptAwaitFuncKeyword', c.red, c.none, b)
Group.new('jsClassKeyword', g.Keyword, g.Keyword, g.Keyword)
Group.new('jsExtendsKeyword', g.Keyword, g.Keyword, g.Keyword)
Group.new('jsExportDefault', c.blue, c.none, b)
Group.new('jsTemplateBraces', c.cyan, c.none, no)
Group.new('jsGlobalNodeObjects', g.Keyword, g.Keyword, g.Keyword)
Group.new('jsGlobalObjects', g.Keyword, g.Keyword, g.Keyword)
Group.new('jsFunction', g.Function, g.Function, g.Function)
Group.new('jsFuncParens', c.orange, c.none, no)
Group.new('jsParens', c.red, c.none, no)
Group.new('jsNull', c.purple, c.none, no)
Group.new('jsUndefined', g.ErrorMsg, g.ErrorMsg, g.ErrorMsg)
Group.new('jsClassDefinition', c.yellow, c.none, no)
Group.new('jsObjectProp', g.Identifier, g.Identifier, g.Identifier)
Group.new('jsObjectKey', c.blue, c.none, no)
Group.new('jsFunctionKey', c.blue, c.none, no)
Group.new('jsBracket', c.red, c.none, no)
Group.new('jsObjectColon', c.red, c.none, no)
Group.new('jsFuncArgs', c.blue, c.none, no)
Group.new('jsFuncBraces', c.blue, c.none, no)
Group.new('jsVariableDef', c.fg1, c.none, no)
Group.new('jsObjectBraces', g.Special, g.Special, g.Special)
Group.new('jsObjectValue', c.green, c.none, no)
Group.new('jsClassBlock', c.blue, c.none, no)
Group.new('jsFutureKeys', c.orange, c.none, b)
Group.new('jsFuncArgs', c.blue, c.none, no)
Group.new('jsStorageClass', c.blue, c.none, no)
Group.new('jsxRegion', c.blue, c.none, no)
-- JSON
Group.new('jsonKeyword', c.green, c.none, no)
Group.new('jsonQuote', c.green, c.none, no)
Group.new('jsonBraces', c.fg1, c.none, no)
Group.new('jsonString', c.fg1, c.none, no)
-- Lua
Group.new('luaIn', c.red, c.none, no)
Group.new('luaFunction', c.cyan, c.none, no)
Group.new('luaTable', c.orange, c.none, no)
-- Markdown (keep consistent with HTML, above
Group.new('markdownItalic', c.fg3, c.none, i)
Group.new('markdownH1', c.blue, c.none, b)
Group.new('markdownH2', c.cyan, c.none, b)
Group.new('markdownH3', c.green, c.none, b)
Group.new('markdownH4', c.yellow, c.none, b)
Group.new('markdownH5', c.yellow, c.none, b)
Group.new('markdownH6', c.yellow, c.none, b)
Group.new('markdownCode', c.purple, c.none, no)
Group.new('mkdCode', g.markdownCode, g.markdownCode, g.markdownCode)
Group.new('markdownCodeBlock', c.cyan, c.none, no)
Group.new('markdownCodeDelimiter', c.orange, c.none, no)
Group.new('mkdCodeDelimiter', g.markdownCodeDelimiter, g.markdownCodeDelimiter, g.markdownCodeDelimiter)
Group.new('markdownBlockquote', c.gray, c.none, no)
Group.new('markdownListMarker', c.gray, c.none, no)
Group.new('markdownOrderedListMarker', c.gray, c.none, no)
Group.new('markdownRule', c.gray, c.none, no)
Group.new('markdownHeadingRule', c.gray, c.none, no)
Group.new('markdownUrlDelimiter', c.fg3, c.none, no)
Group.new('markdownLinkDelimiter', c.fg3, c.none, no)
Group.new('markdownLinkTextDelimiter', c.fg3, c.none, no)
Group.new('markdownHeadingDelimiter', c.orange, c.none, no)
Group.new('markdownUrl', c.link, c.none, no)
Group.new('markdownUrlTitleDelimiter', c.green, c.none, no)
Group.new('markdownLinkText', c.link, c.none, ul)
Group.new('markdownIdDeclaration', g.markdownLinkText, g.markdownLinkText, g.markdownLinkText)
-- MoonScript
Group.new('moonSpecialOp', c.fg3, c.none, no)
Group.new('moonExtendedOp', c.fg3, c.none, no)
Group.new('moonFunction', c.fg3, c.none, no)
Group.new('moonObject', c.yellow, c.none, no)
-- Objective-C
Group.new('objcTypeModifier', c.red, c.none, no)
Group.new('objcDirective', c.blue, c.none, no)
-- PureScript
Group.new('purescriptModuleKeyword', c.cyan, c.none, no)
Group.new('purescriptModuleName', c.red, c.none, b)
Group.new('purescriptWhere', c.cyan, c.none, no)
Group.new('purescriptDelimiter', c.fg2, c.none, no)
Group.new('purescriptType', g.Type, g.Type, g.Type)
Group.new('purescriptImportKeyword', g.Keyword, g.Keyword, g.Keyword)
Group.new('purescriptHidingKeyword', g.Keyword, g.Keyword, g.Keyword)
Group.new('purescriptAsKeyword', g.Keyword, g.Keyword, g.Keyword)
Group.new('purescriptStructure', g.Structure, g.Structure, g.Structure)
Group.new('purescriptOperator', g.Operator, g.Operator, g.Operator)
Group.new('purescriptTypeVar', g.Type, g.Type, g.Type)
Group.new('purescriptConstructor', g.Function, g.Function, g.Function)
Group.new('purescriptFunction', g.Function, g.Function, g.Function)
Group.new('purescriptConditional', g.Conditional, g.Conditional, g.Conditional)
Group.new('purescriptBacktick', c.orange, c.none, no)
-- Python
Group.new('pythonCoding', g.Comment, g.Comment, g.Comment)
-- Ruby
Group.new('rubyStringDelimiter', c.green, c.none, no)
Group.new('rubyInterpolationDelimiter', c.cyan, c.none, no)
-- Rust
Group.new('rustSelf', c.blue, c.none, b)
Group.new('rustPanic', c.red, c.none, b)
Group.new('rustAssert', c.blue, c.none, b)
-- Scala
Group.new('scalaNameDefinition', c.fg1, c.none, no)
Group.new('scalaCaseFollowing', c.fg1, c.none, no)
Group.new('scalaCapitalWord', c.fg1, c.none, no)
Group.new('scalaTypeExtension', c.fg1, c.none, no)
Group.new('scalaKeyword', c.red, c.none, b)
Group.new('scalaKeywordModifier', c.red, c.none, no)
Group.new('scalaSpecial', c.cyan, c.none, no)
Group.new('scalaOperator', c.fg1, c.none, no)
Group.new('scalaTypeDeclaration', c.yellow, c.none, no)
Group.new('scalaTypeTypePostDeclaration', c.yellow, c.none, no)
Group.new('scalaInstanceDeclaration', c.fg1, c.none, no)
Group.new('scalaInterpolation', c.cyan, c.none, no)
-- TypeScript
Group.new('typeScriptReserved', c.cyan, c.none, no)
Group.new('typeScriptLabel', g.Label, g.Label, g.Label)
Group.new('typeScriptFuncKeyword', g.Function, g.Function, g.Function)
Group.new('typeScriptIdentifier', g.Identifier, g.Identifier, g.Identifier)
Group.new('typeScriptBraces', c.red1, c.none, no)
Group.new('typeScriptEndColons', c.fg1, c.none, no)
Group.new('typeScriptDOMObjects', c.fg1, c.none, no)
Group.new('typeScriptAjaxMethods', g.Function, g.Function, g.Function)
Group.new('typeScriptLogicSymbols', c.fg1, c.none, no)
Group.new('typeScriptDocSeeTag', g.Comment, g.Comment, g.Comment)
Group.new('typeScriptDocParam', g.Comment, g.Comment, g.Comment)
Group.new('typeScriptDocTags', c.blue, c.none, no)
Group.new('typeScriptGlobalObjects', g.Keyword, g.Keyword, g.Keyword)
Group.new('typeScriptParens', c.blue1, c.none, no)
Group.new('typeScriptOpSymbols', g.Operator, g.Operator, g.Operator)
Group.new('typeScriptHtmlElemProperties', g.Special, g.Special, g.Special)
Group.new('typeScriptNull', c.purple, c.none, b)
Group.new('typeScriptInterpolationDelimiter', c.cyan, c.none, no)
-- XML
Group.new('xmlTag', c.blue, c.none, no)
Group.new('xmlEndTag', c.blue, c.none, no)
Group.new('xmlTagName', c.blue, c.none, no)
Group.new('xmlEqual', c.blue, c.none, no)
Group.new('docbkKeyword', c.cyan, c.none, b)
Group.new('xmlDocTypeDecl', c.gray, c.none, no)
Group.new('xmlDocTypeKeyword', c.purple, c.none, no)
Group.new('xmlCdataStart', c.gray, c.none, no)
Group.new('xmlCdataCdata', c.purple, c.none, no)
Group.new('xmlAttrib', c.cyan, c.none, no)
Group.new('xmlProcessingDelim', c.gray, c.none, no)
Group.new('xmlAttribPunct', c.gray, c.none, no)
Group.new('xmlEntity', c.orange, c.none, no)
Group.new('xmlEntityPunct', c.orange, c.none, no)
-- Vim
Group.new('vimCommentTitle', c.blue, c.none, b)
Group.new('vimNotation', c.orange, c.none, no)
Group.new('vimBracket', c.orange, c.none, no)
Group.new('vimMapModKey', c.orange, c.none, no)
Group.new('vimCommand', c.accent, c.none, b)
Group.new('vimLet', c.blue, c.none, no)
Group.new('vimNorm', c.blue, c.none, no)
Group.new('vimFuncSID', g.Function, g.Function, g.Function)
Group.new('vimFunction', g.Function, g.Function, g.Function)
Group.new('vimGroup', c.blue, c.none, no)
Group.new('vimHiGroup', g.Type, g.Type, g.Type)
Group.new('vimSetSep', c.fg3, c.none, no)
Group.new('vimSep', c.fg3, c.none, no)
Group.new('vimContinue', c.yellow, c.none, no)


-- Plugin highlight

-- Git Commit (tpope/vim-git)
Group.new('gitcommitSelectedFile', c.green, c.none, no)
Group.new('gitcommitDiscardedFile', c.red, c.none, no)
-- Gitgutter (airblade/vim-gitgutter)
Group.new('GitGutterAdd', c.green, c.none, b)
Group.new('GitGutterChange', c.orange, c.none, b)
Group.new('GitGutterDelete', c.red, c.none, b)
Group.new('GitGutterChangeDelete', c.red, c.none, b)
-- Git Messenger (rhysd/git-messenger.vim)
Group.new('gitmessengerPopupNormal', g.CursorLine, g.CursorLine, g.CursorLine) -- Normal color in popup window
Group.new('gitmessengerHeader', g.CursorLine, g.CursorLine, g.CursorLine) -- Header such as 'Commit:', 'Author:'
Group.new('gitmessengerHash', g.CursorLine, g.CursorLine, g.CursorLine) -- Commit hash at 'Commit:' header
Group.new('gitmessengerHistory', g.CursorLine, g.CursorLine, g.CursorLine) -- History number at 'History:' header
-- GitSigns (lewis6991/gitsigns.nvim)
Group.new('GitSignsAdd', c.green, c.none, no)
Group.new('GitSignsAddNr', c.green, c.none, no)
Group.new('GitSignsAddLn', c.green, c.none, no)
Group.new('GitSignsChange', c.yellow, c.none, no)
Group.new('GitSignsChangeNr', c.yellow, c.none, no)
Group.new('GitSignsChangeLn', c.yellow, c.none, no)
Group.new('GitSignsDelete', c.red, c.none, no)
Group.new('GitSignsDeleteNr', c.red, c.none, no)
Group.new('GitSignsDeleteLn', c.red, c.none, no)
-- NvimTree (kyazdani42/nvim-tree.lua)
Group.new('NvimTreeFolderName', c.text, c.none, no)
Group.new('NvimTreeFolderIcon', c.cyan, c.none, no)
Group.new('NvimTreeExecFile', c.green, c.none, no)
Group.new('NvimTreeImageFile', c.yellow, c.none, no)
Group.new('NvimTreeEmptyFolderName', c.text, c.none, no)
Group.new('NvimTreeIndentMarker', c.fg2, c.none, no)
--Group.new('NvimTreeMarkdownFile', c.blue, c.none, no)
--Group.new('NvimTreeSpecialFile', c.red, c.none, no)
--Group.new('NvimTreeRootFolder', c.blue, c.none, no)
--Group.new('NvimTreeLicenseIcon', c.blue, c.none, no)
--Group.new('NvimTreeYamlIcon', c.blue, c.none, no)
--Group.new('NvimTreeTomlIcon', c.blue, c.none, no)
--Group.new('NvimTreeGitignoreIcon', c.blue, c.none, no)
--Group.new('NvimTreeJsonIcon', c.blue, c.none, no)
--Group.new('NvimTreeLuaIcon', c.blue, c.none, no)
--Group.new('NvimTreePythonIcon', c.blue, c.none, no)
--Group.new('NvimTreeShellIcon', c.blue, c.none, no)
--Group.new('NvimTreeJavascriptIcon', c.blue, c.none, no)
--Group.new('NvimTreeCIcon', c.blue, c.none, no)
--Group.new('NvimTreeReactIcon', c.blue, c.none, no)
--Group.new('NvimTreeHtmlIcon', c.blue, c.none, no)
--Group.new('NvimTreeRustIcon', c.blue, c.none, no)
--Group.new('NvimTreeVimIcon', c.blue, c.none, no)
--Group.new('NvimTreeTypescriptIcon', c.blue, c.none, no)
--Group.new('NvimTreeGitDirty', c.blue, c.none, no)
--Group.new('NvimTreeGitStaged', c.blue, c.none, no)
--Group.new('NvimTreeGitMerge', c.blue, c.none, no)
--Group.new('NvimTreeGitRenamed', c.blue, c.none, no)
--Group.new('NvimTreeGitNew', c.blue, c.none, no)
--Group.new('NvimTreeSymlink', c.blue, c.none, no)
-- NerdTree (preservim/nerdtree)
Group.new('NERDTreeDir', c.blue, c.none, b)
Group.new('NERDTreeDirSlash', c.fg1, c.none, no)
Group.new('NERDTreeOpenable', c.blue, c.none, no)
Group.new('NERDTreeClosable', c.blue, c.none, no)
Group.new('NERDTreeFile', c.fg1, c.none, no)
Group.new('NERDTreeExecFile', c.green, c.none, no)
Group.new('NERDTreeUp', c.red, c.none, no)
Group.new('NERDTreeCWD', c.purple, c.none, no)
Group.new('NERDTreeHelp', c.fg1, c.none, no)
Group.new('NERDTreeToggleOn', c.green, c.none, no)
Group.new('NERDTreeToggleOff', c.red, c.none, no)
-- Netrw (vim builtin)
Group.new('netrwDir', c.blue, c.none, no)
Group.new('netrwClassify', c.blue, c.none, no)
Group.new('netrwLink', c.link, c.none, no)
Group.new('netrwSymLink', c.fg1, c.none, no)
Group.new('netrwExe', c.yellow, c.none, no)
Group.new('netrwComment', c.grey, c.none, no)
Group.new('netrwList', c.blue, c.none, no)
Group.new('netrwHelpCmd', c.cyan, c.none, no)
Group.new('netrwCmdSep', c.fg3, c.none, no)
Group.new('netrwVersion', c.green, c.none, no)
-- Which Key (liuchengxu/vim-which-key)
Group.new('WhichKey', g.Function, g.Function, g.Function)
Group.new('WhichKeySeperator', c.purple, c.none, no)
Group.new('WhichKeyGroup', g.Identifier, g.Identifier, g.Identifier)
Group.new('WhichKeyDesc', g.Operator, g.Operator, g.Operator)
-- Indent blankline (lukas-reineke/indent-blankline.nvim)
Group.new('IndentBlanklineChar', g.LineNr, c.none, no)
Group.new('IndentBlanklineContextChar', c.accent, c.none, no)
-- Telescope (nvim-telescope/telescope.nvim)
Group.new('TelescopeBorder', c.gray, c.none, no)
Group.new('TelescopeNormal', g.Normal, g.Normal, no)
Group.new('TelescopeMatching', c.green, c.none, no)
Group.new('TelescopePromptPrefix', c.accent, c.none, no)
-- LSP Saga
Group.new("DiagnosticError	", c.error, c.none)
Group.new("DiagnosticWarning	", c.warning, c.none)
Group.new("DiagnosticInformation	", c.blue, c.none)
Group.new("DiagnosticHint	", c.purple, c.none)
Group.new("LspSagaRenameBorder	", c.green, c.none)
Group.new("LspSagaRenamePromptPrefix	", c.green, c.none)
Group.new("LspSagaHoverBorder	", c.accent, c.none)
Group.new("DefinitionPreviewTitle	", c.yellow, c.none)
Group.new("LspSagaDefPreviewBorder	", c.yellow, c.none)
Group.new("LspFloatWinBorder	", c.gray, c.none)
Group.new("LspSagaCodeActionTitle	", c.purple, c.none)
Group.new("LspSagaCodeActionContent	", c.green, c.none)
Group.new("LspSagaCodeActionBorder	", c.purple, c.none)
Group.new("LspSagaSignatureHelpBorder", c.green, c.none)
--Group.new("LspSagaFinderSelection", c.none, c.none)
--Group.new("LspSagaBorderTitle	", c.none, c.none)
--Group.new("TargetWord	", c.none, c.none)
--Group.new("ReferencesCount	", c.none, c.none)
--Group.new("DefinitionCount	", c.none, c.none)
--Group.new("TargetFileName	", c.none, c.none)
--Group.new("DefinitionIcon	", c.none, c.none)
--Group.new("ReferencesIcon	", c.none, c.none)
--Group.new("ProviderTruncateLine	", c.none, c.none)
--Group.new("SagaShadow	", c.none, c.none)
--Group.new("LspSagaFinderSelection	", c.none, c.none)
--Group.new("DiagnosticTruncateLine	", c.none, c.none)
--Group.new("LspSagaShTruncateLine	", c.none, c.none)
--Group.new("LspSagaDocTruncateLine	", c.none, c.none)
--Group.new("LineDiagTuncateLine	", c.none, c.none)
--Group.new("LspSagaCodeActionTruncateLine	", c.none, c.none)
--Group.new("LspSagaAutoPreview	", c.none, c.none)
--Group.new("LspLinesDiagBorder", c.none, c.none)

-- NeoVim built in

-- +- Neovim Support -+
 Group.new("healthError",c.error, c.fg2)
 Group.new("healthSuccess",c.green, c.bg)
 Group.new("healthWarning",c.warning, c.bg)
 Group.new("TermCursorNC",c.fg1, c.bg)

-- LSP Groups (descriptions and ordering from `:h lsp-highlight`)
Group.new("LspDiagnosticsDefaultError", c.error, c.none) -- used for "Error" diagnostic virtual text
Group.new("LspDiagnosticsSignError", c.error, c.none) -- used for "Error" diagnostic signs in sign column
Group.new("LspDiagnosticsFloatingError", c.error, c.none) -- used for "Error" diagnostic messages in the diagnostics float
Group.new("LspDiagnosticsVirtualTextError", c.error, c.none) -- Virtual text "Error"
Group.new("LspDiagnosticsUnderlineError", c.none, c.none, uc, c.error) -- used to underline "Error" diagnostics.
Group.new("LspDiagnosticsDefaultWarning", c.warning, c.none) -- used for "Warning" diagnostic signs in sign column
Group.new("LspDiagnosticsSignWarning", c.warning, c.none) -- used for "Warning" diagnostic signs in sign column
Group.new("LspDiagnosticsFloatingWarning", c.warning, c.none) -- used for "Warning" diagnostic messages in the diagnostics float
Group.new("LspDiagnosticsVirtualTextWarning", c.warning, c.none) -- Virtual text "Warning"
Group.new("LspDiagnosticsUnderlineWarning", c.none, c.none, uc, c.warning) -- used to underline "Warning" diagnostics.
Group.new("LSPDiagnosticsDefaultInformation", c.paleblue, c.none) -- used for "Information" diagnostic virtual text
Group.new("LspDiagnosticsSignInformation", c.paleblue, c.none)  -- used for "Information" diagnostic signs in sign column
Group.new("LspDiagnosticsFloatingInformation", c.paleblue, c.none) -- used for "Information" diagnostic messages in the diagnostics float
Group.new("LspDiagnosticsVirtualTextInformation", c.paleblue, c.none) -- Virtual text "Information"
Group.new("LspDiagnosticsUnderlineInformation", c.none, c.none, uc, c.paleblue) -- used to underline "Information" diagnostics.
Group.new("LspDiagnosticsDefaultHint", c.purple, c.none)  -- used for "Hint" diagnostic virtual text
Group.new("LspDiagnosticsSignHint", c.purple, c.none) -- used for "Hint" diagnostic signs in sign column
Group.new("LspDiagnosticsFloatingHint", c.purple, c.none) -- used for "Hint" diagnostic messages in the diagnostics float
Group.new("LspDiagnosticsVirtualTextHint", c.purple, c.none) -- Virtual text "Hint"
Group.new("LspDiagnosticsUnderlineHint", c.none, c.none, uc, c.purple) -- used to underline "Hint" diagnostics.
Group.new("LspReferenceText", c.accent, c.disabled) -- used for highlighting "text" references
Group.new("LspReferenceRead", c.accent, c.disabled) -- used for highlighting "read" references
Group.new("LspReferenceWrite", c.accent, c.disabled) -- used for highlighting "write" references


-- Nvim Treesitter Groups (descriptions and ordering from `:h nvim-treesitter-highlights`)
Group.new("TSError", g.Error, c.none, b) -- For syntax/parser errors
Group.new("TSPunctDelimiter", g.Delimiter, c.none) -- For delimiters ie: `.
Group.new("TSPunctBracket", c.cyan, c.none) -- For brackets and parens
Group.new("TSPunctSpecial", c.red, c.none) -- For special punctutation that does not fall in the catagories before
Group.new("TSConstant", g.Constant, c.none) -- For constants
Group.new("TSConstBuiltin", c.pink, c.none) -- For constant that are built in the language: `nil` in Lua
Group.new("TSConstMacro", c.pink, c.none) -- For constants that are defined by macros: `NULL` in C
Group.new("TSString", g.String, c.none) -- For strings
Group.new("TSStringRegex",c.red , c.none) -- For regexes
Group.new("TSStringEscape",c.fg1, c.none) -- For escape characters within a string
Group.new("TSCharacter", g.Character, c.none) -- For characters
Group.new("TSNumber", g.Number, c.none) -- For integers
Group.new("TSBoolean", g.Boolean, c.none) -- For booleans
Group.new("TSFloat", g.Float, c.none) -- For floats
Group.new("TSFunction", g.Function, c.none, g.Function) -- For function (calls and definitions
Group.new("TSFuncBuiltin", g.Function, c.none, g.Function) -- For builtin functions: `table.insert` in Lua
Group.new("TSFuncMacro", g.Function, c.none, g.Function) -- For macro defined fuctions (calls and definitions): each `macro_rules` in Rust.
Group.new("TSParameter", c.red, c.none, s.none) -- For parameters of a function.
Group.new("TSParameterReference", c.yellow, c.none) -- For references to parameters of a function.
Group.new("TSMethod", g.Function, c.none, g.Function) -- For method calls and definitions.
Group.new("TSField", c.red , c.none  , s.none) -- For fields.
Group.new("TSProperty", c.gray, c.none, s.none) -- Same as `TSField`.
Group.new("TSConstructor", c.green, c.none)  -- For constructor calls and definitions: `{}` in Lua, and Java constructors
Group.new("TSConditional", g.Conditional, c.none, g.Conditional) -- For keywords related to conditionnals
Group.new("TSRepeat", g.Repeat, c.none, g.Repeat) -- For keywords related to loops
Group.new("TSLabel", g.Label, c.none) -- For labels: `label:` in C and `:label:` in Lua
Group.new("TSOperator", g.Operator, c.none) -- For any operator: `+`, but also `->` and `*` in C
Group.new("TSKeyword", g.Keyword, c.none) -- For keywords that don't fall in previous categories.
Group.new("TSKeywordFunction",c.paleblue, c.none, s.none) -- For keywords used to define a fuction.
Group.new("TSException", g.Exception, c.none) -- For exception related keywords.
Group.new("TSType", g.Type, c.none, s.none) -- For types.
Group.new("TSTypeBuiltin", g.Type, c.none, s.none) -- For builtin types (you guessed it, right ?).
Group.new("TSStructure", g.Structure, c.none) -- This is left as an exercise for the reader.
Group.new("TSInclude", c.cyan, c.none) -- For includes: `#include` in C, `use` or `extern crate` in Rust, or `require` in Lua.
-- Group.new("TSAnnotation", c.error, c.none) -- For C++/Dart attributes, annotations that can be attached to the code to denote some kind of meta information.
-- Group.new("TSText"             , c.Fg              , c.bg           , b) -- For strings considered text in a markup language.
-- Group.new("TSStrong"             , c.Fg              , c.bg           , b) -- For text to be represented with strong.
-- Group.new("TSEmphasis"            , c.blue_alt          , c.none  , b) -- For text to be represented with emphasis.
-- Group.new("TSUnderline"            , c.blue_alt          , c.none  , b) -- TSUnderline
-- Group.new("TSTitle"              , c.cyan_nuanced    , c.none) -- Text that is part of a title.
-- Group.new("TSLiteral"            , c.blue_alt          , c.none  , b) -- Literal text.
Group.new("TSURI", c.link, c.none, ul) -- Any URI like a link or email.
Group.new("TSVariable", c.paleblue, c.none, s.none) -- Variable names
Group.new("TSVariableBuiltin",c.gray, c.none, s.none) -- Variable names that are defined by the languages, like `this` or `self`.

