main-dependencies:
	echo "Installing Homebrew"
	/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
	echo "Installing OHMYZSH"
	sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
	echo "Installing main development packages"
	brew install neovim yarn nodejs golang nvm
	brew install cask homebrew/cask-versions/iterm2-nightly

install-everything:
	make clean
	make main-dependencies
	make revamp-vim

clean:
	mkdir -p ~/.config/nvim
	rm -rdf ~/.config/nvim

cleanboot:
	make clean
	make install-everything

revamp-vim:
	sh -c 'curl -fLo ~/nvim/site/autoload/plug.vim --create-dirs \
       https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
	mkdir -p ~/.config/nvim
	cp -r vim-files/* ~/.config/nvim
	nvim -c "execute 'PlugInstall | q'"
	echo "\nViM Plugins installed"
