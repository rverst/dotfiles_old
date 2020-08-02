#!/usr/bin/env zsh

if command -v youtube-dl >/dev/null 2>&1; then
  youtube-dl() {
    case "$1" in
      best ) shift; youtube-dl-best $@ ;;
      * ) command youtube-dl "$@" ;;
    esac
  }
fi
