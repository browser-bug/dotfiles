# Intro
My dotfiles are managed with [GNU stow](http://www.gnu.org/software/stow/), a free, portable, lightweight symlink farm manager. This enables the possibility to keep a versioned directory of all my config files that are virtually linked into place via a single command. Please take a look at the documentation to learn more.

# Prerequisites
All you need is [GNU stow](http://www.gnu.org/software/stow/).
On Debian: `sudo apt install stow`.

# Install
1. clone the repository : `git clone https://github.com/browser-bug/dotfiles ~/ ; cd ~/dotfiles`
1. basic install desired package via `stow <directory>`
1. `stow -h` to see all options available.
