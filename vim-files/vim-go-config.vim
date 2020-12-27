autocmd FileType go setlocal tabstop=2 softtabstop=0 noexpandtab
autocmd FileType go setlocal autowrite
autocmd FileType go nmap <leader>b  <Plug>(go-build)
autocmd FileType go nmap <leader>r  <Plug>(go-run)
autocmd FileType go nmap <leader>t  <Plug>(go-test)
" disable vim-go :GoDef short cut (gd)
" this is handled by LanguageClient [LC]
let g:go_def_mapping_enabled = 0
let g:go_metalinter_autosave = 1
let g:go_metalinter_enabled = ['vet', 'golint', 'errcheck']
let g:go_fmt_command = "goimports"
let g:go_auto_type_info = 1
let g:go_highlight_array_whitespace_error = 0
let g:go_highlight_chan_whitespace_error = 0
let g:go_fold_enable = ['block', 'import', 'varconst', 'package_comment']
let g:go_highlight_extra_types = 0
let g:go_highlight_space_tab_error = 0
let g:go_highlight_trailing_whitespace_error = 0
let g:go_highlight_operators = 1
let g:go_highlight_functions = 1
let g:go_highlight_function_parameters = 1
let g:go_highlight_function_calls = 1
let g:go_highlight_types = 1
let g:go_highlight_fields = 1
let g:go_highlight_build_constraints = 1
let g:go_highlight_generate_tags = 1
let g:go_highlight_string_spellcheck = 1
let g:go_highlight_format_strings = 1
let g:go_highlight_variable_declarations = 1
let g:go_highlight_variable_assignments = 1
let g:go_highlight_debug = 1
let g:go_debug_address = '127.0.0.1:8181'
let g:go_debug_log = 'debugger, rpc'
let g:go_debug_windows = {
        \ 'stack': 'leftabove 20vnew',
        \ 'out':   'botright 10new',
        \ 'vars':  'leftabove 30vnew',
  \ }
