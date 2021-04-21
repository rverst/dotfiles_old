""" Nerd tree
map <leader>n :NERDTreeToggle<CR>
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

if has('nvim')
  let NERDTreeBookmarksFile = stdpath('data') . '/NERDTreeBookmarks'
else
  let NERDTreeBookmarksFile = '~/.vim' . '/NERDTreeBookmarks'
endif

