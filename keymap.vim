""""""""
"" BASIC


let mapleader = ","  " leader key


"" delete into blackhole register, so that other aren't overwritten
"" thanks bairu from #vim!
nnoremap <Del> "_x


"" :W or :Wa should write/write all
command W execute "w"
command Wa execute "wa"


"" paste selected text into command line
"" http://stackoverflow.com/questions/4878980/vim-insert-selected-text-into-command-line
"" http://stackoverflow.com/a/8750499/1130358
nnoremap ; y:<C-r>"<C-b>
vnoremap ; y:<C-r>"<C-b>


"" SEARCH
" nnoremap / /\v
" vnoremap / /\v


"" incsearch
map /  <Plug>(incsearch-forward)
map ?  <Plug>(incsearch-backward)
map g/ <Plug>(incsearch-stay)


""""""""""
"" PLUGINS

noremap <leader>d :ALEGoToDefinition
noremap <leader>g :ALEFindReferences

" jedi
" let g:jedi#goto_command = "<leader>d"
" let g:jedi#goto_assignments_command = "<leader>g"
" let g:jedi#goto_definitions_command = ""
" 
" let g:jedi#documentation_command = "K"
" let g:jedi#usages_command = "<leader>pn"
" let g:jedi#completions_command = "<C-Space>"
" let g:jedi#rename_command = "<leader>pr"


"" ALE next/prev Error
noremap ]e :ALENextWrap<cr>
noremap [e :ALEPreviousWrap<cr>

" MatchTagAlways
noremap ]t :MtaJumpToOtherTag<cr>
noremap [t :MtaJumpToOtherTag<cr>

" SECTION FOR <leader>` MAPPINGS
" jsom formating
noremap <leader>`json :%!python -m json.tool<CR>
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
    noremap 1 "+yy
    " paste before
    noremap 2 "+P
    " paste after
    noremap @ "+p
else
    noremap 1 yy:call ClipboardYank()<CR>
    noremap 2 :call ClipboardPaste()<CR>p
    noremap 3 dd:call ClipboardYank()<CR>
endif

" copy filename to clipboard
" http://vim.wikia.com/wiki/Copy_filename_to_clipboard
noremap ,cs :let @+=expand("%")<CR>
noremap ,cl :let @+=expand("%:p")<CR>

" noremap <leader>p :set list!<CR>
" map <silent> <leader>l :set number!<CR>

"" center scrolling
"map <S-Up> <Up>zz
"map <S-Down> <Down>zz
"" scoll lock toggle
noremap <leader>zz :let &scrolloff=999-&scrolloff<cr>
" center search
noremap n nzz
noremap N Nzz

" tile all open buffers in vertical panes - http://www.vimbits.com/bits/375
map <silent> <leader>a :vertical :ball<cr>

" open file relative to current file
" no need for autochdir
" http://stackoverflow.com/questions/1708623/opening-files-in-the-same-folder-as-the-current-file-in-vim
" noremap <leader>e :e %:h/
" use next instead of edit. next supports opening multiple files via GLOBS
noremap <leader>e :n %:h/

"" isort python files
command! -range=% Isort :<line1>,<line2>! isort -
noremap <leader>i :Isort<CR>

"" spellcheck
"map <silent> <leader>d :set spell!<CR>

"" reformat - strip whitespace
noremap <leader>s :call Preserve("%s/\\s\\+$//e")<CR>
"" reformat - wrap text
noremap <leader>w gqip
"" reformat - join text
noremap <leader>j vipJ^
"" reformat - split each sentence - http://superuser.com/questions/275364
""noremap <leader>k vap:s/\([\.\?!,;]\) \+/\1\r/e<CR>
noremap <leader>k vap:s/\([\.\?!;]\) \+/\1\r/e<CR>

"" vim expand region
"vmap v <Plug>(expand_region_expand)
"vmap <C-v> <Plug>(expand_region_shrink)

noremap <leader>4 :setlocal tabstop=4 shiftwidth=4 softtabstop=4<CR>
noremap <leader>2 :setlocal tabstop=2 shiftwidth=2 softtabstop=2<CR>

noremap <leader>z :setlocal foldcolumn=8<CR>
noremap <leader>Z :setlocal foldcolumn=0<CR>

" noremap <leader>1 :call SynOff()<CR>
" noremap <leader>! :call SynOn()<CR>


" show full path to file
noremap <leader>% :echo expand('%:p')<CR>

" DelimitMate toggle
noremap <leader>q :DelimitMateSwitch<CR>

" zeal integration
noremap gz :!zeal --query "<cword>"&<CR><CR>

" vim signify defines ]c and [c
" git gutter
" nmap ]c <Plug>GitGutterNextHunk
" nmap [c <Plug>GitGutterPrevHunk
" nmap <leader>hg <Plug>GitGutterToggle
" nmap <Leader>ha <Plug>GitGutterStageHunk
" nmap <Leader>hr <Plug>GitGutterRevertHunk
" nmap <Leader>hp <Plug>GitGutterPreviewHunk

" Gitv, vim gitk
"noremap <leader>gv :Gitv<CR>
"noremap <leader>gm :Merginal<CR>
"noremap <leader>gi :Gissues<CR>
"noremap <leader>ga :Giadd<CR>


noremap <leader>u :IndentGuidesToggle<CR>

nmap gx <Plug>(openbrowser-smart-search)
vmap gx <Plug>(openbrowser-smart-search)


" minimap
let g:minimap_show='ms'
let g:minimap_update='mu'
let g:minimap_close='mc'
let g:minimap_toggle='mm'


"" fontsize
map <silent> <leader>9 <Plug>FontsizeBegin
map <silent> <leader>= <Plug>FontsizeInc
map <silent> <leader>- <Plug>FontsizeDec
map <silent> <leader>0 <Plug>FontsizeDefault

"" lusty
"noremap <leader>, :LustyJuggler<CR>
"noremap <leader>. :LustyFilesystemExplorerFromHere<CR>
"noremap <leader>/ :LustyFilesystemExplorer<CR>

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
" noremap <leader>/ :FZF<CR>
noremap <leader>/ :call FZFfiles()<CR>
noremap <leader>. :call FZFmru()<CR>
noremap <leader>, :call FZFbuffers()<CR>
noremap <leader>c :call FZFcolor()<CR>

" Ack.vim
"noremap \ :AckWindow<SPACE>
noremap \ :Ack<SPACE>


"" Tagbar
noremap tt :TagbarToggle<CR>
"" unite-outline
"" noremap ty :Unite outline<CR>


"" Autoformat
noremap <leader>f :Autoformat<CR><CR>
noremap <leader>g :%!jscs -x<CR>


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
noremap <C-a> ggVG

"" next/previous buffer
" map <silent> <C-left> :bprev<CR>
" map <silent> <C-right> :bnext<CR>

"" vem-tabline next/previous
" https://github.com/pacha/vem-tabline/blob/master/doc/tabline.txt
noremap <S-Left> :call vem_tabline#tabline.move_buffer('left')<CR>
noremap <S-Right> :call vem_tabline#tabline.move_buffer('right')<CR>
noremap <C-Left> :call vem_tabline#tabline.select_buffer('left')<CR>
noremap <C-Right> :call vem_tabline#tabline.select_buffer('right')<CR>


" close buffer and goto next
noremap <C-x> :Bdelete<CR>
noremap <leader>x :Bdelete<CR>


noremap <leader>n :MBEToggle<CR>
noremap <leader>b :MBEToggleMRU<CR>



noremap <C-n> :tabnew<CR>
"noremap <leader>t :tabnew
"noremap <C-n> :tab split<CR>
noremap <C-c> :tabclose<CR>
noremap <C-Up> :tabn<CR>
noremap <C-Down> :tabp<CR>

" make the tab key match bracket pairs
"noremap <TAB> %
"vnoremap <TAB> %

"" WINDOWS / BUFFERS movement
"noremap <C-h> <C-w>h
"noremap <C-j> <C-w>j
"noremap <C-k> <C-w>k
"noremap <C-l> <C-w>l

noremap <leader><Up> <C-w>k
noremap <leader><Down> <C-w>j
noremap <leader><Left> <C-w>h
noremap <leader><Right> <C-w>l

noremap <C-w><Up> <C-w>k
noremap <C-w><Down> <C-w>j
noremap <C-w><Left> <C-w>h
noremap <C-w><Right> <C-w>l

" Resize splits
noremap <S-A-Up> :vertical resize +1<CR>
noremap <C-A-Down> :vertical resize -1<CR>
noremap <C-S-A-Up> :resize -1<CR>
noremap <C-S-A-Down> :resize +1<CR>


noremap <F5> :set nosmarttab<CR>
"":setlocal si! si?<CR>
""set noautoindent
""set nocindent
""set nosmarttab

"" open/close all folds
""noremap <C-TAB> za
""noremap <C-S-TAB> zA
noremap <C-S-Right> zo
noremap <C-S-Left> zc
"" termit might override usage of -A-
""noremap <C-S-A-Right> zO
""noremap <C-S-A-Left> zC




"" vim-bufsurf -- browse in buffer history
"map <silent> <C-A-left> :BufSurfBack<CR>
"map <silent> <C-A-right> :BufSurfForward<CR>
"
"" NERDTree
noremap <leader>n :NERDTreeToggle<CR>
noremap <leader>N :NERDTree<CR>
noremap <leader>b :NERDTreeFind<CR>

"autocmd FileType nerdtree noremap <buffer> <C-left> <nop>
"autocmd FileType nerdtree noremap <buffer> <C-right> <nop>
"autocmd FileType nerdtree noremap <buffer> <C-x> <nop>
"autocmd FileType buffergator noremap <buffer> <C-left> <nop>
"autocmd FileType buffergator noremap <buffer> <C-right> <nop>
"autocmd FileType buffergator noremap <buffer> <C-x> <nop>
