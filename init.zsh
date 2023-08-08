#!/usr/bin/zsh

zulp() {
  BOLD=$(tput bold)
  NORM=$(tput sgr0)
  
  mkdir -p ~/.zulp/pkg
  BASE=$(basename "$1")
  PLUG=$(find -L ~/.zulp/pkg -type f -name "$BASE.zsh" 2>/dev/null | head -1)
  
  if [ -z "$PLUG" ]; then
    if [ ! -d "$HOME/.zulp/pkg/$BASE" ]; then
      echo "${BOLD}[zulp-get]${NORM} $1"
      git clone --quiet "https://github.com/$1" "$HOME/.zulp/pkg/$BASE"
      zulp "$1"
    else
      echo "${BOLD}[zulp-err]${NORM} couldn't find plugin: $BASE"
      return 1
    fi
  fi
  source "$PLUG"
}

