"" DEBUG
""set verbose

source $HOME/.vim/plugins.vim
source $HOME/.vim/common.vim
source $HOME/.vim/plugins-config.vim
source $HOME/.vim/inoutcomment.vim
source $HOME/.vim/bclose.vim

set background=dark
"set background=light
colorscheme molokai
""colorscheme solarized
""colorscheme peaksea
""colorscheme wombat


" The last two lines make the tab key match bracket pairs. I use this to move
" around all the time and <tab> is a hell of a lot easier to type than %.
nnoremap <TAB> %
vnoremap <TAB> %

"" Use the same symbols as TextMate for tabstops and EOLs
set listchars=tab:▸\ ,eol:¬

"" WINDOWS / BUFFERS
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l


"" GUI
if has('gui_running')
    set antialias
    " Remove all the UI cruft
    set go-=T
    set go-=l
    set go-=L
    set go-=r
    set go-=R
    set go-=M
    set go-=m
    highlight SpellBad term=underline gui=undercurl guisp=Red
    set fillchars+=vert:│ " Use a line-drawing char for pretty vertical splits.
    set guicursor+=a:blinkon0 " Disable all blinking
    set guicursor+=a:blinkoff0
    set guicursor+=a:blinkwait0
    set guifont=Ubuntu\ Mono\ for\ Powerline\ 11
    ""set guifont=Ubuntu\ Mono\ 11
    ""set guifont=Source\ Code\ Pro\ 10
endif

" fugitive fix, could not rename swap file
" http://stackoverflow.com/questions/2932399/error-using-the-gdiff-command-of-fugitive-vim-using-gvim-for-windows-and-msys-g
if has("win32") || has("win64")
   set directory=$TMP
else
   set directory=~/tmp
end

set showmatch " indicate open/closing brackets
set ttyfast
set nowrap
set nolist "" nolist needed for linebreak
set linebreak "" when wrapping, don't break words
set colorcolumn=79
set cursorline

" fold paragraphs
" http://vimdoc.sourceforge.net/htmldoc/fold.html
set foldexpr=getline(v:lnum)=~'^\\s*$'&&getline(v:lnum+1)=~'\\S'?'<1':1

"" How to stop autoindenting for specific file types
"" http://vim.wikia.com/wiki/How_to_stop_auto_indenting

"" bufstop for xml based files
autocmd BufRead,BufNewFile *.html,*.pt,*.xml,*.zcml setlocal tabstop=2 shiftwidth=2 softtabstop=2
autocmd BufRead,BufNewFile *.js,*.css setlocal tabstop=4 shiftwidth=4 softtabstop=4
autocmd BufRead,BufNewFile *.robot setlocal tabstop=2 shiftwidth=2 softtabstop=2 filetype=robot
"" https://github.com/tpope/vim-markdown
autocmd BufNewFile,BufReadPost *.md set filetype=markdown

""treat ZCML as XML:
""autocmd BufRead,BufNewFile *.html,*.pt,*.xml,*.zcml set filetype=xml
""autocmd BufRead,BufNewFile *.pt set filetype=xml
autocmd BufRead,BufNewFile *.xml,*.zcml set filetype=xml

"" allow ctrl-backspace to generate escape key sequence
""inoremap <C-BS> <Esc>
command W execute "w"
command Wa execute "wa"

"" delete into blackhole register, so that other aren't overwritten
"" thanks bairu from #vim!
nnoremap <Del> "_x

nnoremap <leader><Up> <C-w>k
nnoremap <leader><Down> <C-w>j
nnoremap <leader><Left> <C-w>h
nnoremap <leader><Right> <C-w>l

nnoremap <C-w><Up> <C-w>k
nnoremap <C-w><Down> <C-w>j
nnoremap <C-w><Left> <C-w>h
nnoremap <C-w><Right> <C-w>l

set smartindent

nmap <F5> :set nosmarttab<CR>
"":setlocal si! si?<CR>
""set noautoindent
""set nocindent
""set nosmarttab

