# Config
alias config='git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME'
alias zconfig='$EDITOR $HOME/.zshrc'

# Shell
alias cd="z"
alias ls="eza --icons"
alias cat="bat"
alias grep="rg"
alias cl="clear"
alias less="moar"

# Arch
alias pi="yay -S"
alias pu="yay -Syu"
alias pr="sudo pacman -Rns"
alias pc="sudo pacman -Scc"

# Misc
alias c="code -r"
alias nf="clear && neofetch"
alias name="names | tr '-' '_'"
alias nrm="norminette -R CheckForbiddenSourceHeader | grep -v 'OK'"
alias fran="$HOME/francinette/tester.sh"
alias make50='make CC="clang" CFLAGS="-ferror-limit=1 -gdwarf-4 -ggdb3 -O0 -std=c11 -Wall -Werror -Wextra -Wno-gnu-folding-constant -Wno-sign-compare -Wno-unused-parameter -Wno-unused-variable -Wno-unused-but-set-variable -Wshadow" LDLIBS="-lcrypt -lcs50 -lm"'
