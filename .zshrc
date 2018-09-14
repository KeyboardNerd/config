# Source Prezto.
if [[ -s "${ZDOTDIR:-$HOME}/.zprezto/init.zsh" ]]; then
  source "${ZDOTDIR:-$HOME}/.zprezto/init.zsh"
fi

unsetopt share_history

# PATH changes
export GOROOT=/usr/local/go
export GOPATH=$HOME/go
export GOBIN=$HOME/go/bin
export PATH=$PATH:$GOBIN:~/.goenv/shims

# alias git
alias gs='git status'
alias gp='git pull'
alias gsync='git stash && git fetch upstream && git checkout master && git merge upstream/master && git checkout - &&'

# alias docker
alias di='docker images'
alias dp='docker ps'
alias dpa='docker ps -a'
alias d_s='docker stop'
alias d_r='docker rm'

# alias macos
alias showfiles='defaults write com.apple.finder AppleShowAllFiles YES && killall Finder'
alias hidefiles='defaults write com.apple.finder AppleShowAllFiles NO && killall Finder'

# fuck stuff
alias fuck_pyc="find . -name '*.pyc\' | xargs rm -f"
alias fuck_pip="pip freeze | xargs pip uninstall -y"

# alias go related
alias gopath='echo setting GOPATH=$(pwd -P) && export GOPATH=$(pwd -P) && echo GOPATH=$GOPATH'