set foldlevelstart=20 " set foldlevel higher so opened buffers arent folded
"" open/close all folds
""nmap <C-TAB> za
""nmap <C-S-TAB> zA
nmap <C-S-Right> zo
nmap <C-S-Left> zc
"" termit might override usage of -A-
""nmap <C-S-A-Right> zO
""nmap <C-S-A-Left> zC

" toggle list
set nolist
unmap <leader>l
noremap <leader>p :set list!<CR>
unmap <silent> <leader>n
map <silent> <leader>l :set number!<CR>  " shortcut to turn off line numbers¬


"" syntastic next/prev Error
nnoremap <leader>i :lprev<CR>
nnoremap <leader>o :lnext<CR>


"" remap ; to insert selection from visual mode
"" http://stackoverflow.com/questions/4878980/vim-insert-selected-text-into-command-line
vnoremap ; y:<C-r>"<C-b>

"" wrap text
nnoremap <leader>w gqip

"" join text in paragraph
"" http://tech.groups.yahoo.com/group/vim/message/126388
nnoremap <leader>j vipJ^

"" remap
set spelllang=de,en
map <silent> <leader>d :set spell!<CR>
nmap <leader>s :call Preserve("%s/\\s\\+$//e")<CR>

"" MULTIPAGE
"" see: http://stackoverflow.com/questions/6873076/auto-scrollable-pagination-with-vim-using-vertical-split
nmap <silent> <Leader>ef :vsplit<bar>wincmd l<bar>exe "norm! Ljz<c-v><cr>"<cr>:set scb<cr>:wincmd h<cr> :set scb<cr>

"" center scrolling
"map <S-Up> <Up>zz
"map <S-Down> <Down>zz
"" scoll lock toggle
map <leader>zz :let &scrolloff=999-&scrolloff<cr>
" center search
nmap n nzz
nmap N Nzz

" select all
nmap <C-a> ggVG

"" next/previous buffer
nmap <silent> <C-left> :bprev<CR>
nmap <silent> <C-right> :bnext<CR>
"" close buffer and goto next. works with TabBar
""nmap <C-x> :bd<CR>:bnext<CR>
"" Bclose script doesn't delete windows. Annoyance Free.
nmap <C-x> :Bclose<CR>


nmap <C-n> :tabnew<CR>
"nmap <leader>t :tabnew
"nmap <C-n> :tab split<CR>
nmap <C-c> :tabclose<CR>
nmap <C-Up> :tabn<CR>
nmap <C-Down> :tabp<CR>

"""" CLIPBOARD
"" default copy/paste
nmap 1 "ay
nmap 11 "ayy
nmap 2 "ap
"" copy/paste paste to/from clipboard
map <C-S-Y> "+yy
map <C-S-P> "+P
"" set clipboard=unnamed
"" set clipboard=unnamedplus

"""" PLUGINS

" git gutter
nnoremap <leader>gg :GitGutterToggle<CR>
" Gitv, vim gitk
nnoremap <leader>gv :Gitv<CR>
nnoremap <leader>gm :Merginal<CR>
nnoremap <leader>gi :Gissues<CR>
nnoremap <leader>ga :Giadd<CR>


" MiniMap
" https://github.com/koron/minimap-vim
nnoremap mimi :MinimapSync<CR>
nnoremap mc :MinimapStop<CR>


"" fontsize
nmap <silent> <leader>9 <Plug>FontsizeBegin
nmap <silent> <leader>= <Plug>FontsizeInc
nmap <silent> <leader>- <Plug>FontsizeDec
nmap <silent> <leader>0 <Plug>FontsizeDefault

"" open bash in vertical split
nnoremap <leader>c :lcd %:p:h<CR>:ConqueTermSplit bash<CR>


"" allow semicolon to enter command mode from normal mode
""noremap ; :

"" paste selected text into command line
"" http://stackoverflow.com/a/8750499/1130358
vnoremap ; y:<C-r>"<C-b>

