# .zshenv is always sourced, define here exported variables that should
# be available to other programs.
skip_global_compinit=1

export GPG_TTY=$TTY

export PATH="/usr/local/go/bin:$PATH"
export PATH="$HOME/bin:$PATH"
export PATH="$HOME/.local/bin:$PATH"
export PATH="$HOME/.cargo/bin:$PATH"
export PATH="${KREW_ROOT:-$HOME/.krew}/bin:$PATH"
export PATH="$HOME/.local/texlive/2020/bin/x86_64-linux:$PATH"
export MANPATH="$HOME/.local/texlive/2020/texmf-dist/doc/man:$MANPATH"
export INFOPATH="$HOME/.local/texlive/2020/texmf-dist/doc/info:$INFOPATH"
export JAVA_HOME="/usr/lib/jvm/default"
# Android SDK Tools PATH
export ANDROID_HOME="$HOME/Android/Sdk"
export PATH="$ANDROID_HOME/tools:$PATH"
export PATH="$ANDROID_HOME/emulator:$PATH"
export PATH="$ANDROID_HOME/platform-tools:$PATH"
export CAPACITOR_ANDROID_STUDIO_PATH="/usr/bin/android-studio"

# Preferred editor for local and remote sessions
export EDITOR='nvim'

# virtual env nvim support
if [[ -n $VIRTUAL_ENV && -e "${VIRTUAL_ENV}/bin/activate" ]]; then
  source "${VIRTUAL_ENV}/bin/activate"
fi
