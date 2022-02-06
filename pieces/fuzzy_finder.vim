let g:fzf_command_prefix = 'Fzf'
let g:fzf_preview_window = ['right:50%', 'ctrl-/']
let g:fzf_layout = { 'down': '50%' } " 'window': { 'relative': v:true, 'width': 1.0, 'height': 0.5,'yoffset':1.0, 'highlight': 'Todo', 'border': 'sharp' } }
" let $FZF_DEFAULT_OPTS = '--layout=reverse --info=inline'
let $FZF_DEFAULT_COMMAND="rg --files --hidden --with-nth 2"
command! -bang -nargs=? -complete=dir Files
    \ call fzf#vim#files(<q-args>, fzf#vim#with_preview({'options': ['--layout=reverse', '--info=inline']}), <bang>0)


" noremap <silent><leader>ff :lua require('personal/telescope-config').project_files()<cr>
noremap <silent><leader>ff :FzfGit<cr>


" noremap <Leader>b <cmd>Telescope file_browser<cr>
" nnoremap <silent> \\ <cmd>Telescope buffers<cr>
nnoremap <silent> \\ <cmd>FzfBuffers<cr>
" nnoremap <leader><end> :lua require('personal/telescope-config').search_vimfiles()<cr>

let g:rooter_silent_chdir = 1
let g:rooter_manual_only = 1