noremap <leader>; <ESC>

"" lusty
nnoremap <leader>, :LustyJuggler<CR>
nnoremap <leader>/ :LustyFilesystemExplorer<CR>
nnoremap <leader>. :LustyFilesystemExplorerFromHere<CR>
"" buffergator
noremap <leader>m :BuffergatorToggle<CR>
noremap <leader>n :NERDTreeToggle<CR>
noremap <leader>N :NERDTree<CR>


"" Tagbar
nnoremap tt :TagbarToggle<CR>
"" unite-outline
nnoremap ty :Unite outline<CR>


"" Autoformat
noremap <leader>f :Autoformat<CR><CR>

"" Voom
""nnoremap ty :VoomToggle<CR>

"" vimroom
"" nnoremap <leader>r :VimroomToggle<CR>





"" Fuzzy Finder
"nmap <LEADER>f :FufFile<SPACE>**/<CR>
"nmap <LEADER>F :FufRenewCache<CR>
"nmap <leader>t :FufCoverageFile<Space>
"nmap <leader>ft :FufTag<Space>

"" TaskList
""nmap <F11> :TaskList<CR>

"" NERDTree
noremap <silent> <f9> :NERDTreeToggle<CR>
""map <leader>nm :NERDTree<CR>
""map <leader>nn :NERDTreeToggle<CR>
""map <leader>nf :NERDTreeFind<CR>
""map <leader>nx :NERDTreeClose<CR>


function! SynOff()
    " Set Syntax hightlighting to off and other performance tweaks.
    " Useful when pasting big files
    syntax off
    set nocursorcolumn
    set nocursorline
    set noshowmatch
    let g:syntastic_mode_map = { 'mode': 'passive' }
    :GitGutterDisable
endfunction
nmap <leader>1 :call SynOff()<CR>


function! SynOn()
    " Set Syntax hightlighting to off and other performance tweaks.
    " Useful when pasting big files
    syntax on
    "set cursorcolumn
    set cursorline
    set showmatch
    let g:syntastic_mode_map = { 'mode': 'active' }
    :GitGutterEnable
endfunction
nmap <leader>2 :call SynOn()<CR>




"" quit fast
"nmap :qq<CR> :qall<CR>

"" move lines and blocks
"" see http://vim.wikia.com/wiki/Moving_lines_up_or_down
"nnoremap <C-Up> :m+<CR>==
"nnoremap <C-Down> :m-2<CR>==
"inoremap <C-Up> <Esc>:m+<CR>==gi
"inoremap <C-Down> <Esc>:m-2<CR>==gi
"vnoremap <C-Up> :m'>+<CR>gv=gv
"vnoremap <C-Down> :m-2<CR>gv=gv

"" autocomplpopup bug
"autocmd BufRead,BufNewFile *.tex,*.txt,*.rst setlocal tw=79 fo=aw2tq
"autocmd BufRead,BufNewFile *.py setlocal tw=79 fo=aw2cq

" Use ranger as vim file manager
" http://ornicar.github.com/2011/02/12/ranger-as-vim-file-manager.html
function! Ranger()
    " Get a temp file name without creating it
    let tmpfile = substitute(system('mktemp -u'), '\n', '', '')
    " Launch ranger, passing it the temp file name
    silent exec '!RANGER_RETURN_FILE='.tmpfile.' ra'
    " If the temp file has been written by ranger
    if filereadable(tmpfile)
        " Get the selected file name from the temp file
        let filetoedit = system('cat '.tmpfile)
        exec 'edit '.filetoedit
        call delete(tmpfile)
    endif
    redraw!
endfunction
nmap <leader>q :call Ranger()<cr>

"function! Ranger2()
"    let tmp = /tmp/chosen
"    silent !ra %:h --choosefile=/tmp/chosen
"    if filereadable(tmp)
"        let filetoedit = system('cat '.tmp)
"        exec 'edit '.filetoedit
"        call delete(tmp)
"    endif
"    redraw!
"endfunction
"nmap <leader>q :call Ranger2()<cr>


