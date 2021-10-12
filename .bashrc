#[ -f ~/.fzf.bash ] && source ~/.fzf.bash

#[[ $TERM != "screen-256color" ]] && exec tmux

GIT_PS1_SHOWDIRTYSTATE=1

alias v='NVIM_TUI_ENABLE_TRUE_COLOR=1 nvim .'
alias vim='NVIM_TUI_ENABLE_TRUE_COLOR=1 nvim .'
alias ls='ls -AG'
alias l='ls -AG@ou'
alias ..='cd ..'
alias ~='cd ~'
alias ...='cd ../..'
alias hrng='grep -Hrn'

# Default to a full-featured prompt, but use PROMPT_MODE if that's set
# prompt "${PROMPT_MODE:-on}"

PS1='\n$(__git_ps1 " \e[0;1;33m\](%s)\e[0;1m\] -- ")\[\e[0;36m\]\w \[\e[m\]\n$ '

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
