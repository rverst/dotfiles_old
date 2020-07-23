#!/bin/zsh

if [ $(uname -s) = "Darwin" ]; then
  alias afk="open -a /System/Library/CoreServices/ScreenSaverEngine.app" \
    lock="open -a /System/Library/CoreServices/ScreenSaverEngine.app"
fi
