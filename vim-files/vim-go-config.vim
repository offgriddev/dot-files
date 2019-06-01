autocmd FileType go setlocal tabstop=2 softtabstop=0 noexpandtab
call deoplete#custom#option('omni_patterns', { 'go': '[^. *\t]\.\w*' })
