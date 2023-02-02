export XDG_CONFIG_HOME="$HOME/.config"

source_if_exists () {
  [ -f "$1" ] && source "$1"
}

source_if_exists "$XDG_CONFIG_HOME/alias"
