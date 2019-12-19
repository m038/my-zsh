# ===== Basics

# Disable beep
setopt NO_BEEP

# If you type foo, and it isn't a command, and it is a directory in your cdpath, go there
setopt AUTO_CD

# Allow comments even in interactive shells (especially for Muness)
setopt INTERACTIVE_COMMENTS

# ===== History

# Allow multiple terminal sessions to all append to one zsh command history
setopt APPEND_HISTORY 

# Add comamnds as they are typed, don't wait until shell exit
setopt INC_APPEND_HISTORY 

# When trimming, trim oldest dupes first
setopt HIST_EXPIRE_DUPS_FIRST

# Do not write events to history that are duplicates of previous events
setopt HIST_IGNORE_DUPS

# Do not save command in history when first character is a space
setopt HIST_IGNORE_SPACE

# When searching history don't display results already cycled through twice
setopt HIST_FIND_NO_DUPS

# Remove extra blanks from each command line being added to history
setopt HIST_REDUCE_BLANKS

# Include more information about when the command was executed, etc
setopt EXTENDED_HISTORY

# Imports new commands and appends typed commands to history
setopt SHARE_HISTORY

# ===== Completion 

# Allow completion from within a word/phrase
setopt COMPLETE_IN_WORD 

# When completing from the middle of a word, move the cursor to the end of the word
setopt ALWAYS_TO_END            

# Show completion menu on successive tab press
setopt AUTO_MENU

# Do not select first completion entry
unsetopt MENU_COMPLETE

# This will use named dirs when possible
setopt AUTO_NAME_DIRS

# ===== Prompt

# Enable parameter expansion, command substitution, and arithmetic expansion in the prompt
setopt PROMPT_SUBST

setopt CORRECT

# This makes cd=pushd
setopt AUTO_PUSHD

# If we have a glob this will expand it
setopt GLOB_COMPLETE
setopt PUSHD_MINUS

# No more annoying pushd messages...
setopt PUSHD_SILENT

# blank pushd goes to home
setopt PUSHD_TO_HOME

# this will ignore multiple directories for the stack.  Useful?  I dunno.
setopt PUSHD_IGNORE_DUPS

# Be Reasonable!
setopt NUMERIC_GLOB_SORT

# I don't know why I never set this before.
setopt EXTENDED_GLOB	

# Case insensitive globbing
setopt nocaseglob 

