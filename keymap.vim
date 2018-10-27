" jedi
let g:jedi#goto_command = "<leader>d"
let g:jedi#goto_assignments_command = "<leader>g"
let g:jedi#goto_definitions_command = ""

let g:jedi#documentation_command = "K"
let g:jedi#usages_command = "<leader>pn"
let g:jedi#completions_command = "<C-Space>"
let g:jedi#rename_command = "<leader>pr"


"" ALE next/prev Error
nmap ]e :ALENextWrap<cr>
nmap [e :ALEPreviousWrap<cr>

" MatchTagAlways
nnoremap ]t :MtaJumpToOtherTag<cr>
nnoremap [t :MtaJumpToOtherTag<cr>

" SECTION FOR <leader>` MAPPINGS
" jsom formating
nnoremap <leader>`json :%!python -m json.tool<CR>
" insert filename
inoremap <leader>`fn <C-R>=expand("%:p")<CR>
"" reformat to column based layout
"" http://stackoverflow.com/questions/1229900/reformat-in-vim-for-a-nice-column-layout
noremap <leader>`t :%!column -t<CR>


" See: https://github.com/neovim/neovim/issues/583
function! ClipboardYank()
    call system('xclip -i -selection clipboard', @@)
endfunction
function! ClipboardPaste()
    let @@ = system('xclip -o -selection clipboard')
endfunction


"" clipboard copy/paste
if has('gui_running')
    " copy selection or line
    map 1 "+yy
    " paste before
    map 2 "+P
    " paste after
    map @ "+p
else
    map 1 yy:call ClipboardYank()<CR>
    map 2 :call ClipboardPaste()<CR>p
    map 3 dd:call ClipboardYank()<CR>
endif

" copy filename to clipboard
" http://vim.wikia.com/wiki/Copy_filename_to_clipboard
nmap ,cs :let @+=expand("%")<CR>
nmap ,cl :let @+=expand("%:p")<CR>

" noremap <leader>p :set list!<CR>
" map <silent> <leader>l :set number!<CR>

"" center scrolling
"map <S-Up> <Up>zz
"map <S-Down> <Down>zz
"" scoll lock toggle
map <leader>zz :let &scrolloff=999-&scrolloff<cr>
" center search
nmap n nzz
nmap N Nzz

" tile all open buffers in vertical panes - http://www.vimbits.com/bits/375
noremap <silent> <leader>a :vertical :ball<cr>

" open file relative to current file
" no need for autochdir
" http://stackoverflow.com/questions/1708623/opening-files-in-the-same-folder-as-the-current-file-in-vim
" map <leader>e :e %:h/
" use next instead of edit. next supports opening multiple files via GLOBS
map <leader>e :n %:h/

"" isort python files
command! -range=% Isort :<line1>,<line2>! isort -
map <leader>i :Isort<CR>

"" spellcheck
"map <silent> <leader>d :set spell!<CR>

"" reformat - strip whitespace
nnoremap <leader>s :call Preserve("%s/\\s\\+$//e")<CR>
"" reformat - wrap text
nnoremap <leader>w gqip
"" reformat - join text
nnoremap <leader>j vipJ^
"" reformat - split each sentence - http://superuser.com/questions/275364
""nnoremap <leader>k vap:s/\([\.\?!,;]\) \+/\1\r/e<CR>
nnoremap <leader>k vap:s/\([\.\?!;]\) \+/\1\r/e<CR>

"" vim expand region
"vmap v <Plug>(expand_region_expand)
"vmap <C-v> <Plug>(expand_region_shrink)

nnoremap <leader>4 :setlocal tabstop=4 shiftwidth=4 softtabstop=4<CR>
nnoremap <leader>2 :setlocal tabstop=2 shiftwidth=2 softtabstop=2<CR>

noremap <leader>z :setlocal foldcolumn=8<CR>
noremap <leader>Z :setlocal foldcolumn=0<CR>

" nmap <leader>1 :call SynOff()<CR>
" nmap <leader>! :call SynOn()<CR>


" show full path to file
nnoremap <leader>% :echo expand('%:p')<CR>

" DelimitMate toggle
nnoremap <leader>q :DelimitMateSwitch<CR>

" zeal integration
nnoremap gz :!zeal --query "<cword>"&<CR><CR>

" git gutter
nmap ]c <Plug>GitGutterNextHunk
nmap [c <Plug>GitGutterPrevHunk
nmap <leader>hg <Plug>GitGutterToggle
nmap <Leader>ha <Plug>GitGutterStageHunk
nmap <Leader>hr <Plug>GitGutterRevertHunk
nmap <Leader>hp <Plug>GitGutterPreviewHunk

" Gitv, vim gitk
"nnoremap <leader>gv :Gitv<CR>
"nnoremap <leader>gm :Merginal<CR>
"nnoremap <leader>gi :Gissues<CR>
"nnoremap <leader>ga :Giadd<CR>


nnoremap <leader>u :IndentGuidesToggle<CR>

nmap gx <Plug>(openbrowser-smart-search)
vmap gx <Plug>(openbrowser-smart-search)


" minimap
let g:minimap_show='ms'
let g:minimap_update='mu'
let g:minimap_close='mc'
let g:minimap_toggle='mm'


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

"" FileBeagle
map <silent> _  <Plug>FileBeagleOpenCurrentWorkingDir
map <silent> -  <Plug>FileBeagleOpenCurrentBufferDir

""" Denite
"map <silent> =  :Denite -split=no buffer<CR>
"map <silent> +  :Denite -split=no file_rec<CR>
" -matchers="matcher_fuzzy" -sorters="sorter_rank"

"" CTRL-P
" map <silent> = :CtrlPBuffer<CR>
" "" Lusty Juggler
" map <silent> = :LustyJuggler<CR>


" FZF
" nnoremap <leader>/ :FZF<CR>
noremap <leader>/ :call FZFfiles()<CR>
noremap <leader>. :call FZFmru()<CR>
noremap <leader>, :call FZFbuffers()<CR>
noremap <leader>c :call FZFcolor()<CR>

" Ack.vim
nmap \ :AckWindow<SPACE>


"" Tagbar
nnoremap tt :TagbarToggle<CR>
"" unite-outline
"" nnoremap ty :Unite outline<CR>


"" Autoformat
map <leader>f :Autoformat<CR><CR>
map <leader>g :%!jscs -x<CR>


"" CLEANUP FILE
" - FileType Unix,
" - Tabs to spaces,
" - Remove Carriage Returns (^M)
" noremap <leader>t :setlocal ft=unix<CR>:setlocal expandtab<CR>:%s/\r//g<CR>:retab<CR><CR>
" noremap <leader>t :setlocal ft=unix<CR>:setlocal expandtab<CR>:call Preserve("%s/\\s\\+$//e")<CR>:call Preserve("%s/\\r//e")<CR>:retab<CR><CR>
noremap <leader>t :setlocal expandtab<CR>:call Preserve("%s/\\s\\+$//e")<CR>:call Preserve("%s/\\r//e")<CR>:retab<CR><CR>

" http://stackoverflow.com/questions/4781070/how-to-insert-tab-character-when-expandtab-option-is-on-in-vim
" <CTRL-V><Tab> in insert mode

""""" VIM STANDARD

" select all
nmap <C-a> ggVG

"" next/previous buffer
" nmap <silent> <C-left> :bprev<CR>
" nmap <silent> <C-right> :bnext<CR>

"" vem-tabline next/previous
" https://github.com/pacha/vem-tabline/blob/master/doc/tabline.txt
nmap <S-Left> :call vem_tabline#tabline.move_buffer('left')<CR>
nmap <S-Right> :call vem_tabline#tabline.move_buffer('right')<CR>
nmap <C-Left> :call vem_tabline#tabline.select_buffer('left')<CR>
nmap <C-Right> :call vem_tabline#tabline.select_buffer('right')<CR>


" close buffer and goto next
nnoremap <C-x> :Bdelete<CR>
nnoremap <leader>x :Bdelete<CR>


noremap <leader>n :MBEToggle<CR>
noremap <leader>b :MBEToggleMRU<CR>



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
"nnoremap <C-h> <C-w>h
"nnoremap <C-j> <C-w>j
"nnoremap <C-k> <C-w>k
"nnoremap <C-l> <C-w>l

nnoremap <leader><Up> <C-w>k
nnoremap <leader><Down> <C-w>j
nnoremap <leader><Left> <C-w>h
nnoremap <leader><Right> <C-w>l

nnoremap <C-w><Up> <C-w>k
nnoremap <C-w><Down> <C-w>j
nnoremap <C-w><Left> <C-w>h
nnoremap <C-w><Right> <C-w>l

" Resize splits
map <S-w><Left> :vertical resize +1<CR>
map <S-w><Right> :vertical resize -1<CR>
map <S-w><Up> :resize -1<CR>
map <S-w><Down> :resize +1<CR>


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




"" vim-bufsurf -- browse in buffer history
"nmap <silent> <C-A-left> :BufSurfBack<CR>
"nmap <silent> <C-A-right> :BufSurfForward<CR>
"
""" NERDTree
"noremap <leader>n :NERDTreeToggle<CR>
"noremap <leader>N :NERDTree<CR>
"noremap <leader>b :NERDTreeFind<CR>

"autocmd FileType nerdtree noremap <buffer> <C-left> <nop>
"autocmd FileType nerdtree noremap <buffer> <C-right> <nop>
"autocmd FileType nerdtree noremap <buffer> <C-x> <nop>
"autocmd FileType buffergator noremap <buffer> <C-left> <nop>
"autocmd FileType buffergator noremap <buffer> <C-right> <nop>
"autocmd FileType buffergator noremap <buffer> <C-x> <nop>
