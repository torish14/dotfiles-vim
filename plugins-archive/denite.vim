Plug 'Shougo/denite.nvim'  " https://github.com/Shougo/denite.nvim


" CONFIG
""""""""

call denite#custom#map(
      \ 'insert',
      \ '<Down>',
      \ '<denite:move_to_next_line>',
      \ 'noremap'
      \)
call denite#custom#map(
      \ 'insert',
      \ '<Up>',
      \ '<denite:move_to_previous_line>',
      \ 'noremap'
      \)


" KEYMAP
""""""""

map <silent> =  :Denite -split=no buffer<CR>
map <silent> +  :Denite -split=no file_rec<CR>
" -matchers="matcher_fuzzy" -sorters="sorter_rank"
