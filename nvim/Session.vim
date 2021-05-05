let SessionLoad = 1
let s:so_save = &g:so | let s:siso_save = &g:siso | setg so=0 siso=0 | setl so=-1 siso=-1
let v:this_session=expand("<sfile>:p")
silent only
silent tabonly
cd ~/Dev/dotfiles/nvim
if expand('%') == '' && !&modified && line('$') <= 1 && getline(1) == ''
  let s:wipebuf = bufnr('%')
endif
set shortmess=aoO
badd +17 ~/Dev/dotfiles/nvim/lua/utils/init.lua
badd +12 ~/Dev/dotfiles/nvim/lua/utils/vars.lua
badd +21 ~/Dev/dotfiles/nvim/lua/utils/fn.lua
argglobal
%argdel
edit ~/Dev/dotfiles/nvim/lua/utils/init.lua
let s:save_splitbelow = &splitbelow
let s:save_splitright = &splitright
set splitbelow splitright
wincmd _ | wincmd |
vsplit
wincmd _ | wincmd |
vsplit
2wincmd h
wincmd w
wincmd w
let &splitbelow = s:save_splitbelow
let &splitright = s:save_splitright
wincmd t
let s:save_winminheight = &winminheight
let s:save_winminwidth = &winminwidth
set winminheight=0
set winheight=1
set winminwidth=0
set winwidth=1
exe 'vert 1resize ' . ((&columns * 90 + 135) / 270)
exe 'vert 2resize ' . ((&columns * 89 + 135) / 270)
exe 'vert 3resize ' . ((&columns * 89 + 135) / 270)
argglobal
balt ~/Dev/dotfiles/nvim/lua/utils/fn.lua
setlocal fdm=manual
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal fen
silent! normal! zE
let &fdl = &fdl
let s:l = 9 - ((8 * winheight(0) + 34) / 68)
if s:l < 1 | let s:l = 1 | endif
keepjumps exe s:l
normal! zt
keepjumps 9
normal! 0
wincmd w
argglobal
if bufexists("~/Dev/dotfiles/nvim/lua/utils/vars.lua") | buffer ~/Dev/dotfiles/nvim/lua/utils/vars.lua | else | edit ~/Dev/dotfiles/nvim/lua/utils/vars.lua | endif
if &buftype ==# 'terminal'
  silent file ~/Dev/dotfiles/nvim/lua/utils/vars.lua
endif
balt ~/Dev/dotfiles/nvim/lua/utils/init.lua
setlocal fdm=manual
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal fen
silent! normal! zE
let &fdl = &fdl
let s:l = 1 - ((0 * winheight(0) + 34) / 68)
if s:l < 1 | let s:l = 1 | endif
keepjumps exe s:l
normal! zt
keepjumps 1
normal! 0
wincmd w
argglobal
if bufexists("~/Dev/dotfiles/nvim/lua/utils/fn.lua") | buffer ~/Dev/dotfiles/nvim/lua/utils/fn.lua | else | edit ~/Dev/dotfiles/nvim/lua/utils/fn.lua | endif
if &buftype ==# 'terminal'
  silent file ~/Dev/dotfiles/nvim/lua/utils/fn.lua
endif
balt ~/Dev/dotfiles/nvim/lua/utils/vars.lua
setlocal fdm=manual
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal fen
silent! normal! zE
let &fdl = &fdl
let s:l = 21 - ((20 * winheight(0) + 34) / 68)
if s:l < 1 | let s:l = 1 | endif
keepjumps exe s:l
normal! zt
keepjumps 21
normal! 08|
wincmd w
exe 'vert 1resize ' . ((&columns * 90 + 135) / 270)
exe 'vert 2resize ' . ((&columns * 89 + 135) / 270)
exe 'vert 3resize ' . ((&columns * 89 + 135) / 270)
tabnext 1
if exists('s:wipebuf') && len(win_findbuf(s:wipebuf)) == 0&& getbufvar(s:wipebuf, '&buftype') isnot# 'terminal'
  silent exe 'bwipe ' . s:wipebuf
endif
unlet! s:wipebuf
set winheight=2 winwidth=20 shortmess=filnxtToOFc
let &winminheight = s:save_winminheight
let &winminwidth = s:save_winminwidth
let s:sx = expand("<sfile>:p:r")."x.vim"
if filereadable(s:sx)
  exe "source " . fnameescape(s:sx)
endif
let &g:so = s:so_save | let &g:siso = s:siso_save
nohlsearch
doautoall SessionLoadPost
unlet SessionLoad
" vim: set ft=vim :
