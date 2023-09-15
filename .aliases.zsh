# Config
alias zconfig='$EDITOR ~/.zshrc'
alias config='git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME'

# Shell
alias cd="z"
alias ls="exa --icons"
alias cat="bat"
alias cl="clear"

# Arch
alias pi="yay -S"
alias pu="yay -Syu"
alias pr="sudo pacman -Rns"
alias pc="sudo pacman -Scc"

# Misc
alias c="code -r"
alias name="names | tr '-' '_'"
alias nf="clear && neofetch"
