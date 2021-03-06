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

# zsh-syntax-highlighting (always source LAST!)
source $HOME/.zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

# hotfix for kitty terminal and zsh-syntax-highlight comment coloring
if [[ $TERM == "xterm-kitty" ]]; then
    ZSH_HIGHLIGHT_STYLES[comment]="fg=#ebdbb2,bold"
fi
