alias vim='nvim'
alias open='xdg-open'
alias fd='fdfind'
alias icat="kitty +kitten icat --align left"
alias kctl="kubectl"
alias cpan="perl -MCPAN -e shell"
alias docker-compose="docker compose"
alias add-line-breaks="git ls-files -z | while IFS= read -rd '' f; do tail -c1 < \"\$f\" | read -r _ || echo >> \"\$f\"; done"
alias ipy="ipython"
alias cat='bat'
alias ls='exa --icons'
alias la='ls -a'
alias lla='ls -la'
alias lt='ls --tree'
alias pbcopy='xclip -selection clipboard'
alias pbpaste='xclip -selection clipboard -o'
#alias ssh="kitty +kitten ssh"

# https://github.com/emericg/OpenSubtitlesDownload
alias opensubtitles='python3 ~/.local/share/nautilus/scripts/OpenSubtitlesDownload.py --cli'

