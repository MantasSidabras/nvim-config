let g:vimspector_enable_mappings = 'HUMAN'
nnoremap <Leader><Del> :call vimspector#Reset()<CR>
"
" mnemonic 'di' = 'debug inspect' (pick your own, if you prefer!)
" for normal mode - the word under the cursor
nmap <Leader>di <Plug>VimspectorBalloonEval
" for visual mode, the visually selected text
xmap <Leader>di <Plug>VimspectorBalloonEval
