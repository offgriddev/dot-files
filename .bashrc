#[ -f ~/.fzf.bash ] && source ~/.fzf.bash
#[[ $TERM != "screen-256color" ]] && exec tmux

source "$HOME/.config/nvim/plugged/gruvbox/gruvbox_256palette_osx.sh"

alias v='NVIM_TUI_ENABLE_TRUE_COLOR=1 nvim .'
alias vim='NVIM_TUI_ENABLE_TRUE_COLOR=1 nvim .'
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

# Auto Change Dir
shopt -q -s autocd

# Correct dir spellings
shopt -q -s cdspell

# Make sure display get updated when terminal window get resized
shopt -q -s checkwinsize

# Turn on the extended pattern matching features 
shopt -q -s extglob

# Append rather than overwrite history on exit
shopt -s histappend

# Make multi-line commandsline in history
shopt -q -s cmdhist 

# Get immediate notification of background job termination
set -o notify 

# Disable [CTRL-D] which is used to exit the shell
set -o ignoreeof

# Disable core files
ulimit -S -c 0 > /dev/null 2>&1
