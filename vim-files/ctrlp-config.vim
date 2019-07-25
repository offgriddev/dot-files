" https://thoughtbot.com/blog/faster-grepping-in-vim
"
let g:ctrlp_map = get(g:,'ctrlp_map', '<c-p>')
let g:ctrlp_cmd = get(g:, 'ctrlp_cmd', 'CtrlP')
let g:ctrlp_use_caching = get(g:, 'ctrlp_use_caching', 500)
let g:ctrlp_cache_dir = get(g:, 'ctrlp_cache_dir', $HOME.'/.cache/ctrlp')
let g:ctrlp_custom_ignore = get(g:, 'ctrlp_custom_ignore', {
      \ 'dir':  '\v[\/]\.(git|hg|svn)$|target|node_modules|te?mp$|logs?$|public$|dist$',
      \ 'file': '\v\.(exe|so|dll|ttf|png|gif|jpe?g|bpm)$|\-rplugin\~',
      \ 'link': 'some_bad_symbolic_links',
      \ })
if executable('ag')
  " Use ag over grep
  set grepprg=ag\ --nogroup\ --nocolor

  " Use ag in CtrlP for listing files. Lightning fast and respects .gitignore
  let g:ctrlp_user_command = 'ag %s -l --nocolor -g ""'

  " ag is fast enough that CtrlP doesn't need to cache
  let g:ctrlp_use_caching = 0
endif
augroup Fix_command_in_help_buffer
  au!
  autocmd FileType help exec 'nnoremap <buffer><silent><c-p> :<c-u>CtrlP ' . getcwd() .'<cr>'
  au FileType help exec "nnoremap <silent><buffer> q :q<CR>"
augroup END
