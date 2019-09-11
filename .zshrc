# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
setopt appendhistory autocd beep extendedglob nomatch notify
bindkey -v
# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
zstyle :compinstall filename '/Users/atomdata/.zshrc'

autoload -Uz compinit
compinit

alias v='NVIM_TUI_ENABLE_TRUE_COLOR=1 nvim .'
alias vim='NVIM_TUI_ENABLE_TRUE_COLOR=1 nvim .'
alias ls='ls -AG'
alias l='ls -AG@ou'
alias ..='cd ..'
alias ~='cd ~'
alias ...='cd ../..'
alias hrng='grep -Hrn'
alias work_hack="sh $SCRIPT_PATH/work_hack_session.sh"
alias home_hack="sh $SCRIPT_PATH/home_hack_session.sh"

# repos
alias japi='cd ~/source/racker/janus-azure'
alias jui='cd ~/source/racker/janus-azure-ui'

export SCRIPT_PATH="$HOME/Documents/linux/dot-files/scripts"
export GOPATH="$HOME/source/go"
export PATH="$PATH:$GOPATH/bin:$HOME/Library/Python/2.7/bin"
export LDFLAGS="-L/usr/local/opt/libffi/lib"
export PKG_CONFIG_PATH="/usr/local/opt/libffi/lib/pkgconfig"
export PATH="/usr/local/opt/icu4c/bin:$PATH"
export PATH="/usr/local/opt/icu4c/sbin:$PATH"
export LDFLAGS="-L/usr/local/opt/icu4c/lib"
export PATH="/Library/Frameworks/Python.framework/Versions/3.7/bin:${PATH}"
export PATH="$HOME/.cargo/bin:$PATH"
export CPPFLAGS="-I/usr/local/opt/icu4c/include"
export PKG_CONFIG_PATH="/usr/local/opt/icu4c/lib/pkgconfig"
export PATH="$HOME/.yarn/bin:$HOME/.config/yarn/global/node_modules/.bin:$PATH"

  # Set Spaceship ZSH as a prompt
  autoload -U promptinit; promptinit
  prompt spaceship
