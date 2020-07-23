#!/usr/bin/env zsh

[[ -d "$XDG_CODE_HOME/go" ]] && export GOPATH="$XDG_CODE_HOME/go"
[[ -d "$XDG_CODE_HOME/go/bin" ]] && export PATH="$XDG_CODE_HOME/go/bin${PATH+:$PATH}"

if [[ -d "/usr/local/go" ]]; then
  export PATH="/usr/local/go/bin${PATH+:$PATH}"
fi

