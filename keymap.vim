
"""" PLUGINS

" vim expand region
"vmap v <Plug>(expand_region_expand)
"vmap <C-v> <Plug>(expand_region_shrink)

nnoremap <leader>4 :setlocal tabstop=4 shiftwidth=4 softtabstop=4<CR>
nnoremap <leader>2 :setlocal tabstop=2 shiftwidth=2 softtabstop=2<CR>

noremap <leader>z :setlocal foldcolumn=8<CR>
noremap <leader>Z :setlocal foldcolumn=0<CR>

nmap <leader>1 :call SynOff()<CR>
nmap <leader>! :call SynOn()<CR>


" show full path to file
nnoremap <leader>% :echo expand('%:p')<CR>

" DelimitMate toggle
nnoremap <leader>q :DelimitMateSwitch<CR>

" zeal integration
nnoremap gz :!zeal --query "<cword>"&<CR><CR>

" git gutter
nnoremap <leader>gg :GitGutterToggle<CR>
" Gitv, vim gitk
nnoremap <leader>gv :Gitv<CR>
nnoremap <leader>gm :Merginal<CR>
nnoremap <leader>gi :Gissues<CR>
nnoremap <leader>ga :Giadd<CR>


nnoremap <leader>u :IndentGuidesToggle<CR>

nmap gx <Plug>(openbrowser-smart-search)
vmap gx <Plug>(openbrowser-smart-search)

"" syntastic next/prev Error
nnoremap <leader>i :lprev<CR>
nnoremap <leader>o :lnext<CR>

" MiniMap
" https://github.com/koron/minimap-vim
nnoremap mimi :MinimapSync<CR>
nnoremap mc :MinimapStop<CR>


"" fontsize
nmap <silent> <leader>9 <Plug>FontsizeBegin
nmap <silent> <leader>= <Plug>FontsizeInc
nmap <silent> <leader>- <Plug>FontsizeDec
nmap <silent> <leader>0 <Plug>FontsizeDefault

"" lusty
"nnoremap <leader>, :LustyJuggler<CR>
"nnoremap <leader>. :LustyFilesystemExplorerFromHere<CR>
"nnoremap <leader>/ :LustyFilesystemExplorer<CR>

"" buffergator
noremap <leader>m :BuffergatorToggle<CR>
noremap <leader>M :BuffergatorTabsToggle<CR>

"" NERDTree
noremap <leader>n :NERDTreeToggle<CR>
noremap <leader>N :NERDTree<CR>
noremap <leader>b :NERDTreeFind<CR>
"" CtrlP
noremap <leader>, :CtrlPBuffer<CR>
noremap <leader>. :CtrlP<CR>
noremap <leader>/ :CtrlPMixed<CR>
"noremap <leader>/ :CtrlP<CR>


"" Tagbar
nnoremap tt :TagbarToggle<CR>
"" unite-outline
"" nnoremap ty :Unite outline<CR>


"" Autoformat
noremap <leader>f :Autoformat<CR><CR>

"" reformat to column based layout
"" http://stackoverflow.com/questions/1229900/reformat-in-vim-for-a-nice-column-layout
noremap <leader>t :%!column -t


""""" VIM STANDARD

" wrap text
nnoremap <leader>w gqip
" join text in paragraph http://tech.groups.yahoo.com/group/vim/message/126388
nnoremap <leader>j vipJ^

nnoremap <leader>e :call SoftWrap80()<cr>

function! SoftWrap80()
    if &wrap
        set columns&
        set nowrap
    else
        set columns=80
        set wrap
    endif
endfunction


" select all
nmap <C-a> ggVG

"" next/previous buffer
nmap <silent> <C-left> :bprev<CR>
nmap <silent> <C-right> :bnext<CR>
" close buffer and goto next
nnoremap <C-x> :Bdelete<CR>
nnoremap <leader>x :Bdelete<CR>
" vim-bufsurf -- browse in buffer history
nmap <silent> <C-A-left> :BufSurfBack<CR>
nmap <silent> <C-A-right> :BufSurfForward<CR>

nmap <C-n> :tabnew<CR>
"nmap <leader>t :tabnew
"nmap <C-n> :tab split<CR>
nmap <C-c> :tabclose<CR>
nmap <C-Up> :tabn<CR>
nmap <C-Down> :tabp<CR>

" make the tab key match bracket pairs
"nnoremap <TAB> %
"vnoremap <TAB> %

"" WINDOWS / BUFFERS movement
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l
"
nnoremap <leader><Up> <C-w>k
nnoremap <leader><Down> <C-w>j
nnoremap <leader><Left> <C-w>h
nnoremap <leader><Right> <C-w>l
"
nnoremap <C-w><Up> <C-w>k
nnoremap <C-w><Down> <C-w>j
nnoremap <C-w><Left> <C-w>h
nnoremap <C-w><Right> <C-w>l

"" MULTIPAGE
"" see: http://stackoverflow.com/questions/6873076/auto-scrollable-pagination-with-vim-using-vertical-split
nmap <silent> <Leader>ef :vsplit<bar>wincmd l<bar>exe "norm! Ljz<c-v><cr>"<cr>:set scb<cr>:wincmd h<cr> :set scb<cr>

nmap <F5> :set nosmarttab<CR>
"":setlocal si! si?<CR>
""set noautoindent
""set nocindent
""set nosmarttab

"" open/close all folds
""nmap <C-TAB> za
""nmap <C-S-TAB> zA
nmap <C-S-Right> zo
nmap <C-S-Left> zc
"" termit might override usage of -A-
""nmap <C-S-A-Right> zO
""nmap <C-S-A-Left> zC

