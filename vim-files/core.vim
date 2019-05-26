filetype plugin indent on
syntax enable
colorscheme gruvbox
set number relativenumber
set termguicolors

let mapleader = " "
set mouse=nicr

" [t or ]t for next and previous tab
nnoremap <silent> [t :tabprevious<cr>
nnoremap <silent> ]t :tabnext<cr>

inoremap " ""<left>
inoremap ' ''<left>
inoremap ( ()<left>
inoremap [ []<left>
inoremap { {}<left>
inoremap {<CR> {<CR>}<ESC>O
inoremap {;<CR> {<CR>};<ESC>O
