#! /usr/bin/env bash

TARGET=$HOME

if [ $# -gt "1" ]; then
    echo "Usage: stow-everything.sh [<stow_target_folder>]" >&2
    exit 1
fi
if [ $# -eq 1 ]; then
    TARGET="$1"
fi

echo "Installing stow ignore-list first"
stow -v -t ~ stow

echo "Installing all packages available into '$TARGET'"
packages=$(find * -maxdepth 0 -type d | egrep -v 'stow')

for package in $packages; do
    echo "($package)"
    stow --dotfiles -v -t $TARGET $package
done

echo "Done."
