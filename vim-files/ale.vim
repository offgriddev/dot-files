let g:ale_completion_enabled = 1
let g:ale_completion_max_suggestions = 10
" set omnifunc=ale#completion#OmniFunc
let b:ale_fixers = {
			\'*': ['remove_trailing_lines', 'trim_whitespace'],
			\'javascript': ['eslint'],
			\}

"call deoplete#custom#option('sources', {
""			\ '_': ['ale'],
""			\})


let g:airline#extensions#ale#enabled = 1

function! LinterStatus() abort
	let l:counts = ale#statusline#Count(bufnr(''))

	let l:all_errors = l:counts.error + l:counts.style_error
	let l:all_non_errors = l:counts.total - l:all_errors

	return l:counts.total == 0 ? 'OK' : printf(
				\   '%d Warnings - %d Errors',
				\   all_non_errors,
				\   all_errors
				\)
endfunction

set statusline=%{LinterStatus()}

nmap <silent> <C-k> <Plug>(ale_previous_wrap)
nmap <silent> <C-j> <Plug>(ale_next_wrap)

let g:ale_open_list = 1
