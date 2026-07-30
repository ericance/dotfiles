# Colors
name='%F{#12D1FF}%n%f'
host='%F{#FFFFFF}%m%f'
cpath='%F{purple}%~%f' # path is reserved :c
symbol='%% '
PROMPT="${name}@${host} ${cpath} ${symbol}"

# Exports
export EDITOR="nvim" # use neovim by default
export PATH="$HOME/.local/bin:$HOME/tools:$PATH"
export PATH="$HOME/.cargo/bin:$PATH"

# Bun
export BUN_INSTALL="$HOME/.bun"
export PATH="$BUN_INSTALL/bin:$PATH"

# Bun Completions
[[ -s "/Users/eric/.bun/_bun" ]] && source "/Users/eric/.bun/_bun"

# Aliases
alias l="eza -la --icons --group-directories-first"
alias ls="eza --icons --group-directories-first"
alias c="clear" # use when needed :3
alias py="python3"
alias x="exit"
alias g="lazygit"
alias n="nvim"
alias l="ls -lh"

# Roblox Projects
rbx() {
    if [ -z "$1" ]; then
        echo "Please provide a project name. Example: newgame my-game"
        return 1
    fi

    cp -r ~/roblox/fish-template ~/roblox/"$1"
    cd ~/roblox/"$1"
    echo "Created and moved into ~/roblox/$1!"
}

# Cross-Platform Plugins
if command -v brew >/dev/null 2>&1; then
    P_PATH="$(brew --prefix)/share"
else
    P_PATH="/usr/share/zsh/plugins"
fi

# Completion
autoload -Uz compinit && compinit -d "$HOME/.zcompdump"

# Remove case sensitivity
zstyle ':completion:*' matcher-list 'm:{a-z}={A-Za-z}'


# only load autosuggestions from completions... NOT history
ZSH_AUTOSUGGEST_STRATEGY=(completion)
source "$P_PATH/zsh-autosuggestions/zsh-autosuggestions.zsh"

# Syntax Highlighting
source "$P_PATH/zsh-fast-syntax-highlighting/fast-syntax-highlighting.plugin.zsh"
