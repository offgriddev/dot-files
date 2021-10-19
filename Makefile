main-dependencies:
	/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
	sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
	brew install neovim yarn nodejs golang nvm git
	brew install cask homebrew/cask-versions/iterm2-nightly
	cp .bashrc .bash_profile .gitconfig .zshrc ~

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
	rm -rf ~/.config/nvim/plugged
	sh -c 'curl -fLo ~/nvim/site/autoload/plug.vim --create-dirs \
       https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
	mkdir -p ~/.config/nvim
	cp -r vim-files/* ~/.config/nvim
	nvim -c "execute 'PlugInstall | qa'"
	nvim -c "execute 'CocInstall coc-json coc-tsserver coc-css coc-git coc-eslint coc-html coc-go coc-graphql coc-sh coc-swagger | qa'"

refresh-plugins:
	cp ./vim-files/vim-plugin-config.vim ~/.config/nvim
	nvim -c "execute 'PlugInstall | qa'"
	nvim

refresh-shell:
	cp ./.zshrc ~/
	source ~/.zshrc
