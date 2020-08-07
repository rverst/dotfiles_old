#!/usr/bin/env zsh

[ -n $(command -v kitty) ] && \
  kitty + complete setup zsh | source /dev/stdin

