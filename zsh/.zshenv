# .zshenv is always sourced, define here exported variables that should
# be available to other programs.
skip_global_compinit=1

export GPG_TTY=$TTY

export PATH="/usr/local/bin/margot_heel_cli:$PATH"
export PATH="/usr/local/go/bin:$PATH"
export PATH="$HOME/bin:$PATH"
export PATH="$HOME/.local/bin:$PATH"
export PATH="$HOME/.local/texlive/2020/bin/x86_64-linux:$PATH"
export PATH="$HOME/.cargo/bin:$PATH"
export PATH="${KREW_ROOT:-$HOME/.krew}/bin:$PATH"
export PATH="$NODE_VERSIONS/node-v10.24.1/bin:$PATH"
export PATH="${KREW_ROOT:-$HOME/.krew}/bin:$PATH"
export PATH="${KREW_ROOT:-$HOME/.krew}/bin:$PATH"
export MANPATH="$HOME/.local/texlive/2020/texmf-dist/doc/man:$MANPATH"
export INFOPATH="$HOME/.local/texlive/2020/texmf-dist/doc/info:$INFOPATH"
export JAVA_HOME="/usr/lib/jvm/java-11-openjdk-amd64"
# Android SDK Tools PATH
export ANDROID_HOME="$HOME/Android/Sdk"
export PATH="$ANDROID_HOME/tools:$PATH"
export PATH="$ANDROID_HOME/emulator:$PATH"
export PATH="$ANDROID_HOME/platform-tools:$PATH"
export CAPACITOR_ANDROID_STUDIO_PATH="/snap/bin/android-studio"
# Gradle
export GRADLE_HOME=/opt/gradle/latest
export PATH=${GRADLE_HOME}/bin:${PATH}
export USE_GKE_GCLOUD_AUTH_PLUGIN=True

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
export UPDATE_KITTY_DAYS=10 # how often to check for updates

# virtual env nvim support
if [[ -n $VIRTUAL_ENV && -e "${VIRTUAL_ENV}/bin/activate" ]]; then
  source "${VIRTUAL_ENV}/bin/activate"
fi
