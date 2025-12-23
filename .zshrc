# Colors
name='%F{#12D1FF}%n%f'
host='%F{#FFFFFF}%m%f'
cpath='%F{purple}%~%f' # path is reserved :c
symbol='%% '
PROMPT="${name}@${host} ${cpath} ${symbol}"

# Aliases
alias cls="echo nono little guy :3"
alias h="cd ~"
alias x="exit"
alias g="lazygit"
alias n="nvim"
alias l="ls -la"

# Remove case sensitivity
autoload -Uz compinit && compinit -u -d ~/.zcompdump
matching_rules=(
    'm:{a-z}={A-Z}'       # match lowercase to uppercase
    'm:{A-Z}={a-z}'       # match uppercase to lowercase
    'r:|[._-]=* r:|=*'    # match parts of filenames (f.b -> foo.bar)
    'l:|=* r:|=*'         # allow completion from both ends of the word
)
zstyle ':completion:*' matcher-list $matching_rules

# Cross-Platform Plugins
if command -v brew >/dev/null 2>&1; then
	# P means Plugin
	P_PATH="$(brew --prefix)/share" # Mac
else
	P_PATH="/usr/share/zsh/plugins" # Linux 
fi

source "$P_PATH/zsh-fast-syntax-highlighting/fast-syntax-highlighting.plugin.zsh"
source "$P_PATH/zsh-autosuggestions/zsh-autosuggestions.zsh"

# Exports
export EDITOR="nvim" # use neovim by default
export PATH=$PATH:~/roblox/tools # for wally-package-types
