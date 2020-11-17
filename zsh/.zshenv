# .zshenv is always sourced, define here exported variables that should
# be available to other programs.

export PATH="/usr/local/bin/margot_heel_cli:$PATH"
export PATH="$HOME/bin:$PATH"
export PATH="$HOME/.local/bin:$PATH"
export PATH="$HOME/.cargo/bin:$PATH"
export JAVA_HOME="/usr/lib/jvm/java-11-openjdk-amd64"

# Preferred editor for local and remote sessions
 if [[ -n $SSH_CONNECTION ]]; then
   export EDITOR='nvim'
 else
   export EDITOR='nvim'
 fi

# kitty updater
export KITTY="$HOME/Development/kitty"
export KITTY_UPDATER="$HOME/Development/kitty-updater"
export KITTY_CACHE_DIR="$HOME/Development/kitty-updater/.cache"
export KITTY_INSTALL_DIR="$HOME/.local"
export UPDATE_KITTY_DAYS=5 # how often to check for updates
