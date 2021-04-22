" auto source my init.vim after write to an *.vim file
augroup edit_vimrc
  autocmd!
  autocmd BufWritePost *.vim source $MYVIMRC
augroup END

" check if the file was changed outside of vim
augroup check_file
  autocmd!
  autocmd FocusGained,BufEnter * :checkt
augroup END

" switch to normal line numbering in insert mode
augroup switch_number
  autocmd!
  autocmd InsertEnter * set norelativenumber
  autocmd InsertLeave * set relativenumber
augroup END

" highlight the yanked section
augroup highlight_yank
  autocmd!
  autocmd TextYankPost * silent! lua vim.highlight.on_yank { higroup="myYank", timeout=250 }
augroup END

" highlight ToDo, BUG?, INFO: and FixMe!
augroup highlight_todo_fixme
  autocmd!
  autocmd WinEnter,VimEnter * :silent! call matchadd('myTodo', '\W\zs\([Tt][Oo][Dd][Oo]\|[Ii][Nn][Ff][Oo]\)[:!?]\?',  -1)
  autocmd WinEnter,VimEnter * :silent! call matchadd('myFixme','\W\zs\([Ff][Ii][Xx][Mm][Ee]\|[Bb][Uu][Gg]\)[:!?]\?',  -1)
augroup END

" delete trailing spaces on write
augroup delete_whitespace
  autocmd!
  autocmd BufWritePre * %s/\s\+$//e
augroup END


" clear command line when entering zen mode (Goyo)
function! s:goyo_enter()
 echon ''
endfunction
autocmd! User GoyoEnter nested call <SID>goyo_enter()
"autocmd! User GoyoLeave call <SID>goyo_leave()