"" split windows
"" http://techdebug.com/blog/2008/05/22/vim-split-tips/
" Max/unmax splits
nnoremap <C-w>e :call MaximizeToggle()<cr>
"nnoremap <c-W>O :call MaximizeToggle()<cr>
"nnoremap <c-W><c-O> :call MaximizeToggle()<cr>
function! MaximizeToggle()
  if exists("s:maximize_session")
    exec "source " . s:maximize_session
    call delete(s:maximize_session)
    unlet s:maximize_session
    let &hidden=s:maximize_hidden_save
    unlet s:maximize_hidden_save
  else
    let s:maximize_hidden_save = &hidden
    let s:maximize_session = tempname()
    set hidden
    exec "mksession! " . s:maximize_session
    only
  endif
endfunction
"nnoremap <C-w>a :call WindowToggle()<CR>
"function! WindowToggle()
"    "" toggle
"    let s:toggle_split = exists('s:toggle_split') ? !s:toggle_split : 1
"    if s:toggle_split
"        "" <C-w>w<CR>
"        echo 'implement me 1'
"    else
"        "" <C-p>p<CR>
"        echo 'imeplement me 2'
"    endif
"endfunction


"" autocomplete behavior
"" http://vim.wikia.com/wiki/Improve_completion_popup_menu
"inoremap <expr> <Esc>      pumvisible() ? "\<C-e>" : "\<Esc>"
"inoremap <expr> <CR>       pumvisible() ? "\<C-y>" : "\<CR>"
"inoremap <expr> <Down>     pumvisible() ? "\<C-n>" : "\<Down>"
"inoremap <expr> <Up>       pumvisible() ? "\<C-p>" : "\<Up>"
"inoremap <expr> <PageDown> pumvisible() ? "\<PageDown>\<C-p>\<C-n>" : "\<PageDown>"
"inoremap <expr> <PageUp>   pumvisible() ? "\<PageUp>\<C-p>\<C-n>" : "\<PageUp>"


"" TILE ALL OPEN BUFFERS
"" http://www.vimbits.com/bits/375
" open all buffers in separate (vertical) panes (see ':help :ball' and ':help :vertical')
noremap <silent> <leader>a :vertical :ball<cr>



function! RangeChooser()
    let temp = tempname()
" The option "--choosefiles" was added in ranger 1.5.1. Use the next line
" with ranger 1.4.2 through 1.5.0 instead.
"exec 'silent !ranger --choosefile=' . shellescape(temp)
    exec 'silent !ranger --choosefiles=' . shellescape(temp)
    if !filereadable(temp)
" Nothing to read.
        return
    endif
    let names = readfile(temp)
    if empty(names)
" Nothing to open.
        return
    endif
" Edit the first item.
    exec 'edit ' . fnameescape(names[0])
" Add any remaning items to the arg list/buffer list.
    for name in names[1:]
        exec 'argadd ' . fnameescape(name)
    endfor
    redraw!
endfunction
command! -bar RangerChooser call RangeChooser()
nnoremap <leader>r :<C-U>RangerChooser<CR>

" https://groups.google.com/forum/#!msg/vim_use/b0ECdpN4vEo/aUR5-naoPLoJ
"fun! RangerChooser(...)
"    let tmpfile = tempname()
"    if a:0 > 0 && a:1 != ""
"        let dir = a:1
"    elseif expand("%")
"        let dir = expand("%:p:h")
"    else
"        let dir = "."
"    endif
"    exe 'silent !ranger --choosefile='.tmpfile dir
"    if filereadable(tmpfile)
"        exe 'edit' readfile(tmpfile)[0]
"        call delete(tmpfile)
"    endif
"    redraw!
"endfun
""map ,r :call RangerChooser()<CR>
"command -nargs=? RangerChooser call RangerChooser("<args>")
