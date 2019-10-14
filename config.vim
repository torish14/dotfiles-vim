"" DEBUG
""set verbose
"
set nocompatible  " This setting prevents vim from emulating the original vi's bugs and limitations
set encoding=utf-8  " set the default encoding


"" GENERAL SETTINGS
"""""""""""""""""""

set nomodeline  " FreeBSD security advisory for this one...
set title  " set the title of the window
set titlestring=%f%(\ [%M]%)¬
set showmode
set showcmd  " Display an incomplete command in the lower right corner of the Vim window
set hidden  " allow for switching buffers when a file has changes
set t_vb=  " make sure the bell shuts up
set pastetoggle=<F2>
set number       " turn on line numbers¬

" performance improvements
set noshowmatch    " do not indicate open/closing brackets - use matchparen
" let loaded_matchparen = 1
" set NoMatchParen
" lower timeout for parenthesis matching for better performance.
" See: http://vi.stackexchange.com/a/5318/6303
let g:matchparen_timeout = 100
let g:matchparen_insert_timeout = 100


set ttyfast

set equalalways  " set all window splits equal
set splitbelow  " put the new window below the current one
set splitright  " put the new window right of the current one

set nowrap
set nolist       " nolist needed for linebreak
set linebreak    " when wrapping, don't break words

set cursorline
set colorcolumn=80
set so=4  " Set a margin of lines when scrolling

set lazyredraw   " dont redraw while vim is busy
set wildmode=list:longest
set formatoptions=qrnl

" autocomplete options:
"   - also show, if only one item is present
"   - do not insert automatically
"   - do not select automatically
"   - show previews with additional info, if availalble
set completeopt=menuone,noinsert,noselect,preview

match ErrorMsg '\%>80v.+'


"" SEARCH
"""""""""
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

set autoindent
set smartindent

set tabstop=4
set shiftwidth=4
set softtabstop=0
set expandtab
set cindent  " C-Style indent. better than smartindent, as it doesn't move comments at beginning of file
set foldmethod=indent
set foldlevelstart=20  " set foldlevel higher so opened buffers arent folded

autocmd BufRead,BufNewFile *.html,*.pt,*.xml,*.zcml,*.svg setlocal tabstop=2 shiftwidth=2 softtabstop=0
autocmd BufRead,BufNewFile *.js,*.jsx,*.vue setlocal tabstop=2 shiftwidth=2 softtabstop=0 foldmethod=indent  " foldmethod=syntax
autocmd BufRead,BufNewFile *.css setlocal tabstop=4 shiftwidth=4 softtabstop=0
autocmd BufRead,BufNewFile *.robot setlocal tabstop=2 shiftwidth=2 softtabstop=0
autocmd BufRead,BufNewFile *.tex,*.txt,*.rst setlocal wrap textwidth=0 wrapmargin=0  " only use semantic linebreaks in text files.
autocmd BufRead,BufNewFile *.php setlocal tabstop=4 shiftwidth=4 softtabstop=0

autocmd BufNewFile,BufRead *.robot set filetype=robot syntax=robot
autocmd BufNewFile,BufRead *.vue set filetype=javascript.vue syntax=javascript
autocmd BufNewFile,BufRead *.jsx set filetype=javascript.jsx syntax=javascript
autocmd BufRead,BufNewFile *.xml,*.zcml,*.svg set filetype=xml
"" autocmd BufRead,BufNewFile *.pt,*.cpt,*.zpt set filetype=zpt syntax=xml
autocmd BufRead,BufNewFile *.pt,*.cpt,*.zpt set filetype=xhtml syntax=xhtml
autocmd BufRead,BufNewFile **/nginx/** set filetype=nginx
autocmd BufRead,BufNewFile *.scss set filetype=scss syntax=scss
autocmd BufRead,BufNewFile *.less set filetype=less syntax=less
autocmd BufRead,BufNewFile *.css set filetype=css syntax=css
autocmd BufNewFile,BufReadPost *.md set filetype=markdown  " https://github.com/tpope/vim-markdown


" Open some binaries with external tools
autocmd BufReadCmd *.pdf silent !xdg-open % &
autocmd BufEnter *.pdf bdelete
autocmd BufReadCmd *.png silent !xdg-open % &
autocmd BufEnter *.png bdelete
autocmd BufReadCmd *.jpg silent !xdg-open % &
autocmd BufEnter *.jpg bdelete
autocmd BufReadCmd *.jpeg silent !xdg-open % &
autocmd BufEnter *.jpeg bdelete
autocmd BufReadCmd *.gif silent !xdg-open % &
autocmd BufEnter *.gif bdelete


" More performance tips:
"
" See, which plugins register for a specific event:
" http://stackoverflow.com/a/19031285/1337474
" :au CursorMoved
"
" Track performance:
" http://stackoverflow.com/a/12216578/1337474
" ":profile start profile.log
" ":profile func *
" ":profile file *
" "" At this point do slow actions
" ":profile pause
" ":noautocmd qall!
"
" Startup time:
" http://stackoverflow.com/a/1702904/1337474
" vim --startuptime vim.log

" Anti performance setting - 250ms. default is 4s
" Increases gitgutter update speed.
" set updatetime=250
set updatetime=4000


"" VISUAL STUFF
"""""""""""""""

