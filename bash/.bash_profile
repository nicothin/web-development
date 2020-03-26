# Сразу перейти в папку проектов
cd ~/projects



# Алиасы
alias ls='ls -1pG'

alias gl='git log --oneline --max-count=40 $*'
alias gs='git status'
alias ga='git add .'
alias gco='git commit -m $*'
alias gcom='git commit -a -m $*'
alias push='git push -u origin master'
alias pull='git pull'

alias pro='cd ~/projects'

alias i='npm i $*'
alias s='npm start $*'
alias r='npm run $*'



# Показать git-ветку
parse_git_branch() {
  git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
}

# Цвета в приглашении к вводу команды
export PS1="\[\033[01;36m\]\u@\h\[\033[00m\] \[\033[01;32m\]\A\[\033[00m\] \W\[\033[32m\]\$(parse_git_branch)\[\033[00m\] \[\033[01;33m\]$\[\033[00m\] "



#  Автодополнение для git
if [ -f ~/.git-completion.bash ]; then
  . ~/.git-completion.bash
fi
