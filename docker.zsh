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

alias dphp5='docker run -it --rm --name php5 -v "$(pwd)":/tmp -w /tmp php:5-cli php' 
alias dphp5i='docker run -it --rm --name php5 -v "$(pwd)":/tmp -w /tmp php:5-cli' 
alias dphp7='docker run -it --rm --name php7 -v "$(pwd)":/tmp -w /tmp php:7-cli php'
alias dphp7i='docker run -it --rm --name php7 -v "$(pwd)":/tmp -w /tmp php:7-cli'

alias daphp5='docker run -it --rm -P --name temp-aphp -v "$(pwd)":/var/www/site m038/apache-php'
alias daphp5port='docker port temp-aphp 80 | grep -Po '\d{5}' | xclip -selection c'

compdef -e 'words[1]=(docker exec); service=docker; (( CURRENT+=2 )); _docker' dbash
dbash () { docker exec -t -i $1 bash }
dzsh () { docker exec -t -i $1 zsh }
