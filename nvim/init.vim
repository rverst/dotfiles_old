if !has('nvim')
  ru! set.vim bindings.vim
  finish
endif

""" set the leader key early
let mapleader=" "

" load config files
ru! plugins.vim set.vim bindings.vim colors.vim lsp.vim

" auto source my init.vim after write to an *.vim file
augroup edit_vimrc
  autocmd!
  autocmd BufWritePost *.vim source $MYVIMRC
augroup END
