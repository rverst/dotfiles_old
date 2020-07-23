#!/bin/zsh

if [ $(uname -r | sed 's/^.*Microsoft$/1/') = '1' ]; then
  alias afk="rundll32.exe user32.dll,LockWorkStation" \
    lock="rundll32.exe user32.dll,LockWorkStation"
fi
