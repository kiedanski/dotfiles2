export PATH="$PATH:$HOME/.cargo/bin:$HOME/.local/bin:$HOME/.emacs.d/bin:/usr/local/sbin"
# XDG default paths
export XDG_CONFIG_HOME="$HOME/.config"

export NODE_EXTRA_CA_CERTS='/Users/diegokiedanski/Downloads/ca.crt'

# ZSH directory
export ZSH="$XDG_CONFIG_HOME/zsh"

### ---- history config -------------------------------------
export HISTFILE=$ZSH/.zsh_history

# How many commands zsh will load to memory.
export HISTSIZE=10000

# How many commands history will save on file.
export SAVEHIST=10000

# History won't save duplicates.
setopt HIST_IGNORE_ALL_DUPS

# History won't show duplicates on search.
setopt HIST_FIND_NO_DUPS

source_if_exists () {
  [ -f "$1" ] && source "$1"
}


### ---- plugins --------
source $ZSH/plugins/fast-syntax-highlighting/fast-syntax-highlighting.plugin.zsh
source $ZSH/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh
source /Users/diegokiedanski/.config/zsh/plugins/zsh-vi-mode/zsh-vi-mode.plugin.zsh
fpath=($ZSH/plugins/zsh-completions/src $fpath)
#################


# load aliases
source_if_exists "$XDG_CONFIG_HOME/alias"

# load prompt
eval "$(starship init zsh)"


# export MPLBACKEND="module://itermplot"
eval "$(direnv hook zsh)"

export ICLOUD_DIR="$HOME"'/Library/Mobile\ Documents/com~apple~CloudDocs'
