# SSH_ENV=$HOME/.ssh/environment

#! /bin/bash
eval `ssh-agent -s`
ssh-add



alias ls='ls -hF -1 --color=tty --sort=extension --show-control-chars'

alias cls='clear'

alias gl='git log --pretty=format:"%h %ad | %s%d [%an]" --graph  --date=short  --max-count=40 $*'
alias gs='git status'
alias ga='git add .'
alias gco='git commit -m $*'
alias gcom='git commit -a -m $*'
alias push='git push -u origin master'
alias pull='git pull'

alias pro='cd /d/projects'

# alias subl='/d/programs/Sublime\ Text\ 3/sublime_text.exe' $*

alias i='npm i $*'
alias s='npm start $*'
alias r='npm run $*'
