# For benchmarking purposes uncomment this line
#zmodload zsh/zprof

# oh-my-zsh settings
source ~/.oh-my.zsh


# load zsh config files
config_files=(~/.zsh/**/*.zsh(N))
for file in ${config_files}
do
  source $file
done

# check of kitty updates
source $KITTY_UPDATER/check_for_kitty_upgrade.sh

# kubectl autocompletion
source <(kubectl completion zsh)
complete -F __start_kubectl kctl

# minikube autocompletion (commented since it took too much time during startup script)
#source <(minikube completion zsh)

# zsh-syntax-highlighting (always source LAST!)
source $HOME/.zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
# hotfix for kitty terminal and zsh-syntax-highlight comment coloring
if [[ $TERM == "xterm-kitty" ]]; then
    ZSH_HIGHLIGHT_STYLES[comment]="fg=#ebdbb2,bold"
fi

# pyenv
#eval "$(pyenv init -)"

# direnv
eval "$(direnv hook zsh)"

# perl
eval $(perl -I$HOME/perl5/lib/perl5 -Mlocal::lib)


# BEGIN_KITTY_SHELL_INTEGRATION
if test -e "$HOME/.local/lib/kitty/shell-integration/kitty.zsh"; then source "$HOME/.local/lib/kitty/shell-integration/kitty.zsh"; fi
# END_KITTY_SHELL_INTEGRATION

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

# For benchmarking purposes uncomment this line
#zprof
