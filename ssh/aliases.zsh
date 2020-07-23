
[ -n "$(command -v pbcopy)" ] && alias pubkey_rsa="more ~/.ssh/id_rsa.pub | pbcopy | echo '=> Public RSA key copied to clipboard.'"
[ -n "$(command -v pbcopy)" ] && alias pubkey_ed25519="more ~/.ssh/id_ed25519.pub | pbcopy | echo '=> Public ED25519 key copied to clipboard.'"