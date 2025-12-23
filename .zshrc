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
autoload -Uz compinit && compinit -u
matching_rules=(
    'm:{a-z}={A-Z}'       # match lowercase to uppercase
    'm:{A-Z}={a-z}'       # match uppercase to lowercase
    'r:|[._-]=* r:|=*'    # match parts of filenames (f.b -> foo.bar)
    'l:|=* r:|=*'         # allow completion from both ends of the word
)
zstyle ':completion:*' matcher-list $matching_rules

# Plugins
source $(brew --prefix)/share/zsh-fast-syntax-highlighting/fast-syntax-highlighting.plugin.zsh
source $(brew --prefix)/share/zsh-autosuggestions/zsh-autosuggestions.zsh

export EDITOR="nvim" # use neovim by default
export PATH=$PATH:~/roblox/tools # for wally-package-types
