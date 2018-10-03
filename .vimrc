" general
set nu
set tabstop=4 softtabstop=0 expandtab shiftwidth=4 smarttab
let mapleader = ','
filetype indent on
set smartindent
set filetype=html
set backspace=indent,eol,start

" colors
syntax enable
colorscheme monokai
set termguicolors
set t_Co=256

" custom mappings
map <leader>t :terminal<CR>

" vim-plug
call plug#begin('~/.vim/plugged')

Plug 'fatih/vim-go'
Plug 'scrooloose/nerdtree'
Plug 'nsf/gocode'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'Shougo/neocomplete.vim'
Plug 'kien/ctrlp.vim'

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
let g:airline#extensions#tabline#left_sep = ' '
let g:airline#extensions#tabline#left_alt_sep = '>'
let g:airline_theme = 'base16_solarized'

" neocomplete
let g:neocomplete#enable_at_startup = 1

" Automatically add closing braces
inoremap {<CR> {<CR>}<Esc>ko
inoremap [<CR> [<CR>]<Esc>ko
inoremap (<CR> (<CR>)<Esc>ko


