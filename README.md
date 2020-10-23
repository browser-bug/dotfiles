# Introw
My dotfiles are managed with [GNU stow](http://www.gnu.org/software/stow/), a free, portable, lightweight symlink farm manager. This enables the possibility to keep a versioned directory of all my config files that are virtually linked into place via a single command. Please take a look at the documentation to learn more.

# Prerequisites
All you need is [GNU stow](http://www.gnu.org/software/stow/).

(e.g. on Ubuntu: `sudo apt-get install stow`)

# Install
1. clone the repository : `git clone https://github.com/browser-bug/dotfiles ~/ ; cd ~/dotfiles`
1. first of all install package `stow` to get the ignore file list ready to go `stow -v -t ~ stow`
1. you can install desired packages via `stow -t ~ -v <directory_name>+`

`stow -h` to see all options available.

If you want to install everything there's a shell script to use:

1. `chmod u+x stow-everything.sh`
1. `./stow-everything.sh [stow_target_dir]`

Note0: the default stow_target_dir is set to your $HOME.

Note1: the shell script has to be called from inside this repository in order for stow to properly do his job.

