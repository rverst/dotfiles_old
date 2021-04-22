if has('termguicolors')
  set termguicolors
endif

set background=dark


" values: 'hard', 'medium'(default), 'soft'
let g:gruvbox_material_background = 'medium'
colorscheme gruvbox-material

" highlight colors, used in autocmd's, must be loaded after 'colorscheme'
highlight myTodo  cterm=underline,italic ctermfg=214 gui=underline,bold,italic guifg=#d8a657
highlight myFixme cterm=underline,italic ctermfg=167 gui=underline,bold,italic guifg=#ea6962
highlight myYank  cterm=underline,bold ctermfg=175 ctermbg=236 gui=underline,bold guifg=#d3869b guibg=#32302f
