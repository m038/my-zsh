# Global composer binaries

# Not default on some linux distros
if [ -d ~/bin/ ]; then
    export PATH=$PATH:/bin
fi
if [ -d ~/sbin/ ]; then
    export PATH=$PATH:/sbin/
fi

if [ -d ~/.composer/vendor/bin/ ]; then
    export PATH=$PATH:~/.composer/vendor/bin/
fi
if [ -d ~/.config/composer/vendor/bin/ ]; then
    export PATH=$PATH:~/.config/composer/vendor/bin/
fi

# ZSH Autocomplete paths
export FPATH=$FPATH:~/.zsh/completion

# Pip binaries
if [ -d ~/.local/bin/ ]; then
    export PATH=$PATH:~/.local/bin
fi

# Android
if [ -d ~/Dev/android-sdk-linux/ ]; then
    export PATH=$PATH:~/Dev/android-sdk-linux/tools
    export PATH=$PATH:~/Dev/android-sdk-linux/platform-tools
fi

# Custom scripts
if [ -d ~/.scripts/ ]; then
    export PATH=$PATH:~/.scripts
fi

# Setup terminal, and turn on colors
export TERM=xterm-256color
# See colors.zsh
#export CLICOLOR=1
#export LSCOLORS=Gxfxcxdxbxegedabagacad

# Color man pages
export LESS_TERMCAP_mb=$'\E[01;32m'
export LESS_TERMCAP_md=$'\E[01;32m'
export LESS_TERMCAP_me=$'\E[0m'
export LESS_TERMCAP_se=$'\E[0m'
export LESS_TERMCAP_so=$'\E[01;47;34m'
export LESS_TERMCAP_ue=$'\E[0m'
export LESS_TERMCAP_us=$'\E[01;36m'
export LESS=-r

# Enable color in grep
#export GREP_OPTIONS='--color=auto'
#export GREP_COLOR='3;33'

export LESS='--ignore-case --raw-control-chars'
export PAGER='less'
export EDITOR='vim'

#export PYTHONPATH=/usr/local/lib/python2.6/site-packages
# CTAGS Sorting in VIM/Emacs is better behaved with this in place
#export LC_COLLATE=C

# Symfony Live 2018
export HOST_GID=$(id -g)
export HOST_UID=$(id -u)
export COMPOSER_HOME="${HOME}/.composer"

