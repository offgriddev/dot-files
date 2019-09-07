let g:OmniSharp_server_stdio = 1
let g:OmniSharp_server_use_mono = 0
"let g:OmniSharp_timeout = 5
set completeopt=longest,menuone,preview
let g:OmniSharp_selector_ui = 'ctrlp'
let g:OmniSharp_loglevel = 'debug'
" let g:OmniSharp_port = 2000
let g:OmniSharp_lookup_metadata = 1
let g:omnicomplete_fetch_full_documentation = 1
let g:OmniSharp_highlight_types = 2
let g:OmniSharp_server_stdio_quickload = 1

filetype indent plugin on

autocmd FileType cs setlocal shiftwidth=4 softtabstop=4 expandtab tabstop=4
augroup omnisharp_commands
  autocmd!

  " Show type information automatically when the cursor stops moving
  autocmd CursorHold *.cs call OmniSharp#TypeLookupWithoutDocumentation()

  " The following commands are contextual, based on the cursor position.
  autocmd FileType cs nnoremap <buffer> <Leader>ht :OmniSharpHighlightTypes<CR>
  autocmd FileType cs nnoremap <buffer> gd :OmniSharpGotoDefinition<CR>
  autocmd FileType cs nnoremap <buffer> <Leader>fi :OmniSharpFindImplementations<CR>
  autocmd FileType cs nnoremap <buffer> <Leader>fs :OmniSharpFindSymbol<CR>
  autocmd FileType cs nnoremap <buffer> <Leader>fu :OmniSharpFindUsages<CR>

  " Finds members in the current buffer
  autocmd FileType cs nnoremap <buffer> <Leader>fm :OmniSharpFindMembers<CR>

  autocmd FileType cs nnoremap <buffer> <Leader>fx :OmniSharpFixUsings<CR>
  autocmd FileType cs nnoremap <buffer> <Leader>tt :OmniSharpTypeLookup<CR>
  autocmd FileType cs nnoremap <buffer> <Leader>dc :OmniSharpDocumentation<CR>
  autocmd FileType cs nnoremap <buffer> <C-\> :OmniSharpSignatureHelp<CR>
  autocmd FileType cs inoremap <buffer> <C-\> <C-o>:OmniSharpSignatureHelp<CR>

  " Navigate up and down by method/property/field
  autocmd FileType cs nnoremap <buffer> <C-k> :OmniSharpNavigateUp<CR>
  autocmd FileType cs nnoremap <buffer> <C-j> :OmniSharpNavigateDown<CR>

  " Find all code errors/warnings for the current solution and populate the quickfix window
  autocmd FileType cs nnoremap <buffer> <Leader>cc :OmniSharpGlobalCodeCheck<CR>
augroup END
  " Contextual code actions (uses fzf, CtrlP or unite.vim when available)
nnoremap <Leader><Space> :OmniSharpGetCodeActions<CR>
" Run code actions with text selected in visual mode to extract method
xnoremap <Leader><Space> :call OmniSharp#GetCodeActions('visual')<CR>

" Rename with dialog
nnoremap <Leader>nm :OmniSharpRename<CR>
nnoremap <F2> :OmniSharpRename<CR>
" Rename without dialog - with cursor on the symbol to rename: `:Rename newname`
command! -nargs=1 Rename :call OmniSharp#RenameTo("<args>")

nnoremap <Leader>cf :OmniSharpCodeFormat<CR>
nnoremap <Leader>pv :OmniSharpPreviewImplementation<CR>
nnoremap <Leader>ss :OmniSharpStartServer<CR>
nnoremap <Leader>sp :OmniSharpStopServer<CR>
nnoremap <Leader>rs :OmniSharpRestartServer<CR>

let g:OmniSharp_want_snippet=1
" let g:OmniSharp_server_ports = {
"   \ '~/source/racker/janus-azure-billing-functions/Janus.Azure.Billing.Functions.sln': 2003,
"   \ '~/source/racker/mscloud-billing/Rackspace-Azure-Billing.sln': 2004,
"   \ }
