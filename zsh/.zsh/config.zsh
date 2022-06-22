# Change how often to auto-update (in days).
export UPDATE_ZSH_DAYS=7

COMPLETION_WAITING_DOTS="true"

# History
HISTFILE=~/.zsh_history
HISTSIZE=100000
HIST_STAMPS="dd/mm/yyyy"
SAVEHIST=100000
setopt EXTENDED_HISTORY # add timestamps to history
setopt APPEND_HISTORY   # adds history

# Key bindings
bindkey '^H' backward-kill-word
bindkey '^[[3^' kill-word

