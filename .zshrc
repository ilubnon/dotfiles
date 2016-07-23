csp() {
  local IFS=:
  echo "$*"
}

PATHS=(
  /usr/local/bin
  /usr/bin
  /bin
  /usr/local/sbin
  /usr/sbin
  /sbin
  ~/.pyenv
  ~/.pyenv/bin
)

export PATH=$(csp ${PATHS[@]})
export EDITOR='mvim'
export GIT_EDITOR=mvim

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# ssh
export SSH_KEY_PATH="~/.ssh/id_rsa"

#full terminal colors
export TERM="xterm-256color"

function _update_ps1()
{
  export PROMPT="$(~/.powerline-zsh.py $?)"
}

precmd()
{
  _update_ps1
}

# Initialize pyenv on load of terminal
eval "$(pyenv init -)"

# auto ativate virtualenv for pyenv
eval "$(pyenv virtualenv-init -)"

alias brew="env PATH=${PATH//$(pyenv root)\/shims:/} brew" #command brew doctor contains warning for path pyenv...


source ~/.antigen.zsh

antigen use oh-my-zsh

antigen bundle gitignore
antigen bundle lein
antigen bundle command-not-found
antigen bundle web-search
antigen bundle common-aliases
antigen bundle encode64
antigen bundle tmux
antigen bundle pip

# Syntax highlighting bundle.
antigen bundle zsh-users/zsh-syntax-highlighting

# Load the theme.
#antigen theme half-life

antigen apply

unalias rm

#ilubnon

#Recursive delete .DS_Store files
alias cleanup_dsstore="find . -name '*.DS_Store' -type f -ls -delete"

#Empty the trash on all mounted volumes and the main HDD. then clear the useless sleepimage
alias emptytrash="sudo rm -rfv /Volumes/*/.Trashes; rm -rfv ~/.Trash; sudo rm /private/var/vm/sleepimage"

#Networking. IP address, dig, DNS
alias flushdns="dscacheutil -flushcache"
alias myip="dig +short myip.opendns.com @resolver1.opendns.com"
alias dig="dig +nocmd any +multiline +noall +answer"

#Aliases
alias ls="/bin/ls -CFG"
alias grep="/usr/bin/grep --color"
alias hosts="vim /etc/hosts"
alias where=which #something i forget :-)
alias docker-env='eval "$(docker-machine env default)"'
alias spaste="curl -F 'sprunge=<-' http://sprunge.us"
alias g="gdb -tui"
alias irc="TERM=screen-256color screen irssi"
alias openprivate="ecryptfs-mount-private"
alias closeprivate="ecryptfs-umount-private"

# Navigation
alias ..="cd .. && pwd"
alias ...="cd ../.. && pwd"
alias ....="cd ../../.. && pwd"
alias .....="cd ../../../.. && pwd"

# Shortcuts
alias g="git"
alias v="vim"
alias ungz="gunzip -k"
alias fs="stat -f \"%z bytes\""
