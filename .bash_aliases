# dotfiles (config) related aliases
alias config='/usr/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME'

# cd .. 
function cd_up() {
      cd $(printf "%0.s../" $(seq 1 $1 ));
  }
alias up='cd_up'

# tmux
alias ta='tmux attach'
alias tn='tmux new'

# others
alias install='sudo apt-get install'

# docker-machine

alias dml='docker-machine ls'

# unset docker-machine env
function dm_env_unset() {
    eval $(docker-machine env -u)
}
alias dmu='dm_env_unset'

# set docker-machine env
function dm_env_set() {
    eval $(docker-machine env $1)
}
alias dme='dm_env_set'
