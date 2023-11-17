# Config
alias zconfig='$EDITOR ~/.zshrc'
alias config='git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME'

# Shell
alias cd="z"
alias ls="eza --icons"
alias cat="bat"
alias grep="rg"
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
alias nrm="norminette -R CheckForbiddenSourceHeader"
alias fran="$HOME/francinette/tester.sh"
alias make50='make CC=clang CFLAGS="-fsanitize=signed-integer-overflow -fsanitize=undefined -ggdb3 -O0 -std=c11 -Wall -Werror -Wextra -Wno-sign-compare -Wno-unused-parameter -Wno-unused-variable -Wshadow" LDLIBS="-lcrypt -lcs50 -lm"'