" set background=dark
" set background=light

" let g:molokai_original = 0
" colorscheme molokai
" colorscheme github
" colorscheme industry

set background=dark
" let g:oceanic_next_terminal_bold = 1
" let g:oceanic_next_terminal_italic = 1
" colorscheme OceanicNext
colorscheme PaperColor
" set highlight Normal guibg=black


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

    " http://vim.wikia.com/wiki/Configuring_the_cursor
    " highlight Cursor guifg=black guibg=white
    " highlight iCursor guifg=white guibg=green
    " set guicursor=n-v-c:block-Cursor
    " set guicursor+=i:ver100-iCursor
    " set guicursor+=i:hor100-iCursor
    set guicursor+=a:blinkon0 " Disable all blinking
    set guicursor+=a:blinkoff0
    set guicursor+=a:blinkwait0
    set guifont=UbuntuMono\ Nerd\ Font\ Regular\ 11
    "set guifont=Ubuntu\ Mono\ for\ Powerline\ Plus\ Nerd\ File\ Types\ 11
    set linespace=1 " a little more line spacing

    highlight Comment gui=italic
    highlight CursorLineNR gui=bold
    highlight Search guibg=LawnGreen guifg=RoyalBlue
else
    set t_Co=256
    highlight Normal ctermbg=none
    highlight CursorLineNR cterm=bold
endif
if has('mouse')
    set mouse=a  " have the mouse enabled all the time
    set mousemodel=popup " make a menu popup on right click
endif

highlight SpellBad term=underline gui=undercurl guisp=Red

" highlight CursorLine cterm=NONE ctermbg=darkred ctermfg=white guibg=darkred guifg=white

" Highlighting the current line number in vim
" https://stackoverflow.com/a/13275419/1337474
" hi clear CursorLine
" augroup CLClear
"     autocmd! ColorScheme * hi clear CursorLine
" augroup END
" hi CursorLineNR cterm=bold
" augroup CLNRSet
"     autocmd! ColorScheme * hi CursorLineNR cterm=bold
" augroup END

set fillchars+=vert:\ " No char for vertical split is even prettier thant |
set listchars=tab:▸\ ,eol:¬  " Use the same symbols as TextMate for tabstops and EOLs


"" FILES AND DIRECTORIES
""""""""""""""""""""""""

set wildignore+=*.o,*.obj
set wildignore+=*.pyc,*.pyo
set wildignore+=.git,.svn,.hg
set backupdir=~/.tmp
set directory=~/.tmp
set backupskip=~/.tmp/*


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

