# .zshenv is always sourced, define here exported variables that should
# be available to other programs.

export PATH="/usr/local/bin/margot_heel_cli:$PATH"
export PATH="$HOME/bin:$PATH"

# Preferred editor for local and remote sessions
 if [[ -n $SSH_CONNECTION ]]; then
   export EDITOR='nvim'
 else
   export EDITOR='nvim'
 fi
