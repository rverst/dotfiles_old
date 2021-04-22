" ############################################
"
" my neovim config
"
" many ideas and snippets shamelessly borrowed from (in alphabetical order):
" - Camilo Orrego (https://github.com/baldore)
" - Luke Smith (https://github.com/LukeSmithxyz)
" - ThePrimeagen (https://github.com/awesome-streamers/awesome-streamerrc/blob/master/ThePrimeagen)
" - TJ DeVries (https://github.com/tjdevries)
"
" ############################################

if !has('nvim')
  ru! set.vim bindings.vim
  finish
endif

" set the leader key early
let mapleader=" "

" load config files
ru! plugins.vim set.vim bindings.vim colors.vim autocmd.vim lsp.vim

lua require'rverst'
