Plug 'jeetsukumaran/vim-filebeagle'  " https://github.com/jeetsukumaran/vim-filebeagle


" CONFIG
""""""""

"" filebeagle defines <leader>f, which I don't want
let g:filebeagle_suppress_keymaps = 1
let g:filebeagle_show_hidden = 0  " show with ``gh``
"let g:filebeagle_check_gitignore = 1


" KEYMAP
""""""""

map <silent> _  <Plug>FileBeagleOpenCurrentWorkingDir
map <silent> -  <Plug>FileBeagleOpenCurrentBufferDir
