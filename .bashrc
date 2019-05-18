#[ -f ~/.fzf.bash ] && source ~/.fzf.bash
[[ $TERM != "screen-256color" ]] && exec tmux

alias ls='ls -AG'
alias l='ls -AG@ou'
alias ..='cd ..'
alias ~='cd ~'
alias ...='cd ../..'
alias hrng='grep -Hrn'

# repos
alias japi='cd ~/source/racker/janus-azure'
alias jui='cd ~/source/racker/janus-azure-ui'

# Default to a full-featured prompt, but use PROMPT_MODE if that's set
# prompt "${PROMPT_MODE:-on}"

PS1="\n\[\e[0;1;37;44m\]-- \w \[\e[0;37m\]\n$ "
#PS1="\[\033[00;40m\]({ \u, \h })\[\033[00m\] \[\033[04;36m\]\w\[\033[00m\]  "
#PS1="\u@\h:\w\$ "

export GOPATH="$HOME/go"
export PATH="$PATH:$GOPATH/bin:$HOME/Library/Python/2.7/bin"

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# change editing mode to vi
set editing-mode vi
set -o vi
#bind -P


