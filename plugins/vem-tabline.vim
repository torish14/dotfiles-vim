Plug 'pacha/vem-tabline'  " https://github.com/pacha/vem-tabline


" CONFIG
""""""""

" Show all buffers in tablines also when splitting windows
let g:vem_tabline_multiwindow_mode = 0


" KEYMAP
""""""""

"" vem-tabline next/previous
" https://github.com/pacha/vem-tabline/blob/master/doc/tabline.txt
noremap <S-Left> :call vem_tabline#tabline.move_buffer('left')<CR>
noremap <S-Right> :call vem_tabline#tabline.move_buffer('right')<CR>
noremap <C-Left> :call vem_tabline#tabline.select_buffer('left')<CR>
noremap <C-Right> :call vem_tabline#tabline.select_buffer('right')<CR>
