Plug 'ctrlpvim/ctrlp.vim'  " https://github.com/ctrlpvim/ctrlp.vim
Plug 'felikz/ctrlp-py-matcher'  " https://github.com/felikz/ctrlp-py-matcher


" CONFIG
""""""""

let g:ctrlp_working_path_mode = 0

" PyMatcher for CtrlP
if has('python')
    let g:ctrlp_match_func = { 'match': 'pymatcher#PyMatch' }
endif

" Set delay to prevent extra search
let g:ctrlp_lazy_update = 350

" You can manualy clear filename cache by <F5>
let g:ctrlp_clear_cache_on_exit = 1

" Set no file limit, we are building a big project
let g:ctrlp_max_files = 0

" If ag is available use it as filename list generator instead of 'find'
if executable("ag")
    set grepprg=ag\ --nogroup\ --nocolor\ -U\ -f
    let g:ctrlp_user_command = 'ag %s -i -l -U -f --nocolor --nogroup --hidden -g "" --ignore *.png --ignore *.gif --ignore *.jpg'
else
    " Ignore files in .gitignore
    let g:ctrlp_user_command = ['.git', 'cd %s && git ls-files -co --exclude-standard']
endif


" KEYMAP
""""""""

"noremap <leader>, :CtrlPBuffer<CR>
"noremap <leader>' :CtrlP<CR>
"noremap <leader>/ :CtrlPMixed<CR>
"noremap <leader>/ :CtrlP<CR>
"
"function! g:CtrlPCurrentBufferDir()
"    let ctrlp_working_path_mode = 'c'
"    :CtrlP
"endfunction
"noremap <leader>. :call CtrlPCurrentBufferDir()<CR>
"
" map <silent> = :CtrlPBuffer<CR>
