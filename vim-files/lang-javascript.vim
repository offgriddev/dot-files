let g:neomake_javascript_enabled_makers = ['eslint']
let g:neomake_javascript_eslint_maker =  {
      \ 'args': ['--format=compact'],
      \ 'errorformat': '%E%f: line %l\, col %c\, Error - %m,' .
      \   '%W%f: line %l\, col %c\, Warning - %m,%-G,%-G%*\d problems%#',
      \ 'cwd': '%:p:h',
      \ 'output_stream': 'stdout',
      \ }
" let g:neomake_javascript_eslint_args = ['-f', 'compact', '--fix']
" autocmd!
" autocmd User NeomakeFinished call <SID>checktime_if_javascript()
" autocmd FileType javascript setlocal omnifunc=javascriptcomplete#CompleteJS
" autocmd FocusGained * call <SID>checktime_if_javascript()
let g:syntastic_javascript_checkers = ['eslint']
autocmd FileType javascript setlocal omnifunc=javascriptcomplete#CompleteJS
" autocmd FileType javascript setlocal omnifunc=tern#Complete

let g:tern_show_argument_hints='on_hold'
let g:tern_map_keys=1

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
