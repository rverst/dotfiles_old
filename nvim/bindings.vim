
" removes the highlighted search on <CR> until next interaction
nnoremap <CR> :noh<CR><CR>

" spellcheck, 'o' for ortography
nnoremap <leader>oo :setlocal spell! spelllang=en_us,de_de<CR>
nnoremap <leader>oe :setlocal spell! spelllang=en_us<CR>
nnoremap <leader>og :setlocal spell! spelllang=de_de<CR>

" copy, paste to clipboard
nnoremap <leader>y "+y
nnoremap <leader>p "+p
nnoremap <leader>Y "+yy
nnoremap <leader>P "+pp

" switch pane with <ctrl>-hjkl
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

" telescope
nnoremap <leader>ff <cmd>lua require('telescope.builtin').find_files()<CR>
nnoremap <leader>fv <cmd>lua require('telescope.builtin').find_files()<CR>
nnoremap <leader>fg <cmd>lua require('telescope.builtin').live_grep()<CR>
nnoremap <leader>fb <cmd>lua require('telescope.builtin').buffers()<CR>
nnoremap <leader>fh <cmd>lua require('telescope.builtin').help_tags()<CR>

nnoremap <C-o> <cmd>lua require('telescope.builtin').git_files()<CR>

" grep for word
nnoremap <leader>fw <cmd>lua require('telescope.builtin').grep_string { search = vim.fn.expand("<cword>") }<CR>

" find dotfiles
nnoremap <leader>dot <cmd>lua require('telescope.builtin').find_files { search_dirs = {"~/.config/dotfiles"} } <CR>
nnoremap <leader>vim <cmd>lua require('telescope.builtin').find_files { search_dirs = {"~/.config/nvim"} } <CR>