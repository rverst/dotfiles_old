alias ga='git add'
alias gaa='git add -A'
alias gb='git branch -v'
alias gco='git checkout'
alias gc='git commit -s'
alias gca='git commit -s -a'
alias gcm='git commit -s -m'
alias gcam='git commit -s -a -m'
alias gd='git diff'

alias gl='git pull --prune'
alias glg="git log --graph --decorate --oneline --abbrev-commit"
alias glga="glg --all"
alias gp='git push origin HEAD'
alias gpa='git push origin --all'

gi() {
  curl -sLw "\n" "https://www.gitignore.io/api/""$@"
}
