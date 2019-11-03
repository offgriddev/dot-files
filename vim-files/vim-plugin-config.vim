call plug#begin()
" Core
Plug 'morhetz/gruvbox'
Plug 'Shougo/unite.vim'
Plug 'roxma/nvim-yarp'
Plug 'ncm2/ncm2'

" Autocomplete
" NOTE: you need to install completion sources to get completions. Check
" our wiki page for a list of sources: https://github.com/ncm2/ncm2/wiki
Plug 'ncm2/ncm2-bufword'
Plug 'ncm2/ncm2-path'
Plug 'ncm2/ncm2-tern',  {'do': 'npm install'}
" Plug 'ycm-core/YouCompleteMe'

" NERDTree (i finally gave in)
Plug 'scrooloose/nerdtree'
Plug 'Xuyuanp/nerdtree-git-plugin'

Plug 'martinda/Jenkinsfile-vim-syntax'
Plug 'Shougo/vimproc.vim', {'build' : [(executable('gmake') ? 'gmake' : 'make')]} " https://teratail.com/questions/168402
Plug 'vim-airline/vim-airline'
Plug 'neomake/neomake'
Plug 'ervandew/supertab'
Plug 'Shougo/denite.nvim'
Plug 'rhysd/clever-f.vim', {'merged' : 0}
Plug 'Raimondi/delimitMate'
Plug 'terryma/vim-multiple-cursors'
Plug 'mhinz/vim-startify'
Plug 'ntpeters/vim-better-whitespace'

" linting
Plug 'dense-analysis/ale'

" Find / Replace
Plug 'brooth/far.vim'
Plug 'kien/ctrlp.vim'
Plug 'mhinz/vim-grepper', { 'on_cmd' : 'Grepper','loadconf' : 1}

" Git
Plug 'junegunn/gv.vim', { 'on_cmd' : ['GV']}
Plug 'tpope/vim-fugitive',   { 'merged' : 0}
Plug 'airblade/vim-gitgutter',   { 'merged' : 0}
Plug 'lambdalisue/gina.vim', { 'on_cmd' : 'Gina'}
Plug 'tpope/vim-dispatch', { 'merged' : 0}
Plug 'lambdalisue/vim-gita', { 'on_cmd' : 'Gita'}

" JavaScript
" Plug 'Galooshi/vim-import-js', { 'on_ft': 'javascript', 'build' : 'npm install -g import-js' }
Plug 'heavenshell/vim-jsdoc', { 'on_cmd': 'JsDoc' }
" Plug 'maksimr/vim-jsbeautify', { 'on_ft': 'javascript' }
Plug 'mmalecki/vim-node.js', { 'on_ft': 'javascript' }
Plug 'moll/vim-node', { 'on_ft': 'javascript' }
" Plug 'neoclide/vim-jsx-improve', { 'on_ft': 'javascript' }
Plug 'othree/es.next.syntax.vim', { 'on_ft': 'javascript' }
Plug 'othree/yajs.vim', { 'on_ft': 'javascript' }
" Plug 'ternjs/tern_for_vim', { 'on_ft': 'javascript', 'build' : 'npm install' }
Plug 'othree/es.next.syntax.vim'
Plug 'mxw/vim-jsx'
Plug 'pangloss/vim-javascript'
Plug 'isruslan/vim-es6'

" HTML5
Plug 'mattn/emmet-vim'
Plug 'othree/html5.vim'

" CSS
Plug 'hail2u/vim-css3-syntax'
Plug 'groenewege/vim-less'
" Plug 'skammer/vim-css-color'
Plug 'ap/vim-css-color'

" Markdown
Plug 'plasticboy/vim-markdown'

" Go
Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }

" Terraform
Plug 'hashivim/vim-terraform'
Plug 'juliosueiras/vim-terraform-completion'
Plug 'hashivim/vim-hashicorp-tools'

" Ack
Plug 'mileszs/ack.vim'

" Bash
Plug 'WolfgangMehner/bash-support'

" Yarn
Plug 'trkw/yarn.vim'
Plug 'vim-scripts/npm.vim'

" Docker
Plug 'ekalinin/Dockerfile.vim'

" JSON
Plug 'elzr/vim-json'

" TMUX
Plug 'roxma/vim-tmux-clipboard'
Plug 'tmux-plugins/vim-tmux-focus-events'
Plug 'tmux-plugins/vim-tmux'

" TOML
Plug 'cespare/vim-toml'

" .NET
" Plug 'OmniSharp/omnisharp-vim'
" Plug 'SirVer/ultisnips'

" Snippets
Plug 'honza/vim-snippets'

Plug 'liuchengxu/vim-clap'
call plug#end()
