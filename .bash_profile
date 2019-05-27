[ -f /usr/local/etc/bash_completion ] && . /usr/local/etc/bash_completion || {
    # if not found in /usr/local/etc, try the brew --prefix location
    [ -f "$(brew --prefix)/etc/bash_completion.d/git-completion.bash" ] && \
        . $(brew --prefix)/etc/bash_completion.d/git-completion.bash
}

source "$HOME/.config/nvim/plugged/gruvbox/gruvbox_256palette_osx.sh"
GO111MODULE=on

export GOPATH=~/go

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


[[ -s ~/.bashrc ]] && source ~/.bashrc
