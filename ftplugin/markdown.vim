" movement changes
map <buffer> j gj
map <buffer> k gk
" formatting text
set formatoptions=1
set formatoptions+=aw
setlocal noexpandtab
" setlocal wrap
setlocal linebreak
setlocal textwidth=80
setlocal colorcolumn=81
" spelling and thesaurus
setlocal spell spelllang=en_us
" complete+=s makes autocompletion search the thesaurus
setlocal complete+=s
