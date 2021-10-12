export ZSH="$HOME/.oh-my-zsh"

ZSH_THEME="gruvbox"
SOLARIZED_THEME="dark"
# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
setopt appendhistory autocd beep extendedglob nomatch notify
bindkey -v
# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
zstyle :compinstall filename "$HOME/.zshrc"

autoload -Uz compinit
compinit

alias v='NVIM_TUI_ENABLE_TRUE_COLOR=1 nvim .'
alias vim='NVIM_TUI_ENABLE_TRUE_COLOR=1 nvim .'
alias ls='ls -AG'
alias l='ls -AG@ou'
alias ..='cd ..'
alias ~='cd ~'
alias git='hub'
alias ...='cd ../..'
alias hrng='grep -Hrn'
alias cut='gcut'

# repos
alias godir='cd ~/source/go/src/github.com/jeryanders'

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
export RACK_DIR="$HOME/source/Rack-SDK"
plugins=(git)
export SSLKEYLOGFILE=~/sslkeylog.log

source $ZSH/oh-my-zsh.sh

if [[ -n $SSH_CONNECTION ]]; then
  export EDITOR='vim'
else
  export EDITOR='nvim'
fi
export NVM_DIR="$HOME/.nvm"
  [ -s "/usr/local/opt/nvm/nvm.sh" ] && . "/usr/local/opt/nvm/nvm.sh"  # This loads nvm
  [ -s "/usr/local/opt/nvm/etc/bash_completion.d/nvm" ] && . "/usr/local/opt/nvm/etc/bash_completion.d/nvm"  # This loads nvm bash_completion

export PATH="/usr/local/opt/terraform@0.11/bin:$PATH"
export PATH="/usr/local/opt/sqlite/bin:$PATH"

# The next line updates PATH for the Google Cloud SDK.
if [ -f '/Users/jess4168/Downloads/google-cloud-sdk/path.zsh.inc' ]; then . '/Users/jess4168/Downloads/google-cloud-sdk/path.zsh.inc'; fi

# The next line enables shell command completion for gcloud.
if [ -f '/Users/jess4168/Downloads/google-cloud-sdk/completion.zsh.inc' ]; then . '/Users/jess4168/Downloads/google-cloud-sdk/completion.zsh.inc'; fi
export PATH="/usr/local/opt/llvm/bin:$PATH"
  export LDFLAGS="-L/usr/local/opt/llvm/lib"
  export CPPFLAGS="-I/usr/local/opt/llvm/include"

log () {
  echo -e "${white}==> $@${reset}"
}
info () {
  echo -e "${bold}${white}==> $@${reset}"
}
warn () {
  echo -e "${bold}${yellow}==> $@${reset}"
}
error () {
  echo -e "${bold}${red}$@${reset}"
}
