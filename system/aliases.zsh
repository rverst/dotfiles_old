#!/bin/sh
if [ "$(uname -s)" = "Darwin" ]; then
  alias ls="ls -hFG"
else
  #alias ls="ls -F --color"
  alias ls="ls -hN --color=auto --group-directories-first"
fi

# Some basics
alias ..="cd .."
alias cd..="cd .."
alias l="ls -l"
alias la="ls -A"
alias ll="ls -lAH"

# Quick access to #EDITOR
alias \
  e="$EDITOR" \
  ve="$VEDITOR" \
  se="sudo $EDITOR" \

# Verbosity and settings that you pretty much just always are going to want.
alias \
  cp="cp -iv" \
  mv="mv -iv" \
  mkd="mkdir -pv"

if [ "$(uname -s)" = "Linux" ]; then
  alias rm="rm -vI"
elif [ "$(uname -s)" = "Darwin" ]; then
  alias rm="rm -v"
  alias netlis="netstat -p tcp -van | grep LISTEN"
fi

alias \
  yt="youtube-dl --add-metadata -i" \
  yta="yt -x -f bestaudio/best" \
  ffmpeg="ffmpeg -hide_banner"

# More colors
alias \
  grep="grep --color=auto" \
  diff="diff --color=auto" \
  ccat="highlight --out-format=ansi"

# quick hack to make watch work with aliases
alias watch='watch -c -d -t '

if [ "$(uname -s)" = "Linux" ]; then
  # open, pbcopy and pbpaste on linux
  if [ -z "$(command -v pbcopy)" ]; then
    if [ -n "$(command -v xclip)" ]; then
      alias pbcopy="xclip -selection clipboard"
      alias pbpaste="xclip -selection clipboard -o"
    elif [ -n "$(command -v xsel)" ]; then
      alias pbcopy="xsel --clipboard --input"
      alias pbpaste="xsel --clipboard --output"
    fi
  fi
  if [ -e /usr/bin/xdg-open ]; then
    alias open="xdg-open"
  fi

    # todo: differ between debian/ubuntu and arch
    alias \
      install="sudo apt install" \
      update="sudo apt update" \
      upgrade="sudo apt upgrade" \
      autremove="sudo apt autoremove" \

      alias \
      sys="sudo systemctl"
fi
