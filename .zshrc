# Path to your dotfiles.
export DOTFILES=$HOME/.dotfiles


# Path to your oh-my-zsh installation.
export ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
ZSH_THEME="tonotdo"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# You can set one of the optional three formats:
# "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# or set a custom format using the strftime function format specifications,
# see 'man strftime' for details.
HIST_STAMPS="dd.mm.yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=$DOTFILES/oh-my-zsh-custom

# Which plugins would you like to load?
# Standard plugins can be found in ~/.oh-my-zsh/plugins/*
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(
    git
    brew
    npm
    macos
    zsh-autosuggestions
    zsh-syntax-highlighting
)

source $ZSH/oh-my-zsh.sh

# You may need to manually set your language environment
export LC_ALL=en_US.UTF-8
export LANG=en_US.UTF-8


export NVM_DIR="$HOME/.nvm"
[ -s "/usr/local/opt/nvm/nvm.sh" ] && . "/usr/local/opt/nvm/nvm.sh"  # This loads nvm
[ -s "/usr/local/opt/nvm/etc/bash_completion" ] && . "/usr/local/opt/nvm/etc/bash_completion"  # This loads nvm bash_completion


# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH
export PATH=$HOME/.composer/vendor/bin:$PATH
export PATH=$HOME/.symfony/bin:$PATH
export PATH=/usr/local/bin:$PATH
export PATH=${PATH}:/usr/local/mysql/bin/

export PATH=$HOME/.npm-packages/bin:$PATH
export PATH=$HOME/.npm-global/bin:$PATH

export PATH=$PATH:/Users/christian/go/bin


# Load the shell dotfiles:
for file in ~/.dotfiles/shell/.{exports,aliases,functions,extra}; do
	[ -r "$file" ] && [ -f "$file" ] && source "$file"
done
unset file

# bun completions
[ -s "/Users/christian_aw/.bun/_bun" ] && source "/Users/christian_aw/.bun/_bun"

# bun
export BUN_INSTALL="$HOME/.bun"
export PATH="$BUN_INSTALL/bin:$PATH"
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion


# Herd injected PHP 8.3 configuration.
export HERD_PHP_83_INI_SCAN_DIR="/Users/christian/Library/Application Support/Herd/config/php/83/"


# Herd injected PHP binary.
export PATH="/Users/christian/Library/Application Support/Herd/bin/":$PATH


# Herd injected PHP 8.2 configuration.
export HERD_PHP_82_INI_SCAN_DIR="/Users/christian/Library/Application Support/Herd/config/php/82/"


# Herd injected PHP 8.1 configuration.
export HERD_PHP_81_INI_SCAN_DIR="/Users/christian/Library/Application Support/Herd/config/php/81/"


# Herd injected PHP 8.0 configuration.
export HERD_PHP_80_INI_SCAN_DIR="/Users/christian/Library/Application Support/Herd/config/php/80/"

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/Users/christian/anaconda3/bin/conda' 'shell.zsh' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/Users/christian/anaconda3/etc/profile.d/conda.sh" ]; then
        . "/Users/christian/anaconda3/etc/profile.d/conda.sh"
    else
        export PATH="/Users/christian/anaconda3/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda initialize <<<

