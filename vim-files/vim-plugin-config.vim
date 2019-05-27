call plug#begin()
" Core
Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
Plug 'morhetz/gruvbox'
Plug 'Shougo/unite.vim'
Plug 'Shougo/vimfiler.vim',{'merged' : 0, 'loadconf' : 1 , 'loadconf_before' : 1, 'on_cmd' : ['VimFiler', 'VimFilerBufferDir']}
Plug 'Shougo/vimproc.vim', {'build' : [(executable('gmake') ? 'gmake' : 'make')]} " https://teratail.com/questions/168402
Plug 'vim-airline/vim-airline'
Plug 'vim-syntastic/syntastic'
Plug 'mhinz/vim-grepper', { 'on_cmd' : 'Grepper','loadconf' : 1}
Plug 'kien/ctrlp.vim'
Plug 'neomake/neomake'
Plug 'ervandew/supertab'
Plug 'Shougo/denite.nvim'
Plug 'rhysd/clever-f.vim', {'merged' : 0}
Plug 'Raimondi/delimitMate'
Plug 'terryma/vim-multiple-cursors'

" Git
Plug 'junegunn/gv.vim', { 'on_cmd' : ['GV']}
Plug 'tpope/vim-fugitive',   { 'merged' : 0}
Plug 'airblade/vim-gitgutter',   { 'merged' : 0}
Plug 'lambdalisue/gina.vim', { 'on_cmd' : 'Gina'}
Plug 'tpope/vim-dispatch', { 'merged' : 0}
Plug 'lambdalisue/vim-gita', { 'on_cmd' : 'Gita'}
 
" JavaScript
Plug 'Galooshi/vim-import-js', { 'on_ft': 'javascript', 'build' : 'npm install -g import-js' }
Plug 'heavenshell/vim-jsdoc', { 'on_cmd': 'JsDoc' }
Plug 'maksimr/vim-jsbeautify', { 'on_ft': 'javascript' }
Plug 'mmalecki/vim-node.js', { 'on_ft': 'javascript' }
Plug 'moll/vim-node', { 'on_ft': 'javascript' }
Plug 'neoclide/vim-jsx-improve', { 'on_ft': 'javascript' }
Plug 'othree/es.next.syntax.vim', { 'on_ft': 'javascript' }
Plug 'othree/javascript-libraries-syntax.vim', { 'on_ft': ['javascript', 'coffee', 'ls', 'typescript'] }
Plug 'othree/yajs.vim', { 'on_ft': 'javascript' }
Plug 'ternjs/tern_for_vim', { 'on_ft': 'javascript', 'build' : 'npm install' }
Plug 'carlitux/deoplete-ternjs', { 'on_ft': ['javascript'], 'if': has('nvim') }

" Go
Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }

" Terraform
Plug 'hashivim/vim-terraform'
Plug 'juliosueiras/vim-terraform-completion'

" Bash
Plug 'WolfgangMehner/bash-support'
call plug#end()
