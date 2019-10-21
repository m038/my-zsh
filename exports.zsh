# Global composer binaries

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

# Set default console Java to 1.6
#export JAVA_HOME=/Library/Java/JavaVirtualMachines/jdk1.7.0_13.jdk/Contents/Home
#export ANDROID_SDK_ROOT=~/Dev/android-sdk-linux/tools/android-sdk

# Setup terminal, and turn on colors
export TERM=xterm-256color
export CLICOLOR=1
export LSCOLORS=Gxfxcxdxbxegedabagacad

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

