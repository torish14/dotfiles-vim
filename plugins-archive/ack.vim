Plug 'mileszs/ack.vim'  " https://github.com/mileszs/ack.vim


" CONFIG
""""""""

if executable('ag')
  let g:ackprg = 'ag --vimgrep'
endif


" KEYMAP
""""""""

"noremap \ :AckWindow<SPACE>
noremap \ :Ack<SPACE>
