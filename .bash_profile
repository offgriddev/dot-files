[ -f /usr/local/etc/bash_completion ] && . /usr/local/etc/bash_completion || {
    # if not found in /usr/local/etc, try the brew --prefix location
    [ -f "$(brew --prefix)/etc/bash_completion.d/git-completion.bash" ] && \
        . $(brew --prefix)/etc/bash_completion.d/git-completion.bash
}

source "$HOME/.config/nvim/plugged/gruvbox/gruvbox_256palette_osx.sh"
export SCRIPT_PATH="$HOME/Documents/linux/dot-files/scripts"
export GOPATH="$HOME/go"
export PATH="$PATH:$GOPATH/bin:$HOME/Library/Python/2.7/bin"

[[ -s ~/.bashrc ]] && source ~/.bashrc

