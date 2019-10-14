if [ -f $(brew --prefix)/etc/bash_completion ]; then
  . $(brew --prefix)/etc/bash_completion
fi

parse_git_branch() {
  git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
}

export PS1="\u@\h \[\033[32m\]\w\[\033[33m\]\$(parse_git_branch)\[\033[00m\] $ "
export PATH=/bin:/sbin:/usr/bin:/usr/local/sbin:/usr/local/bin:$PATH
export EDITOR='subl -w'

# Aliases here
alias bex="bundle exec"
alias dok="docker"
alias dokm="docker-machine"
alias doko="docker-compose"
alias drun="docker-compose run --rm"
alias drunapp="docker-compose run --rm app"
alias spec="docker-compose run --rm app bundle exec rspec"
