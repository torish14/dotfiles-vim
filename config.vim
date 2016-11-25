"" DEBUG
""set verbose

set nocompatible  " This setting prevents vim from emulating the original vi's bugs and limitations

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



"" GENERAL SETTINGS
"""""""""""""""""""

set nomodeline  " FreeBSD security advisory for this one...
set title  " set the title of the window
set titlestring=%f%(\ [%M]%)¬
set showmode
set showcmd  " Display an incomplete command in the lower right corner of the Vim window
set equalalways  " set all window splits equal
set hidden  " allow for switching buffers when a file has changes
set t_vb=  " make sure the bell shuts up
set pastetoggle=<F2>
set number       " turn on line numbers¬
set showmatch    " indicate open/closing brackets
set ttyfast

set nowrap
set nolist       " nolist needed for linebreak
set linebreak    " when wrapping, don't break words

set cursorline
set colorcolumn=80
set so=4  " Set a margin of lines when scrolling

set lazyredraw   " dont redraw while vim is busy
set wildmode=list:longest
set formatoptions=qrnl
set completeopt+=longest,menuone

match ErrorMsg '\%>80v.+'



"" SEARCH
"""""""""

nnoremap / /\v
vnoremap / /\v
set gdefault
set hlsearch  " highlight the terms
set ignorecase  " make searches case-insensitive
set smartcase  " unless they contain upper-case letters



"" SPELL CHECKING
"""""""""""""""""

set nospell  " no spellcheck by default
set spelllang=de,en



"" SYNTAX AND FORMATING
"""""""""""""""""""""""

syntax on  " turn on syntax highlighting

"" enables filetype specific plugins
filetype on
filetype plugin on
filetype indent on

set tabstop=4
set shiftwidth=4
set softtabstop=4
set expandtab
set cindent  " C-Style indent. better than smartindent, as it doesn't move comments at beginning of file
set foldmethod=indent
set foldlevelstart=20  " set foldlevel higher so opened buffers arent folded

autocmd BufRead,BufNewFile *.html,*.pt,*.xml,*.zcml setlocal tabstop=2 shiftwidth=2 softtabstop=2
autocmd BufRead,BufNewFile *.js setlocal tabstop=4 shiftwidth=4 softtabstop=4 foldmethod=syntax
autocmd BufRead,BufNewFile *.css setlocal tabstop=4 shiftwidth=4 softtabstop=4
autocmd BufRead,BufNewFile *.robot setlocal tabstop=2 shiftwidth=2 softtabstop=2 filetype=robot
autocmd BufRead,BufNewFile *.tex,*.txt,*.rst setlocal wrap textwidth=0 wrapmargin=0  " only use semantic linebreaks in text files.

autocmd BufRead,BufNewFile *.xml,*.zcml set filetype=xml
autocmd BufRead,BufNewFile *.pt,*.cpt,*.zpt set filetype=zpt syntax=xml
autocmd BufRead,BufNewFile **/nginx/** set filetype=nginx
autocmd BufRead,BufNewFile *.less set filetype=less syntax=less
autocmd BufRead,BufNewFile *.css set filetype=css syntax=css
autocmd BufNewFile,BufReadPost *.md set filetype=markdown  " https://github.com/tpope/vim-markdown



"" VISUAL STUFF
"""""""""""""""

" set background=dark
" set background=light

let g:molokai_original = 0
colorscheme molokai
" colorscheme gruvbox
" colorscheme github

"" GUI
if has('gui_running')
    set antialias
    " Remove all the UI cruft
    set go-=T  " toolbar
    set go-=l  " left hand scrollbar
    set go-=L  " left hand scrollbar - present on split windows
    "" set go-=r  " right hand scrollbar
    "" set go-=R  " right hand scrollbar - present on split windows
    set go-=M  " rm menubar and don't source the menubar script
    set go-=m  " menubar

    set guicursor+=a:blinkon0 " Disable all blinking
    set guicursor+=a:blinkoff0
    set guicursor+=a:blinkwait0
    set guifont=Ubuntu\ Mono\ for\ Powerline\ Plus\ Nerd\ File\ Types\ 11

    " http://stackoverflow.com/questions/6158860/change-color-of-cursor-in-vim
    au InsertLeave * hi Cursor guibg=blue
    au InsertEnter * hi Cursor guibg=green

    highlight Comment gui=italic
    highlight Search guibg=LawnGreen guifg=RoyalBlue
else
    set t_Co=256
    highlight Normal ctermbg=none
endif
if has('mouse')
    set mouse=a  " have the mouse enabled all the time
    set mousemodel=popup " make a menu popup on right click
endif

highlight SpellBad term=underline gui=undercurl guisp=Red
set fillchars+=vert:\ " No char for vertical split is even prettier thant |
set listchars=tab:▸\ ,eol:¬  " Use the same symbols as TextMate for tabstops and EOLs



"" FILES AND DIRECTORIES
""""""""""""""""""""""""

set wildignore+=*.o,*.obj
set wildignore+=*.pyc,*.pyo
set wildignore+=.git,.svn,.hg

if has("win32") || has("win64")
   set backupdir=$TMP
   set directory=$TMP
else
   set backupdir=~/tmp
   set directory=~/tmp
end
set backupskip=~/tmp/*,/tmp/*



"" FUNCTIONS
""""""""""""
""""""""""""

"" STRIP TRAILING WHITESPACE
""""""""""""""""""""""""""""
function! Preserve(command)
    " Preparation: save last search, and cursor position.
    let _s=@/
    let l = line(".")
    let c = col(".")
    " Do the business:
    execute a:command
    " Clean up: restore previous search history, and cursor position
    let @/=_s
    call cursor(l, c)
endfunction



"" SYNTAX OFF / ON
""""""""""""""""""

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
    "" Turns off (turning on with same command seems to be broken)
    :SyntasticToggleMode
endfunction


function! SynOn()
    " Set Syntax hightlighting to on
    syntax on
    " set cursorcolumn
    set cursorline
    set showmatch
    let g:syntastic_mode_map = { 'mode': 'active' }
    :GitGutterEnable
    "" Turns on again
    :SyntasticCheck
endfunction












"" OLD AND OBSOLETE
"" partly already set by plugin vim-sensible

" set enc=utf-8  " set the default encoding
" set history=1000  " have 1000 lines of command-line (etc) history
" set statusline=\ \ \ \ \ line:%l\ column:%c\ \ \ %M%Y%r%=%-14.(%t%)\ %p%%
                    " set a custom status line similar to that of ``:set ruler``
" set laststatus=2  " show the statusline in all window
" set wildmenu
" set backspace=indent,eol,start
" set autoindent
" set synmaxcol=140  " limit syntax highlighting to the num cols
" set incsearch  " find as you type
" let $PYTHONPATH = $HOME."/.vim/src/pyflakes:".$PYTHONPATH
" let $PYTHONPATH = $HOME."/.vim/src/pep8:".$PYTHONPATH
" let $PATH = $HOME."/.vim/bin/:".$PATH

"" http://superuser.com/questions/697347/vim-how-to-treat-three-quotations-in-a-row-as-a-comment-rather-than-a-string
"" Highlight docstrings as comments, not string.
" syn region pythonDocstring  start=+^\s*[uU]\?[rR]\?"""+ end=+"""+ keepend excludenl contains=pythonEscape,@Spell,pythonDoctest,pythonDocTest2,pythonSpaceError
" syn region pythonDocstring  start=+^\s*[uU]\?[rR]\?'''+ end=+'''+ keepend excludenl contains=pythonEscape,@Spell,pythonDoctest,pythonDocTest2,pythonSpaceError
" hi def link pythonDocstring pythonComment
" highlight pythonDocstring gui=italic

"" COLORSCHEME
" set background=dark
" set background=light
" colorscheme github

" let g:hybrid_custom_term_colors = 0
" let g:hybrid_reduced_contrast = 1
" colorscheme hybrid

" if has('gui_running')
    " set guifont=Source\ Code\ Pro\ for\ Powerline\ 10
    " set guifont=Ubuntu\ Mono\ 11
    " set guifont=Source\ Code\ Pro\ 10
" endif

"" How to stop autoindenting for specific file types
"" http://vim.wikia.com/wiki/How_to_stop_auto_indenting

"" ANNOYING! wrapts too often, too eary
"" wrap python at col 79
" autocmd BufRead,BufNewFile *.py setlocal textwidth=79

""treat ZCML as XML:
""autocmd BufRead,BufNewFile *.html,*.pt,*.xml,*.zcml set filetype=xml
""autocmd BufRead,BufNewFile *.pt set filetype=xml

" cd working directory to current file. enables to create files relative to
" another.
" http://vim.wikia.com/wiki/Set_working_directory_to_the_current_file
" autocmd BufEnter * silent! lcd %:p:h
" set autochdir

"" ANNOYING! moves comment on beginning of line
"" set smartindent

" http://stackoverflow.com/questions/906535/how-to-copy-yanked-text-to-vi-command-prompt
" 1) open command line :
" 2) register mode: <ctrl-r>
" 3) paste default register: "
" 3b) paste clipboard: +

"" allow semicolon to enter command mode from normal mode
""noremap ; :
""noremap <leader>; <ESC>


"" search object
"" http://vim.wikia.com/wiki/Copy_or_change_search_hit
"" http://sheerun.net/2014/03/21/how-to-boost-your-vim-productivity/
" vnoremap <silent> s //e<C-r>=&selection=='exclusive'?'+1':''<CR><CR>
"     \:<C-u>call histdel('search',-1)<Bar>let @/=histget('search',-1)<CR>gv
" omap s :normal vs<CR>


"" Maximize toggle splits - http://techdebug.com/blog/2008/05/22/vim-split-tips/
" nnoremap <C-w>e :call MaximizeToggle()<cr>
" function! MaximizeToggle()
"   if exists("s:maximize_session")
"     exec "source " . s:maximize_session
"     call delete(s:maximize_session)
"     unlet s:maximize_session
"     let &hidden=s:maximize_hidden_save
"     unlet s:maximize_hidden_save
"   else
"     let s:maximize_hidden_save = &hidden
"     let s:maximize_session = tempname()
"     set hidden
"     exec "mksession! " . s:maximize_session
"     only
"   endif
" endfunction

"" fold paragraphs
"" http://vimdoc.sourceforge.net/htmldoc/fold.html
" set foldexpr=getline(v:lnum)=~'^\\s*$'&&getline(v:lnum+1)=~'\\S'?'<1':1


"" project specific .vimrc
"" https://andrew.stwrt.ca/posts/project-specific-vimrc/
" set exrc
" set secure

""set wildignore+=bin,develop-eggs,eggs,*egg-info/**,include,lib,parts,var
"" Showmarks ignoring type of windows
""h : Help
""m : Non-modifiable
""p : Preview
""q : Quickfix
""r : Readonly
" let g:showmarks_ignore_type="hmpr"


