let b:ale_fixers = {
			\'*': ['remove_trailing_lines', 'trim_whitespace'],
			\'javascript': ['eslint'],
      \ 'cs': ['OmniSharp']
			\}

let g:airline#extensions#ale#enabled = 1
set omnifunc=ale#completion#OmniFunc
let g:ale_completion_enabled = 1

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

let g:ale_sign_warning = '🤔'
let g:ale_sign_error = '❌'

set statusline=%{LinterStatus()}

nmap <silent> <C-k> <Plug>(ale_previous_wrap)
nmap <silent> <C-j> <Plug>(ale_next_wrap)

let g:ale_open_list = 1
let g:ale_lint_on_text_changed = 0
let g:ale_lint_on_insert_leave = 1
