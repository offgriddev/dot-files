let g:grepper = {
    \ 'tools': ['pt', 'git'],
    \ 'pt': {
    \   'grepprg':    'pt --nocolor --nogroup',
    \   'grepformat': '%f:%l:%m',
    \   'escape':     '\+*^$()[]',
    \ }}

nnoremap <leader>g :GrepperAg<cr>
let g:grepper = { 'next_tool': '<leader>g' }
