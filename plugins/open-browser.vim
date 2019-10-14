Plug 'tyru/open-browser.vim'  " https://github.com/tyru/open-browser.vim


" CONFIG
""""""""

let g:netrw_nogx = 1 " disable netrw's gx mapping. use open-browser.


" KEYMAP
""""""""

nmap gx <Plug>(openbrowser-smart-search)
vmap gx <Plug>(openbrowser-smart-search)
