Plug 'gabesoft/vim-ags'  " https://github.com/gabesoft/vim-ags


" ripgrep
" https://github.com/BurntSushi/ripgrep


" CONFIG
""""""""

if executable('rg')
  let g:ags_agexe = 'rg'
  let g:ags_agargs = {
    \ '--column'         : ['', ''],
    \ '--line-number'    : ['', ''],
    \ '--context'        : ['g:ags_agcontext', '-C'],
    \ '--max-count'      : ['g:ags_agmaxcount', ''],
    \ '--heading'        : ['',''],
    \ '--smart-case'     : ['','-S'],
    \ '--color'          : ['always',''],
    \ '--colors'         : [['match:fg:green', 'match:bg:black', 'match:style:nobold', 'path:fg:red', 'path:style:bold', 'line:fg:black', 'line:style:bold'] ,''],
    \ }
endif

" KEYMAP
""""""""

nnoremap <Leader>\ :Ags<Space><C-R>=expand('<cword>')<CR><CR>
nnoremap \ :Ags<Space>
