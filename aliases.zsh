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
eval "$(fasd --init auto)"

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
eval "$(hub alias -s)"

# The rest of my fun git aliases
alias glog="git log --graph --pretty=format:'%Cred%h%Creset %an: %s - %Creset %C(yellow)%d%Creset %Cgreen(%cr)%Creset' --abbrev-commit --date=relative"
alias gl='git pull --prune'
alias gp='git push origin HEAD'
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
alias gm='git merge'
alias gr='git remote -v'
alias gcp='git cherry-pick'
alias gcpn='gcp -n'

alias gpr='git pull-request'

# More advanced
alias fastwlan='sudo iwconfig wlan0 power off'

# copy with a progress bar.
alias cpv="rsync -poghb --backup-dir=/tmp/rsync -e /dev/null --progress --"

# Apache
alias apache='sudo service apache2'
alias apache.start='apache start'
alias apache.stop='apache stop'
alias apache.reload='apache reload'
alias apache.restart='apache restart'
alias apache.log="tail -f /var/log/apache2/error.log | sed 's/\\n/\n/g'"

# System
alias update='sudo apt-get update && sudo apt-get upgrade'

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

alias platformspeedup='.local/bin/sshuttle -r root@138.201.90.51 136.243.150.175'
