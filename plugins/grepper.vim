Plug 'mhinz/vim-grepper'  " https://github.com/mhinz/vim-grepper


" CONFIG
""""""""

let g:grepper = {}            " initialize g:grepper with empty dictionary
let g:grepper.prompt=0
let g:grepper.prompt_quote=1
let g:grepper.tools = ['rg', 'git', 'ag', 'grept', 'grep']


" KEYMAP
""""""""

nnoremap <BSlash> :Grepper -tool rg -query<space>
nnoremap \| :Grepper -tool rg -buffers -query<space>
nnoremap <leader><Bslash> :Grepper -tool rg -buffer -query<space>
