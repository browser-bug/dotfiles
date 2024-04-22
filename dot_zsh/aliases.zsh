alias vim='nvim'
alias open='xdg-open'
alias icat="kitty +kitten icat --align left"
alias kctl="kubectl"
alias cpan="perl -MCPAN -e shell"
alias docker-compose="docker compose"
alias add-line-breaks="git ls-files -z | while IFS= read -rd '' f; do tail -c1 < \"\$f\" | read -r _ || echo >> \"\$f\"; done"
alias ipy="ipython"
alias cat='bat'
alias ls='eza --icons'
alias la='ls -a'
alias lla='ls -la'
alias lt='ls --tree'
alias l='ll -a'
alias pbcopy='xclip -selection clipboard'
alias pbpaste='xclip -selection clipboard -o'
alias check-big-files='ncdu'
alias ssh="kitty +kitten ssh"
alias cmoi="chezmoi"

