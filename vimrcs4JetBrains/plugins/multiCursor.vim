Plug 'terryma/vim-multiple-cursors'

" Remap multiple-cursors shortcuts to match terryma/vim-multiple-cursors
nmap <C-n> <Plug>NextWholeOccurrence
xmap <C-n> <Plug>NextWholeOccurrence
nmap g<C-n> <Plug>NextOccurrence
xmap g<C-n> <Plug>NextOccurrence
xmap <C-x> <Plug>SkipOccurrence
xmap <C-p> <Plug>RemoveOccurrence

" Note that the default <A-n> and g<A-n> shortcuts don't work on Mac due to dead keys.
" <A-n> is used to enter accented text e.g. ñ
" Feel free to pick your own mappings that are not affected. I like to use <leader>
nmap <leader><C-n> <Plug>AllWholeOccurrences
xmap <leader><C-n> <Plug>AllWholeOccurrences
nmap <leader>g<C-n> <Plug>AllOccurrences
xmap <leader>g<C-n> <Plug>AllOccurrences