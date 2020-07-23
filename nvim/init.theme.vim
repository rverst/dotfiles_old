set background=dark
let g:gruvbox_invert_signs=0
let g:gitgutter_override_sign_column_highlight=1

colorscheme gruvbox
nnoremap <silent> [oh :call gruvbox#hls_show()<CR>
nnoremap <silent> ]oh :call gruvbox#hls_hide()<CR>
nnoremap <silent> coh :call gruvbox#hls_toggle()<CR>

nnoremap * :let @/ = ""<CR>:call gruvbox#hls_show()<CR>*
nnoremap / :let @/ = ""<CR>:call gruvbox#hls_show()<CR>/
nnoremap ? :let @/ = ""<CR>:call gruvbox#hls_show()<CR>?

hi clear SignColumn
hi GitGutterAdd guifg=#8EB33B ctermfg=2
hi GitGutterChange guifg=#d0bb03 ctermfg=3
hi GitGutterDelete guifg=#c75643 ctermfg=1
hi GitGutterChangeDelete guifg=#9cd9f0 ctermfg=12

hi clear SpellBad
hi clear SpellCap
hi clear SpellLocal
hi clear SpellRare
hi SpellBad cterm=underline guifg=#e09690 ctermfg=9
hi SpellCap cterm=underline guifg=#c8a0d1 ctermfg=5
hi SpellLocal cterm=underline guifg=#ffe377 ctermfg=11
hi SpellRare cterm=underline guifg=#77dfd8 ctermfg=14

hi HighlightedyankRegion ctermbg=15 guibg=#fefefe
