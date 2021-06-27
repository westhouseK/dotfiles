# git管理しているaliasを読み込む
source ~/.bashrc_private

# basic
alias aliasg='cat ~/.bashrc | grep alias'
alias edita='vi ~/.bashrc; source ~/.bashrc;'
alias cata='cat ~/.bashrc'
alias reada='source ~/.bashrc'

# basic method
function mkfile() { for i in `seq $1 $2`; do mkdir ${i}; done }

# change directory
alias cdp='cd ~/Documents/app/product'

# postgres
alias pstart='brew services start postgresql@11'
alias pstop='brew services stop postgresql@11'
alias psqldvd='psql -U postgres -d dvdrental'
alias psqldb='psql -U postgres -d db'

# git
alias gl='git log'
alias ga='git add'
alias gc='git checkout'
alias gs='git status'
alias gpu='git push -u'
alias gcg='git config --list --global'
alias gitalias='git config --list --global | grep alias'

# dockeir
alias dp='docker ps'
alias dpa='docker ps -a'
alias dcu='docker-compose up -d'
alias dsall='docker stop $(docker ps -q)'        # すべてのコンテナを停止
alias drall='docker rm $(docker ps -a -q)'       # すべてのコンテナを削除
alias dstart='open -a Docker'                    # Dockerアプリケーションを起動する
alias dquit="osascript -e 'quit app \"Docker\"'" # Dockerアプリケーションをkillする
function dex() { docker exec -it $1 bash; }      # コンテナの中にbashで入る

# my-php-containter
alias dbphp='docker build --no-cache=true -t westhousek/my_php:v1.1 .'
alias drphp='docker run --rm -d -it -v $PWD/src:/var/www/html/ --name my_php westhousek/my_php:v1.1 bash'
alias dephp='docker exec -it my_php bash'
alias dsphp='docker stop my_php'

# sshログイン
alias ssh='~/bin/ssh-change-profile.sh'

# application action
function start() { open -a $1; }
function stop() { osascript -e "quit app \"${1}\""; }

