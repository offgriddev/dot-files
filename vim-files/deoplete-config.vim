let g:deoplete#enable_at_startup = 1

" deoplete options
call deoplete#custom#option({
      \ 'auto_complete_delay' :  10,
      \ 'ignore_case'         :  get(g:, 'deoplete#enable_ignore_case', 2),
      \ 'smart_case'          :  get(g:, 'deoplete#enable_smart_case', 1),
      \ 'camel_case'          :  get(g:, 'deoplete#enable_camel_case', 1),
      \ 'refresh_always'      :  get(g:, 'deoplete#enable_refresh_always', 1)
      \ })

call deoplete#custom#option('omni_patterns', { 'go': '[^. *\t]\.\w*' })
call deoplete#custom#option('source', {
      \ '_': ['ale'],
      \ })

" sh
call deoplete#custom#option('ignore_sources', {'sh': ['around', 'member', 'tag', 'syntax']})

" go
call deoplete#custom#option('ignore_sources', {'go': ['omni']})
call deoplete#custom#source('go', 'mark', '')
call deoplete#custom#source('go', 'rank', 9999)

" markdown
call deoplete#custom#option('ignore_sources', {'markdown': ['tag']})

" javascript
call deoplete#custom#option('ignore_sources', {'javascript': ['omni']})
call deoplete#custom#source('ternjs', 'mark', 'tern')
call deoplete#custom#source('ternjs', 'rank', 9999)

" gitcommit
call deoplete#custom#var('omni', 'input_patterns', {
      \ 'gitcommit': [
      \       '[ ]#[ 0-9a-zA-Z]*',
      \ ],
      \})

" rust
call deoplete#custom#option('ignore_sources', {'rust': ['omni']})
call deoplete#custom#source('racer', 'mark', '')

" vim
call deoplete#custom#option('ignore_sources', {'vim': ['tag']})

" public settings
call deoplete#custom#source('_', 'matchers', ['matcher_full_fuzzy'])
call deoplete#custom#source('file/include', 'matchers', ['matcher_head'])
