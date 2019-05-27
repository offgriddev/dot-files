scriptencoding utf-8
let g:vimfiler_as_default_explorer = get(g:, 'vimfiler_as_default_explorer', 1)
let g:vimfiler_restore_alternate_file = get(g:, 'vimfiler_restore_alternate_file', 1)
let g:vimfiler_tree_indentation = get(g:, 'vimfiler_tree_indentation', 1)
let g:vimfiler_tree_leaf_icon = get(g:, 'vimfiler_tree_leaf_icon', '')
let g:vimfiler_tree_opened_icon = get(g:, 'vimfiler_tree_opened_icon', '▼')
let g:vimfiler_tree_closed_icon = get(g:, 'vimfiler_tree_closed_icon', '►')
let g:vimfiler_file_icon = get(g:, 'vimfiler_file_icon', '')
let g:vimfiler_readonly_file_icon = get(g:, 'vimfiler_readonly_file_icon', '*')
let g:vimfiler_marked_file_icon = get(g:, 'vimfiler_marked_file_icon', '√')
let g:vimfiler_direction = get(g:, 'vimfiler_direction', 'rightbelow')
let g:vimfiler_direction = 'leftabove'
let g:vimfiler_preview_action = 'auto_preview'
let g:vimfiler_ignore_pattern = get(g:, 'vimfiler_ignore_pattern', [
      \ '^\.git$',
      \ '^\.DS_Store$',
      \ '^\.init\.vim-rplugin\~$',
      \ '^\.netrwhist$',
      \ '\.class$',
      \])

let g:vimfiler_quick_look_command = 
      \ get(g:, 'vimfiler_quick_look_command', 'qlmanage -p') 

"try
call vimfiler#custom#profile('default', 'context', {
      \ 'explorer' : 1,
      \ 'winwidth' : 45,
      \ 'winminwidth' : 45,
      \ 'toggle' : 1,
      \ 'auto_expand': 1,
      \ 'direction' : g:vimfiler_direction,
      \ 'explorer_columns' : 30,
      \ 'parent': 0,
      \ 'status' : 1,
      \ 'safe' : 0,
      \ 'split' : 1,
      \ 'hidden': 1,
      \ 'no_quit' : 1,
      \ 'force_hide' : 0,
      \ })

"catch
"endtry
augroup vfinit
  au!
  autocmd FileType vimfiler call s:vimfilerinit()
"   autocmd BufEnter * nested if (!has('vim_starting') && winnr('$') == 1 && &filetype ==# 'vimfiler'   && g:_spacevim_autoclose_filetree) endif
augroup END

function! s:vimfilerinit()
  silent! nunmap <buffer> <Space>
  silent! nunmap <buffer> <C-l>
  silent! nunmap <buffer> <C-j>
  silent! nunmap <buffer> E
  silent! nunmap <buffer> gr
  silent! nunmap <buffer> gf
  silent! nunmap <buffer> -
  silent! nunmap <buffer> s

  nnoremap <silent><buffer> sg  :<C-u>call <SID>vimfiler_vsplit()<CR>
  nnoremap <silent><buffer> sv  :<C-u>call <SID>vimfiler_split()<CR>
  nnoremap <silent><buffer><expr> st  vimfiler#do_action('tabswitch')
  nnoremap <silent><buffer> yY  :<C-u>call <SID>copy_to_system_clipboard()<CR>
  nnoremap <silent><buffer> P  :<C-u>call <SID>paste_to_file_manager()<CR>
  nmap <buffer> gx      <Plug>(vimfiler_execute_vimfiler_associated)
  nmap <buffer> '       <Plug>(vimfiler_toggle_mark_current_line)
  nmap <buffer> v       <Plug>(vimfiler_quick_look)
  nmap <buffer> p       <Plug>(vimfiler_preview_file)
  nmap <buffer> V       <Plug>(vimfiler_clear_mark_all_lines)
  nmap <buffer> i       <Plug>(vimfiler_switch_to_history_directory)
  nmap <buffer> <Tab>   <Plug>(vimfiler_switch_to_other_window)
  nmap <buffer> <C-r>   <Plug>(vimfiler_redraw_screen)
  nmap <buffer> <Left>  <Plug>(vimfiler_smart_h)
  nmap <buffer> <Right> <Plug>(vimfiler_smart_l)
  nmap <buffer> <2-LeftMouse> <Plug>(vimfiler_expand_or_edit)
endf

function! s:vimfiler_vsplit() abort
  let path = vimfiler#get_filename()
  if !isdirectory(path)
    wincmd w
    exe 'vsplit' path
  else
    echohl ModeMsg
    echo path . ' is a directory!'
    echohl NONE
  endif
endfunction
function! s:vimfiler_split() abort
  let path = vimfiler#get_filename()
  if !isdirectory(path)
    wincmd w
    exe 'split' path
  else
    echohl ModeMsg
    echo path . ' is a directory!'
    echohl NONE
  endif
endfunction

function! s:paste_to_file_manager() abort
  let path = vimfiler#get_filename()
  if !isdirectory(path)
    let path = fnamemodify(path, ':p:h')
  endif
  let old_wd = getcwd()
  if old_wd == path
    call s:VCOP.systemlist(['xclip-pastefile'])
  else
    noautocmd exe 'cd' fnameescape(path)
    call s:VCOP.systemlist(['xclip-pastefile'])
    noautocmd exe 'cd' fnameescape(old_wd)
  endif
endfunction

function! s:copy_to_system_clipboard() abort
  let filename = vimfiler#get_marked_filenames(b:vimfiler)

  if empty(filename)
    " Use cursor filename.
    let filename = vimfiler#get_filename()
    if filename ==# '..' || empty(vimfiler#get_file(b:vimfiler))
      let filename = b:vimfiler.current_dir
    else
      let filename = vimfiler#get_file(b:vimfiler).action__path
    endif
    call s:VCOP.systemlist(['xclip-copyfile', filename])
  else
    call s:VCOP.systemlist(['xclip-copyfile'] + filename)
  endif
  echo 'Yanked:' . (type(filename) == 3 ? len(filename) : 1 ) . ' files'
endfunction

function! s:open_vimfiler() abort
  " check if VimFiler exist, if the windows has been opened, just close the
  " vimfiler windows, if the vimfiler widnows is not exist, open vimfiler for
  " current project.
  silent exe 'VimFiler ' . get(b:, 'rootDir', '')
  doautocmd WinEnter
endfunction

nnoremap <leader>f :call <SID>open_vimfiler()<CR>
cnoreabbrev gag GrepperAg
" vim:set et sw=2:
