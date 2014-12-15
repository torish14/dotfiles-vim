"" DEBUG
""set verbose

source $HOME/.vim/plugins.vim
source $HOME/.vim/common.vim
source $HOME/.vim/plugins-config.vim
source $HOME/.vim/inoutcomment.vim
source $HOME/.vim/bclose.vim

"set background=dark
""set background=light
colorscheme molokai
let g:molokai_original = 0
" colorscheme github

set listchars=tab:▸\ ,eol:¬  " Use the same symbols as TextMate for tabstops and EOLs

"" http://superuser.com/questions/697347/vim-how-to-treat-three-quotations-in-a-row-as-a-comment-rather-than-a-string
"" Highlight docstrings as comments, not string.
"syn region pythonDocstring  start=+^\s*[uU]\?[rR]\?"""+ end=+"""+ keepend excludenl contains=pythonEscape,@Spell,pythonDoctest,pythonDocTest2,pythonSpaceError
"syn region pythonDocstring  start=+^\s*[uU]\?[rR]\?'''+ end=+'''+ keepend excludenl contains=pythonEscape,@Spell,pythonDoctest,pythonDocTest2,pythonSpaceError
"hi def link pythonDocstring pythonComment
"highlight pythonDocstring gui=italic

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
    ""set guifont=Source\ Code\ Pro\ for\ Powerline\ 10
    ""set guifont=Ubuntu\ Mono\ 11
    ""set guifont=Source\ Code\ Pro\ 10
endif

highlight Comment gui=italic

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

set lazyredraw  " dont redraw while vim is busy

" fold paragraphs
" http://vimdoc.sourceforge.net/htmldoc/fold.html
set foldexpr=getline(v:lnum)=~'^\\s*$'&&getline(v:lnum+1)=~'\\S'?'<1':1

"" How to stop autoindenting for specific file types
"" http://vim.wikia.com/wiki/How_to_stop_auto_indenting

"" bufstop for xml based files
autocmd BufRead,BufNewFile *.html,*.pt,*.xml,*.zcml setlocal tabstop=2 shiftwidth=2 softtabstop=2
autocmd BufRead,BufNewFile *.js setlocal tabstop=2 shiftwidth=2 softtabstop=2
autocmd BufRead,BufNewFile *.css setlocal tabstop=4 shiftwidth=4 softtabstop=4
autocmd BufRead,BufNewFile *.robot setlocal tabstop=2 shiftwidth=2 softtabstop=2 filetype=robot
"" https://github.com/tpope/vim-markdown
autocmd BufNewFile,BufReadPost *.md set filetype=markdown

""treat ZCML as XML:
""autocmd BufRead,BufNewFile *.html,*.pt,*.xml,*.zcml set filetype=xml
""autocmd BufRead,BufNewFile *.pt set filetype=xml
autocmd BufRead,BufNewFile *.xml,*.zcml set filetype=xml
autocmd BufNewFile,BufRead *.pt,*.cpt,*.zpt set filetype=zpt syntax=xml

"" :W or :Wa should write/write all
command W execute "w"
command Wa execute "wa"

"" delete into blackhole register, so that other aren't overwritten
"" thanks bairu from #vim!
nnoremap <Del> "_x

set smartindent


set foldlevelstart=20 " set foldlevel higher so opened buffers arent folded

" toggle list
set nolist
unmap <leader>l
noremap <leader>p :set list!<CR>
unmap <silent> <leader>n
map <silent> <leader>l :set number!<CR>  " shortcut to turn off line numbers¬


"" paste selected text into command line
"" http://stackoverflow.com/questions/4878980/vim-insert-selected-text-into-command-line
"" http://stackoverflow.com/a/8750499/1130358
vnoremap ; y:<C-r>"<C-b>

" http://stackoverflow.com/questions/906535/how-to-copy-yanked-text-to-vi-command-prompt
" 1) open command line :
" 2) register mode: <ctrl-r>
" 3) paste default register: "
" 3b) paste clipboard: +

"" allow semicolon to enter command mode from normal mode
""noremap ; :
""noremap <leader>; <ESC>

"" remap
set spelllang=de,en
map <silent> <leader>d :set spell!<CR>
nmap <leader>s :call Preserve("%s/\\s\\+$//e")<CR>


"" center scrolling
"map <S-Up> <Up>zz
"map <S-Down> <Down>zz
"" scoll lock toggle
map <leader>zz :let &scrolloff=999-&scrolloff<cr>
" center search
nmap n nzz
nmap N Nzz

"" search object
" http://vim.wikia.com/wiki/Copy_or_change_search_hit
" http://sheerun.net/2014/03/21/how-to-boost-your-vim-productivity/
vnoremap <silent> s //e<C-r>=&selection=='exclusive'?'+1':''<CR><CR>
    \:<C-u>call histdel('search',-1)<Bar>let @/=histget('search',-1)<CR>gv
omap s :normal vs<CR>


"""" CLIPBOARD
"" default copy/paste
map 1 "+yy
map 2 "+P

"nmap 1 "ay
"nmap 11 "ayy
"nmap 2 "ap
"" copy/paste paste to/from clipboard
"map <C-S-1> "+yy
"map <C-S-2> "+P
"" set clipboard=unnamed
"" set clipboard=unnamedplus


function! SynOff()
    " Set Syntax hightlighting to off and other performance tweaks.
    " Useful when pasting big files
    " See:
    " http://stackoverflow.com/questions/4775605/vim-syntax-highlight-improve-performance
    " http://superuser.com/questions/302186/vim-scrolls-very-slow-when-a-line-is-to-long
    "
    syntax off
    set nocursorcolumn
    set nocursorline
    set noshowmatch
    set lazyredraw
    let g:syntastic_mode_map = { 'mode': 'passive' }
    :GitGutterDisable
endfunction
nmap <leader>1 :call SynOff()<CR>


function! SynOn()
    " Set Syntax hightlighting to on
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
"function! Ranger()
"    " Get a temp file name without creating it
"    let tmpfile = substitute(system('mktemp -u'), '\n', '', '')
"    " Launch ranger, passing it the temp file name
"    silent exec '!RANGER_RETURN_FILE='.tmpfile.' ra'
"    " If the temp file has been written by ranger
"    if filereadable(tmpfile)
"        " Get the selected file name from the temp file
"        let filetoedit = system('cat '.tmpfile)
"        exec 'edit '.filetoedit
"        call delete(tmpfile)
"    endif
"    redraw!
"endfunction
"nmap <leader>XXX :call Ranger()<cr>

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

source $HOME/.vim/keymap.vim
