# Intro
My dotfiles are managed with [GNU stow](http://www.gnu.org/software/stow/), a free, portable, lightweight symlink farm manager. This enables the possibility to keep a versioned directory of all my config files that are virtually linked into place via a single command. Please take a look at the documentation to learn more.

# Prerequisites
All you need is [GNU stow](http://www.gnu.org/software/stow/).

On Debian: `sudo apt install stow`.

# Install
1. clone the repository : `git clone https://github.com/browser-bug/dotfiles ~/ ; cd ~/dotfiles`
1. first of all install package `stow` to get the ignore file list ready to go `stow -v -t ~ stow`
1. install desired package via `stow -t $HOME -v <directory_name>`

`stow -h` to see all options available.
