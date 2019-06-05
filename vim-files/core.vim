filetype plugin indent on
syntax enable
colorscheme gruvbox
set number relativenumber
set termguicolors

let mapleader = " "
set mouse=nicra

" [t or ]t for next and previous tab
nnoremap <silent> [t :tabprevious<cr>
nnoremap <silent> ]t :tabnext<cr>

nnoremap <silent> <Leader>J :exe "resize " . (winheight(0) * 5/4)<CR>
nnoremap <silent> <Leader>K :exe "resize " . (winheight(0) * 4/5)<CR>
nnoremap <silent> <Leader>L :exe "vertical resize " . (winwidth(0) * 5/4)<CR>
nnoremap <silent> <Leader>H :exe "vertical resize " . (winwidth(0) * 4/5)<CR>

noremap <Leader>y "*y
noremap <Leader>p "*p
noremap <Leader>Y "+y
noremap <Leader>P "+p

let g:deoplete#enable_at_startup = 1
set shiftwidth=2 softtabstop=2 expandtab tabstop=2


" strip whitespace
let g:better_whitespace_enabled=1
let g:strip_whitespace_on_save=1
