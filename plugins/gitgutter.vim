Plug 'airblade/vim-gitgutter'  " https://github.com/airblade/vim-gitgutter


" CONFIG
""""""""

let g:gitgutter_async = 1
" let g:gitgutter_realtime = 0
" let g:gitgutter_eager = 0


" KEYMAP
""""""""

" vim signify defines ]c and [c
" git gutter
nmap ]c <Plug>(GitGutterNextHunk)
nmap [c <Plug>(GitGutterPrevHunk)
nmap <leader>hg <Plug>(GitGutterToggle)
nmap <Leader>ha <Plug>(GitGutterStageHunk)
nmap <Leader>hu <Plug>(GitGutterUndoHunk)
nmap <Leader>hp <Plug>(GitGutterPreviewHunk)
