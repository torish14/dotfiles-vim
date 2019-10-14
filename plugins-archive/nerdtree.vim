Plug 'scrooloose/nerdtree'  " https://github.com/scrooloose/nerdtree
Plug 'Xuyuanp/nerdtree-git-plugin'  " https://github.com/Xuyuanp/nerdtree-git-plugin


" CONFIG
""""""""

let g:NERDTreeIgnore=['\~$', '\.svn$', '\.git*$', '\.pyc$', '\.pyo$', '\.mo$', '\.log$', '__pycache__', '.egg-info', 'develop-eggs']
"""" set the sort order to alphabetical
"let g:NERDTreeSortOrder=[]
"""" when the root is changed, change Vim's working dir
"""let NERDTreeChDirMode=2
"let g:NERDTreeChDirMode=0
"let g:NERDTreeHighlightCursorline=0
"let g:NERDTreeHijackNetrw=0
"let g:NERDTreeMouseMode=2
"let g:NERDTreeMinimalUI=1
"let g:NERDTreeWinSize=31
"let g:NERDTreeAutoCenter=1
"let g:NERDTreeAutoCenterThreshold=10
"let g:NERDTreeCascadeOpenSingleChildDir=1


" KEYMAP
""""""""

noremap <leader>n :NERDTreeToggle<CR>
noremap <leader>N :NERDTree<CR>
noremap <leader>b :NERDTreeFind<CR>

"autocmd FileType nerdtree noremap <buffer> <C-left> <nop>
"autocmd FileType nerdtree noremap <buffer> <C-right> <nop>
"autocmd FileType nerdtree noremap <buffer> <C-x> <nop>
"autocmd FileType buffergator noremap <buffer> <C-left> <nop>
"autocmd FileType buffergator noremap <buffer> <C-right> <nop>
"autocmd FileType buffergator noremap <buffer> <C-x> <nop>
