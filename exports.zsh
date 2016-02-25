# Currently this path is appendend to dynamically when picking a ruby version
#export PATH=bin:script:~/.rbenv/bin:~/.bin:node_modules/.bin:/usr/local/sbin:/usr/local/bin:/usr/local/share/npm/bin:/opt/boxen/nvm/v0.8.8/bin:$PATH

export PATH=$PATH:~/.scripts/sourcefabric/
export PATH=$PATH:~/.scripts/services/

# ZSH Autocomplete paths
export FPATH=$FPATH:~/.zsh/completion

# Set default console Java to 1.6
#export JAVA_HOME=/Library/Java/JavaVirtualMachines/jdk1.7.0_13.jdk/Contents/Home
#export ANDROID_SDK_ROOT=/opt/boxen/homebrew/opt/android-sdk

# Setup terminal, and turn on colors
export TERM=xterm-256color
export CLICOLOR=1
export LSCOLORS=Gxfxcxdxbxegedabagacad

# Enable color in grep
#export GREP_OPTIONS='--color=auto'
#export GREP_COLOR='3;33'

export LESS='--ignore-case --raw-control-chars'
export PAGER='less'
export EDITOR='nano'

#export NODE_PATH=/opt/boxen/homebrew/lib/node_modules
#export PYTHONPATH=/usr/local/lib/python2.6/site-packages
# CTAGS Sorting in VIM/Emacs is better behaved with this in place
#export LC_COLLATE=C
