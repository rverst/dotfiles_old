""" install vim-plug (https://github.com/junegunn/vim-plug)
let s:run_full=1
if empty(glob("$XDG_CONFIG_HOME/nvim/autoload/plug.vim"))
  silent !curl -fLo "$XDG_CONFIG_HOME/nvim/autoload/plug.vim" --create-dirs
        \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $XDG_CONFIG_HOME/nvim/init.vim
  let s:run_full=0
endif

""" plugins
call plug#begin('$XDG_CONFIG_HOME/nvim/plugged')
  so $DOTFILES/nvim/init.plug.vim
  Plug 'neoclide/coc.nvim', {'branch': 'release'}
call plug#end()
""" run the full init only if the plugins are installed.
""" prevents from wired behavior on first start
if s:run_full
  so $DOTFILES/nvim/init.base.vim
  so $DOTFILES/nvim/init.bindings.vim

  so $DOTFILES/nvim/init.coc.vim

  so $DOTFILES/nvim/init.misc.vim
  """ look and feel
  so $DOTFILES/nvim/init.theme.vim
endif

