call plug#begin()
Plug 'morhetz/gruvbox'
Plug 'scrooloose/nerdtree'
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'kien/ctrlp.vim'
Plug 'mhinz/vim-grepper', { 'on_cmd' : 'Grepper','loadconf' : 1}
Plug 'Shougo/vimproc.vim', {'build' : [(executable('gmake') ? 'gmake' : 'make')]} " https://teratail.com/questions/168402
Plug 'vim-airline/vim-airline'
Plug 'rhysd/clever-f.vim', {'merged' : 0}
Plug 'terryma/vim-multiple-cursors'
Plug 'mhinz/vim-startify'
Plug 'ntpeters/vim-better-whitespace'
Plug 'junegunn/gv.vim', { 'on_cmd' : ['GV']}
Plug 'airblade/vim-gitgutter',   { 'merged' : 0}
Plug 'lambdalisue/gina.vim', { 'on_cmd' : 'Gina'}
Plug 'heavenshell/vim-jsdoc', { 'on_cmd': 'JsDoc' }
Plug 'mmalecki/vim-node.js', { 'on_ft': 'javascript' }
Plug 'martinda/Jenkinsfile-vim-syntax'
Plug 'moll/vim-node', { 'on_ft': 'javascript' }
Plug 'othree/es.next.syntax.vim', { 'on_ft': 'javascript' }
Plug 'othree/es.next.syntax.vim'
Plug 'pangloss/vim-javascript'
Plug 'isruslan/vim-es6'
Plug 'MaxMEllon/vim-jsx-pretty'
Plug 'mattn/emmet-vim'
Plug 'othree/html5.vim'
Plug 'hail2u/vim-css3-syntax'
Plug 'groenewege/vim-less'
Plug 'ap/vim-css-color'
Plug 'plasticboy/vim-markdown'
Plug 'neoclide/coc.nvim', {'do': 'yarn install --frozen-lockfile'}
Plug 'hashivim/vim-terraform'
Plug 'juliosueiras/vim-terraform-completion'
Plug 'hashivim/vim-hashicorp-tools'
Plug 'mileszs/ack.vim'
Plug 'WolfgangMehner/bash-support'
Plug 'vim-scripts/npm.vim'
Plug 'ekalinin/Dockerfile.vim'
Plug 'elzr/vim-json'
Plug 'roxma/vim-tmux-clipboard'
Plug 'cespare/vim-toml'
Plug 'honza/vim-snippets'
Plug 'liuchengxu/vim-clap'
Plug 'lervag/vimtex'
Plug 'jparise/vim-graphql'
Plug 'tpope/vim-fugitive'
Plug 'Raimondi/delimitMate'
Plug 'Numkil/ag.nvim'
Plug 'dense-analysis/ale'
Plug 'heavenshell/vim-jsdoc', {
  \ 'for': ['javascript', 'javascript.jsx','typescript'],
  \ 'do': 'make install'
\}
Plug 'skywind3000/asyncrun.vim'
call plug#end()
