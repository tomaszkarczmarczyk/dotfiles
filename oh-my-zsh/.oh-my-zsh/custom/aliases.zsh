alias reload="source $HOME/.zshrc && echo 'zsh config reloaded!'"

alias c=clear
alias history='omz_history -E'

alias eza='eza -lhgATL 1 --time-style relative --group-directories-first --icons=always'
alias fd='fd --color=always'
alias stow='stow -v'

alias g=git

alias config-aliases="$EDITOR $HOME/.oh-my-zsh/custom/aliases.zsh"
alias config-nvim="$EDITOR $HOME/.config/nvim/init.lua"
alias config-zsh="$EDITOR $HOME/.zshrc"

alias buuc='brew update && brew upgrade && brew cleanup'

alias icloud="z $HOME/Library/Mobile\ Documents/com~apple~CloudDocs"
alias obsidian="z $HOME/library/Mobile\ Documents/iCloud~md~obsidian/documents"
