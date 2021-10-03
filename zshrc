echo "Hello from .zshrc"

# Customize Prompts
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

# Set Variables
ZSH_THEME="powerlevel10k/powerlevel10k"

# Change ZSH options


# Create Aliases
alias lsa='ls -lAFh'

# Add Locations to $PATH variable
export ZSH="/Users/philipkruck/.oh-my-zsh" # Oh my Zsh
export PATH=/usr/local/Caskroom/flutter/bin:$PATH # Flutter
export PATH="$PATH:/Applications/Visual Studio Code.app/Contents/Resources/app/bin" # VSCode


# Write handy functions
function mkcd() {
	mkdir -p "$@" && cd "$_"
}



# Use ZSh plugins

plugins=(
	git
	zsh-autosuggestions
	zsh-syntax-highlighting
	)

source $ZSH/oh-my-zsh.sh

# ... and other surprises
