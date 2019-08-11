autocmd FileType go setlocal tabstop=2 softtabstop=0 noexpandtab
autocmd FileType go setlocal autowrite
autocmd FileType go nmap <leader>b  <Plug>(go-build)
autocmd FileType go nmap <leader>r  <Plug>(go-run)
autocmd FileType go nmap <leader>t  <Plug>(go-test)

call deoplete#custom#option('omni_patterns', { 'go': '[^. *\t]\.\w*' })
let g:go_metalinter_autosave = 1
let g:go_metalinter_enabled = ['vet', 'golint', 'errcheck']

let g:syntastic_go_checkers = ['golint', 'govet']
let g:syntastic_mode_map = { 'mode': 'active', 'passive_filetypes': ['go'] }
let g:go_fmt_command = "goimports"
let g:go_auto_type_info = 1
