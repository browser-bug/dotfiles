# Change how often to auto-update (in days).
export UPDATE_ZSH_DAYS=7

COMPLETION_WAITING_DOTS="true"

# Showing hostname in prompt
PROMPT="%{$fg[white]%}%n@%{$fg[white]%}%m%{$reset_color%} ${PROMPT}"

# History
HISTFILE=~/.zsh_history
HISTSIZE=100000
HIST_STAMPS="dd/mm/yyyy"
SAVEHIST=100000
setopt EXTENDED_HISTORY # add timestamps to history
setopt APPEND_HISTORY   # adds history

# Preferred editor for local and remote sessions
 if [[ -n $SSH_CONNECTION ]]; then
   export EDITOR='nvim'
 else
   export EDITOR='nvim'
 fi
