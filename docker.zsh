 # docker
alias d='docker'
alias dps='d ps'
alias dpsq='dps -q'
alias dpsa='dps -a'
alias dimg='d images'
alias dip='d inspect --format="{{.NetworkSettings.IPAddress}}"'
alias ds='d start'
alias dh='d stop'
alias dha='dh `dpsq`'

alias dc='docker-compose'

compdef -e 'words[1]=(docker exec); service=docker; (( CURRENT+=2 )); _docker' dbash
dbash () { docker exec -t -i $1 bash }
dzsh () { docker exec -t -i $1 zsh }
