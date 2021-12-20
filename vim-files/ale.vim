let b:ale_fixers = {
			\'*': ['remove_trailing_lines', 'trim_whitespace'],
			\'javascript': ['yarn lint --fix'],
			\}
let g:ale_linters = {
      \   'javascript': ['eslint'],
      \}

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

let g:ale_echo_msg_error_str = 'YOU WRECKED SOMETHING! %s'
let g:ale_echo_msg_warning_str = 'You need to check something... %s'
let g:ale_echo_msg_info_str = 'You may want to know... %s'
let g:ale_set_signs = 1

set statusline=%{LinterStatus()}

nmap <silent> <C-k> <Plug>(ale_previous_wrap)
nmap <silent> <C-j> <Plug>(ale_next_wrap)

let g:ale_open_list = 1
let g:ale_lint_on_text_changed = 0
let g:ale_lint_on_insert_leave = 1
let g:ale_lint_on_enter = 1
let g:ale_fix_on_save = 1

autocmd BufEnter *.json ALEDisable
autocmd BufLeave *.json ALEEnable
