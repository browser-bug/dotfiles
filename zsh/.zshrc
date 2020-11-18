# oh-my-zsh settings
source ~/.oh-my.zsh

# environment variables
source ~/.zshenv

# load zsh config files
config_files=(~/.zsh/**/*.zsh(N))
for file in ${config_files}
do
  source $file
done

# kitty updater
source $KITTY_UPDATER/check_for_kitty_upgrade.sh
