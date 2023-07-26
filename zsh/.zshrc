# For benchmarking purposes uncomment this line
#zmodload zsh/zprof

# oh-my-zsh settings
source $HOME/.oh-my.zsh

# load zsh config files first
config_files=(~/.zsh/**/*.zsh(N))
for file in ${config_files}
do
  source $file
done

# asdf configuration
ASDF_DIR="${HOME}/.asdf"
ASDF_BIN="${ASDF_DIR}/bin"
[[ ":$PATH:" == *":${ASDF_BIN}:"* ]] && PATH="${PATH//$ASDF_BIN:/}"
PATH="${ASDF_BIN}:$PATH"
# append completions to fpath
fpath=(${ASDF_DIR}/completions $fpath)
# initialise completions with ZSH's compinit
autoload -Uz compinit && compinit

# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# fzf
export FZF_CTRL_R_OPTS="
  --preview 'echo {}' --preview-window up:3:hidden:wrap
  --bind 'ctrl-/:toggle-preview'
  --bind 'ctrl-y:execute-silent(echo -n {2..} | xclip -selection clipboard)+abort'
  --color header:italic
  --header 'Press CTRL-Y to copy command into clipboard'"
export FZF_CTRL_T_OPTS="
  --preview 'bat -n --color=always {}'
  --bind 'ctrl-/:change-preview-window(down|hidden|)'
  --color header:italic
  --header 'Press CTRL-/ to change preview window'"
export FZF_ALT_C_OPTS="--preview 'tree -C {}'"
export FZF_TMUX_OPTS='-p80%,60%'
# Advanced customization of fzf options via _fzf_comprun function
# - The first argument to the function is the name of the command.
# - You should make sure to pass the rest of the arguments to fzf.
_fzf_comprun() {
  local command=$1
  shift

  case "$command" in
    cd)           fzf --preview 'tree -C {} | head -200'   "$@" ;;
    export|unset) fzf --preview "eval 'echo \$'{}"         "$@" ;;
    ssh)          fzf --preview 'dig {}'                   "$@" ;;
    *)            fzf --preview 'bat -n --color=always {}' "$@" ;;
  esac
}

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/home/bernardo/anaconda3/bin/conda' 'shell.zsh' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/home/bernardo/anaconda3/etc/profile.d/conda.sh" ]; then
        . "/home/bernardo/anaconda3/etc/profile.d/conda.sh"
    else
        export PATH="/home/bernardo/anaconda3/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda initialize <<<

# brew configuration
eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"

# kubectl autocompletion
source <(kubectl completion zsh)
complete -F __start_kubectl kctl

# BEGIN_KITTY_SHELL_INTEGRATION
if test -e "$HOME/.local/lib/kitty/shell-integration/kitty.zsh"; then source "$HOME/.local/lib/kitty/shell-integration/kitty.zsh"; fi
# END_KITTY_SHELL_INTEGRATION

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

# For benchmarking purposes uncomment this line
#zprof

# asdf-direnv config source
source "${XDG_CONFIG_HOME:-$HOME/.config}/asdf-direnv/zshrc"

if ! pgrep -u "$USER" ssh-agent > /dev/null; then
    ssh-agent -t 1h > "$XDG_RUNTIME_DIR/ssh-agent.env"
fi
if [[ ! -f "$SSH_AUTH_SOCK" ]]; then
    source "$XDG_RUNTIME_DIR/ssh-agent.env" >/dev/null
fi
