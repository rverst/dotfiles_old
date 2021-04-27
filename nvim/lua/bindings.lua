local utils = require('utils')

-- clear search highlight on <CR>
utils.map('n', '<CR>', '<cmd>noh<CR><CR>')

-- copy/pase from/to clipboard
utils.map('', '<leader>y', '"+y')
utils.map('', '<leader>p', '"+p')

-- spellcheck, 'o' for ortography
utils.map('n', '<leader>oo', '<cmd>setlocal spell! spelllang=en_us,de_de<CR>')
utils.map('n', '<leader>oe', '<cmd>setlocal spell! spelllang=en_us<CR>')
utils.map('n', '<leader>od', '<cmd>setlocal spell! spelllang=de_de<CR>')

-- switch windows with <ctrl> hjkl
utils.map('n', '<C-h>', '<C-w>h')
utils.map('n', '<C-j>', '<C-w>j')
utils.map('n', '<C-k>', '<C-w>k')
utils.map('n', '<C-l>', '<C-w>l')
utils.map('i', '<C-h>', '<C-w>h')
utils.map('i', '<C-j>', '<C-w>j')
utils.map('i', '<C-k>', '<C-w>k')
utils.map('i', '<C-l>', '<C-w>l')
utils.map('v', '<C-h>', '<C-w>h')
utils.map('v', '<C-j>', '<C-w>j')
utils.map('v', '<C-k>', '<C-w>k')
utils.map('v', '<C-l>', '<C-w>l')

-- new terminal
utils.map('n', '<leader>tn', [[<cmd> vnew term://zsh<CR>]])
utils.map('n', '<leader>tx', [[<cmd> new term://zsh<CR>]])

-- <esc> to leave insert mode in terminal
utils.map('t', '<ESC>', [[<C-\><C-n>]])

-- navigate completion menu
utils.map('i', '<Tab>', [[pumvisible() ? "<C-n>" : "<Tab>"]], {expr = true})
utils.map('i', '<S-Tab>', [[pumvisible() ? "<C-p>" : "<S-Tab>"]], {expr = true})
utils.map('i', '<Down>', [[pumvisible() ? "<C-n>" : "<Down>"]], {expr = true})
utils.map('i', '<Up>', [[pumvisible() ? "<C-p>" : "<Up>"]], {expr = true})

-- telescope
utils.map('n', '<leader>ff', '<cmd>lua require("telescope.builtin").find_files()<CR>')
utils.map('n', '<leader>fg', '<cmd>lua require("telescope.builtin").live_grep()<CR>')
utils.map('n', '<leader>fb', '<cmd>lua require("telescope.builtin").buffers()<CR>')
utils.map('n', '<leader>fh', '<cmd>lua require("telescope.builtin").help_tags()<CR>')

-- Goyo
utils.map('n', '<F4>', '<cmd>Goyo<CR>' )
