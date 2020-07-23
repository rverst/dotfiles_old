#!/usr/bin/env zsh

[ -f "${XDG_CONFIG_HOME:-$HOME/.config}"/fzf/fzf.zsh ] \
  && source "${XDG_CONFIG_HOME:-$HOME/.config}"/fzf/fzf.zsh \
  || echo "Warning: fzf completions not found"
