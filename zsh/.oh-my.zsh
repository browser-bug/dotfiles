# Path to your oh-my-zsh installation.
export ZSH=$HOME/.oh-my-zsh
# For some reasons the spaceship root dir is not inferred correctly by the setup script
export SPACESHIP_ROOT=$ZSH/custom/themes/spaceship-prompt

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which c
# to know which specific one was loaded, run: echo $RANDOM_THEM
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
ZSH_THEME="spaceship"

# Which plugins would you like to load?
# Standard plugins can be found in $ZSH/plugins/
# Custom plugins may be added to $ZSH_CUSTOM/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(zsh-autosuggestions git python pip)

source $ZSH/oh-my-zsh.sh

if [ "$ZSH_THEME" = "spaceship" ]; then
  source $ZSH/custom/spaceship_custom_settings.zsh
else
  # Showing hostname in prompt
  PROMPT="%{$fg[white]%}%n@%{$fg[white]%}%m%{$reset_color%} ${PROMPT}"
  setopt PROMPT_SUBST
  show_virtual_env() {
    if [[ -n "$VIRTUAL_ENV" && -n "$DIRENV_DIR" ]]; then
      echo "($(basename $VIRTUAL_ENV)) "
    fi
  }
  PS1='$(show_virtual_env)'$PS1
fi
