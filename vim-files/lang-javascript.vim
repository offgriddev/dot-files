let g:javascript_plugin_jsdoc = 1

nnoremap <silent><buffer> <F4> :ImportJSWord<CR>
nnoremap <silent><buffer> <Leader>ji :ImportJSWord<CR>
nnoremap <silent><buffer> <Leader>jf :ImportJSFix<CR>
nnoremap <silent><buffer> <Leader>jg :ImportJSGoto<CR>

inoremap <silent><buffer> <F4> <Esc>:ImportJSWord<CR>a
inoremap <silent><buffer> <C-j>i <Esc>:ImportJSWord<CR>a
inoremap <silent><buffer> <C-j>f <Esc>:ImportJSFix<CR>a
inoremap <silent><buffer> <C-j>g <Esc>:ImportJSGoto<CR>a

" Allow prompt for interactive input.
let g:jsdoc_allow_input_prompt = 1

" Prompt for a function description
let g:jsdoc_input_description = 1

" Set value to 1 to turn on detecting underscore starting functions as private convention
let g:jsdoc_underscore_private = 1

" Enable to use ECMAScript6's Shorthand function, Arrow function.
let g:jsdoc_enable_es6 = 1

"autocmd User Node
"  \ if &filetype == "javascript" |
"  \   nmap <buffer> <C-w>f <Plug>NodeVSplitGotoFile |
"  \   nmap <buffer> <C-w><C-f> <Plug>NodeVSplitGotoFile |
"  \ endif

autocmd FileType javascript setlocal shiftwidth=2 softtabstop=2 expandtab tabstop=2 cindent smartindent autoindent

let g:javascript_conceal_function             = "ƒ"
let g:javascript_conceal_null                 = "ø"
let g:javascript_conceal_this                 = "@"
let g:javascript_conceal_return               = "⇚"
let g:javascript_conceal_undefined            = "¿"
let g:javascript_conceal_NaN                  = "ℕ"
let g:javascript_conceal_prototype            = "¶"
let g:javascript_conceal_static               = "•"
let g:javascript_conceal_super                = "Ω"
let g:javascript_conceal_arrow_function       = "⇒"
