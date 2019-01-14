" general
set nu
set tabstop=2 softtabstop=0 expandtab shiftwidth=2 smarttab
let mapleader = ','
filetype indent on
set smartindent
set filetype=html
set backspace=indent,eol,start

" colors
syntax enable
" syntax on
" colorscheme tokyo-metro 
colorscheme molokai 
let g:rehash256 = 1
let g:molokai_original = 1
" set termguicolors
" set t_Co=256

" custom mappings
map <leader>t :terminal<CR>

" vim-plug
call plug#begin('~/.vim/plugged')

Plug 'fatih/vim-go'
Plug 'pangloss/vim-javascript'
Plug 'scrooloose/nerdtree'
Plug 'nsf/gocode'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'Shougo/neocomplete.vim'
Plug 'kien/ctrlp.vim'
Plug 'leafgarland/typescript-vim'
Plug 'koirand/tokyo-metro.vim'
Plug 'vim-syntastic/syntastic'
Plug 'ternjs/tern_for_vim', { 'for': 'javascript' }
Plug 'crusoexia/vim-monokai'
Plug 'othree/yajs.vim'
Plug 'othree/es.next.syntax.vim'
Plug 'tomasr/molokai'
Plug 'mechatroner/rainbow_csv'
Plug 'elzr/vim-json'
Plug 'mattn/emmet-vim'
Plug 'zivyangll/git-blame.vim'
Plug 'hashivim/vim-terraform'
Plug 'mxw/vim-jsx'
" Plug 'grassdog/tagman.vim'
" Plug 'chrisbra/csv.vim'
" Plug 'Valloric/YouCompleteMe'

call plug#end()

" go
let g:go_fmt_command = "goimports"
let g:go_fmt_autosave = 1
let g:go_highlight_functions = 1
let g:go_highlight_methods = 1
let g:go_highlight_structs = 1
let g:go_highlight_operators = 1
let g:go_highlight_build_constraints = 1
map <C-n> :cnext<CR>
map <C-m> :cprevious<CR>
nnoremap <leader>a :cclose<CR>
autocmd FileType go nmap <leader>b  <Plug>(go-build)
autocmd FileType go nmap <leader>r  <Plug>(go-run)

" NERDTree
autocmd vimenter * NERDTree
map <C-e> :NERDTreeTabsToggle<CR>:NERDTreeMirrorOpen<CR>
map <leader>e :NERDTreeFind<CR>
nmap <leader>nt :NERDTreeFind<CR>
let NERDTreeShowBookmarks=1
let NERDTreeIgnore=['\.pyc', '\~$', '\.swo$', '\.swp$', '\.git', '\.hg', '\.svn', '\.bzr']
let NERDTreeChDirMode=0
let NERDTreeQuitOnOpen=0
let NERDTreeMouseMode=2
let NERDTreeShowHidden=1
let NERDTreeKeepTreeInNewTab=1
let g:nerdtree_tabs_open_on_gui_startup=1
let g:nerdtree_tabs_open_on_console_startup=1
map <leader>n <plug>NERDTreeTabsToggle<CR>
" locate current file in NERDTree
map <leader>l :NERDTreeFind<CR>
" close vim if only nerdtree
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif

" airline
let g:airline#extensions#tabline#enabled = 1
let g:airline_powerline_fonts = 1
" powerline symbols
" sudo apt install fonts-powerline
let g:airline_left_sep = ''
let g:airline_left_alt_sep = ''
let g:airline_right_sep = ''
let g:airline_right_alt_sep = ''
let g:airline_symbols_branch = ''
let g:airline_symbols_readonly = ''
let g:airline_symbols_linenr = '☰'
let g:airline_symbols_maxlinenr = ''
let g:airline_theme = 'powerlineish'

" neocomplete
let g:neocomplete#enable_at_startup = 1
" autocmd FileType javascript NeoCompleteLock

" Automatically add closing braces
inoremap {<CR> {<CR>}<Esc>ko
inoremap [<CR> [<CR>]<Esc>ko
inoremap (<CR> (<CR>)<Esc>ko

" CtrlP
let g:ctrlo_working_path_mode='a'

" syntastic
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
let g:syntastic_javascript_checkers = ['eslint']
let g:syntastic_typescript_checkers = ['tslint']
let g:javascript_plugin_jsdoc = 1

" GitBlame
nnoremap <Leader>s :<C-u>call gitblame#echo()<CR>
