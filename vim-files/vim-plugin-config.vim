call plug#begin()
" Core
Plug 'morhetz/gruvbox'
" Plug 'Shougo/unite.vim'
" Plug 'roxma/nvim-yarp'
" if !has('nvim')
"   Plug 'roxma/vim-hug-neovim-rpc'
" endif
" Plug 'ncm2/ncm2'
" Plug 'tpope/vim-surround'

" Autocomplete
" NOTE: you need to install completion sources to get completions. Check
" our wiki page for a list of sources: https://github.com/ncm2/ncm2/wiki
" Plug 'ncm2/ncm2-bufword'
" Plug 'ncm2/ncm2-path'
" Plug 'ncm2/ncm2-tern',  {'do': 'npm install'}

" NERDTree (i finally gave in)
Plug 'scrooloose/nerdtree'
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'kien/ctrlp.vim'
Plug 'mhinz/vim-grepper', { 'on_cmd' : 'Grepper','loadconf' : 1}
Plug 'Shougo/vimproc.vim', {'build' : [(executable('gmake') ? 'gmake' : 'make')]} " https://teratail.com/questions/168402
Plug 'vim-airline/vim-airline'
Plug 'neomake/neomake'
Plug 'Shougo/denite.nvim'
Plug 'rhysd/clever-f.vim', {'merged' : 0}
Plug 'Raimondi/delimitMate'
Plug 'terryma/vim-multiple-cursors'
Plug 'mhinz/vim-startify'
Plug 'ntpeters/vim-better-whitespace'
Plug 'brooth/far.vim'

" linting
Plug 'dense-analysis/ale'

" Git
Plug 'junegunn/gv.vim', { 'on_cmd' : ['GV']}
Plug 'tpope/vim-fugitive',   { 'merged' : 0}
Plug 'airblade/vim-gitgutter',   { 'merged' : 0}
Plug 'lambdalisue/gina.vim', { 'on_cmd' : 'Gina'}
Plug 'tpope/vim-dispatch', { 'merged' : 0}
Plug 'lambdalisue/vim-gita', { 'on_cmd' : 'Gita'}

" JavaScript
Plug 'heavenshell/vim-jsdoc', { 'on_cmd': 'JsDoc' }
Plug 'mmalecki/vim-node.js', { 'on_ft': 'javascript' }
Plug 'martinda/Jenkinsfile-vim-syntax'
Plug 'moll/vim-node', { 'on_ft': 'javascript' }
Plug 'othree/es.next.syntax.vim', { 'on_ft': 'javascript' }
Plug 'othree/es.next.syntax.vim'
Plug 'pangloss/vim-javascript'
Plug 'isruslan/vim-es6'
Plug 'MaxMEllon/vim-jsx-pretty'

" HTML5
Plug 'mattn/emmet-vim'
Plug 'othree/html5.vim'

" CSS
Plug 'hail2u/vim-css3-syntax'
Plug 'groenewege/vim-less'
Plug 'ap/vim-css-color'

" Markdown
Plug 'plasticboy/vim-markdown'

" Go
Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }
Plug 'neoclide/coc.nvim', {'do': 'yarn install --frozen-lockfile'}

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
Plug 'OmniSharp/omnisharp-vim'
Plug 'SirVer/ultisnips'
Plug 'OrangeT/vim-csharp'

" Snippets
Plug 'honza/vim-snippets'

Plug 'liuchengxu/vim-clap'
call plug#end()
