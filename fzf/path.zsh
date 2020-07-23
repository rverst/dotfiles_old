if [ "$(uname -s)" = "Darwin" ]; then
  fzf_path="/usr/local/opt/fzf/bin"
else
  [ -f "/home/linuxbrew/.linuxbrew/opt/fzf/bin/fzf" ] && \
    fzf_path="/home/linuxbrew/.linuxbrew/opt/fzf/bin"

  [ -f "/usr/bin/fzf" ] && \
    fzf_path="/usr/bin"
fi

if [ -d $fzf_path ]; then
  if [[ ! "$PATH" == *"$fzf_path"* ]]; then
    export PATH="$fzf_path${PATH+:$PATH}"
  fi
else
  echo "WARNING: could not set zfz path!"
fi


export FZF_DEFAULT_COMMAND='fd --type file --follow --hidden --exclude .git'
export FZF_CTRL_T_COMMAND='eval $FZF_DEFAULT_COMMAND'
export FZF_DEFAULT_OPTS='
--color fg:#ebdbb2,bg:#282828,hl:#fabd2f,fg+:#ebdbb2,bg+:#3c3836,hl+:#fabd2f
--color info:#83a598,prompt:#bdae93,spinner:#fabd2f,pointer:#83a598,marker:#fe8019,header:#665c54
'
export FZF_COMPLETION_TRIGGER='??'

