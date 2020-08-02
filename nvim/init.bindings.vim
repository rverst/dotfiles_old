""" spell 'o' for ortography
map <leader>oo :setlocal spell! spelllang=en_us,de_de<CR>
map <leader>oe :setlocal spell! spelllang=en_us<CR>
map <leader>og :setlocal spell! spelllang=de_de<CR>

""" switch pane with <ctrl>=j/k/h/l
map <C-j> <C-w>j
map <C-k> <C-w>k
map <C-h> <C-w>h
map <C-l> <C-w>l

""" some handy shortcuts
map <C-x><C-x> :write<CR>:source $XDG_CONFIG_HOME/nvim/init.vim<CR>

""" copy, pase to clipboard
map <leader>y "+y
map <leader>p "+p
map <leader>Y "+yy
map <leader>P "+pp

