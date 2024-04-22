# Let delete word behave like VIM
WORDCHARS='*?_-.[]~=&;!#$%^(){}<>'
bindkey "^W" backward-delete-word

# Key bindings
#! make sure the mode is set before any other bindkeys to prevent overwrites
bindkey -e # -v (vi mode) -e (emacs mode)
bindkey "^[[1;5C" forward-word
bindkey "^[[1;5D" backward-word
bindkey "^[OB" history-search-forward
bindkey "^[OA" history-search-backward
bindkey "^N" history-search-forward
bindkey "^P" history-search-backward
# change menu completion
zmodload zsh/complist
bindkey -M menuselect '^N' menu-complete
bindkey -M menuselect '^N' menu-select
bindkey -M menuselect '^P' reverse-menu-complete
bindkey -M menuselect '^[[Z' reverse-menu-complete

# History
HISTFILE=~/.zsh_history
HISTSIZE=100000
HIST_STAMPS="dd/mm/yyyy"
SAVEHIST=100000
setopt EXTENDED_HISTORY # add timestamps to history
setopt APPEND_HISTORY   # adds history

########################
# Plugins Configurations
########################

# zsh-autosuggestion
ZSH_AUTOSUGGEST_STRATEGY=(history completion)
ZSH_AUTOSUGGEST_BUFFER_MAX_SIZE=20
bindkey '^ ' autosuggest-accept
bindkey '^[[[CE' autosuggest-execute

# fzf
export FZF_DEFAULT_OPTS='--height 40% --layout=reverse --border'
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
# # Advanced customization of fzf options via _fzf_comprun function
# # - The first argument to the function is the name of the command.
# # - You should make sure to pass the rest of the arguments to fzf.
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
