# Colorize output, add file type indicator, and put sizes in human readable format
alias ls='ls -GFh'
alias ll='ls -GFhl'

alias df='df -H'
alias du='du -ch'
alias top='atop'

alias c='xclip -selection clipboard'
alias v='xclip -selection clipboard -o'

alias realtime='/usr/bin/time'
alias parallel='parallel --no-notice'

# fasd
if [ -x "$(command -v fasd)" ]; then
    eval "$(fasd --init auto)"
fi

# Practical commands
alias cl='clear'

alias h='history'
alias j='jobs -l'

alias path='echo -e ${PATH//:/\\n}'
alias now='date +%T'
alias nowtime=now
alias nowdate='date +"%d-%m-%Y"'

alias ports='netstat -tulanp'

# clipboard
alias xc='xclip'

# Git stuff
alias g='git'
if [ -x "$(command -v hub)" ]; then
    eval "$(hub alias -s)"
fi

# The rest of my fun git aliases
alias glog="git log --graph --pretty=format:'%Cred%h%Creset %an: %s - %Creset %C(yellow)%d%Creset %Cgreen(%cr)%Creset' --abbrev-commit --date=relative"
alias gl='git pull --prune'
alias gp='git push'
alias gpo='gp origin'
alias gd='git diff'
alias gc='git commit'
alias gca='git commit -a'
alias gcam='git commit -a -m'
alias gch='git checkout'
alias gchb='git checkout -b'
alias gb='git branch'
alias gbv='git branch -v'
alias gba='git branch -a'
alias gs='git status' # upgrade your git if -sb breaks for you. it's fun.
alias grm="git status | grep deleted | awk '{\$1=\$2=\"\"; print \$0}' | \
perl -pe 's/^[ \t]*//' | sed 's/ /\\\\ /g' | xargs git rm"
alias gama='git ls-files --modified | xargs git add -u'
alias ga='git add'
alias gaa='git add -u'
alias gf='git fetch'
alias gfo='gf origin'
alias gm='git merge'
alias gmom='gm origin/master'
alias gpl='git pull'
alias gplo'gpl origin'
alias gplom='gplo master'
alias gr='git remote -v'
alias gcp='git cherry-pick'
alias gcpn='gcp -n'
alias gpr='git pull-request'
alias gt='git tag --sort=v:refname'

# Composer
alias c='composer'
alias cg='composer global'

# More advanced
alias fastwlan='sudo iwconfig wlan0 power off'

# copy with a progress bar.
alias cpv="rsync -poghb --backup-dir=/tmp/rsync -e /dev/null --progress --"

## pass options to free ## 
alias meminfo='free -m -l -t'
 
## get top process eating memory
alias psmem='ps auxf | sort -nr -k 4'
alias psmem10='ps auxf | sort -nr -k 4 | head -10'
 
## get top process eating cpu ##
alias pscpu='ps auxf | sort -nr -k 3'
alias pscpu10='ps auxf | sort -nr -k 3 | head -10'
 
## Get server cpu info ##
alias cpuinfo='lscpu'
 
## older system use /proc/cpuinfo ##
##alias cpuinfo='less /proc/cpuinfo' ##
 
## get GPU ram on desktop / laptop## 
alias gpumeminfo='grep -i --color memory /var/log/Xorg.0.log'
