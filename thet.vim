"" DEBUG
""set verbose

source $HOME/.vim/common.vim
source $HOME/.vim/python-config.vim
source $HOME/.vim/plugins.vim
source $HOME/.vim/plugins-config.vim
source $HOME/.vim/inoutcomment.vim
source $HOME/.vim/ranger_filechooser.vim

set listchars=tab:▸\ ,eol:¬  " Use the same symbols as TextMate for tabstops and EOLs


"" project specific .vimrc
"" https://andrew.stwrt.ca/posts/project-specific-vimrc/
set exrc
set secure

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"" SPELLCHECK
""  - no spellcheck by default
""
set nospell
set spelllang=de,en


"" http://superuser.com/questions/697347/vim-how-to-treat-three-quotations-in-a-row-as-a-comment-rather-than-a-string
"" Highlight docstrings as comments, not string.
"syn region pythonDocstring  start=+^\s*[uU]\?[rR]\?"""+ end=+"""+ keepend excludenl contains=pythonEscape,@Spell,pythonDoctest,pythonDocTest2,pythonSpaceError
"syn region pythonDocstring  start=+^\s*[uU]\?[rR]\?'''+ end=+'''+ keepend excludenl contains=pythonEscape,@Spell,pythonDoctest,pythonDocTest2,pythonSpaceError
"hi def link pythonDocstring pythonComment
"highlight pythonDocstring gui=italic

"" COLORSCHEME
" set background=dark
" set background=light
" colorscheme github

" let g:hybrid_custom_term_colors = 0
" let g:hybrid_reduced_contrast = 1
" colorscheme hybrid

let g:molokai_original = 0
colorscheme molokai


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
    ""set guifont=Source\ Code\ Pro\ for\ Powerline\ 10
    ""set guifont=Ubuntu\ Mono\ 11
    ""set guifont=Source\ Code\ Pro\ 10

    "http://stackoverflow.com/questions/6158860/change-color-of-cursor-in-vim
    au InsertLeave * hi Cursor guibg=blue
    au InsertEnter * hi Cursor guibg=green

    highlight Comment gui=italic
    highlight Search guibg=LawnGreen guifg=RoyalBlue
else
    set t_Co=256
    highlight Normal ctermbg=none
endif

highlight SpellBad term=underline gui=undercurl guisp=Red
set fillchars+=vert:\ " No char for vertical split is even prettier thant |


" fugitive fix, could not rename swap file
" http://stackoverflow.com/questions/2932399/error-using-the-gdiff-command-of-fugitive-vim-using-gvim-for-windows-and-msys-g
if has("win32") || has("win64")
   set directory=$TMP
else
   set directory=~/tmp
end

set number       " turn on line numbers¬
set showmatch    " indicate open/closing brackets
set ttyfast
set nowrap
set nolist       " nolist needed for linebreak
set linebreak    " when wrapping, don't break words
set cursorline
set colorcolumn=80
match ErrorMsg '\%>80v.+'

set lazyredraw   " dont redraw while vim is busy

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

"" only use semantic linebreaks in text files.

"" seetings see:
autocmd BufRead,BufNewFile *.tex,*.txt,*.rst setlocal wrap textwidth=0 wrapmargin=0


"" ANNOYING! wrapts too often, too eary
"" wrap python at col 79
" autocmd BufRead,BufNewFile *.py setlocal textwidth=79

""treat ZCML as XML:
""autocmd BufRead,BufNewFile *.html,*.pt,*.xml,*.zcml set filetype=xml
""autocmd BufRead,BufNewFile *.pt set filetype=xml
autocmd BufRead,BufNewFile *.xml,*.zcml set filetype=xml
autocmd BufRead,BufNewFile *.pt,*.cpt,*.zpt set filetype=zpt syntax=xml
autocmd BufRead,BufNewFile **/nginx/** set filetype=nginx
autocmd BufRead,BufNewFile *.less set filetype=less syntax=less
autocmd BufRead,BufNewFile *.css set filetype=css syntax=css


" cd working directory to current file. enables to create files relative to
" another.
" http://vim.wikia.com/wiki/Set_working_directory_to_the_current_file
" autocmd BufEnter * silent! lcd %:p:h
" set autochdir

"" :W or :Wa should write/write all
command W execute "w"
command Wa execute "wa"

"" delete into blackhole register, so that other aren't overwritten
"" thanks bairu from #vim!
nnoremap <Del> "_x

"" ANNOYING! moves comment on beginning of line
"" set smartindent
set cindent

set foldlevelstart=20 " set foldlevel higher so opened buffers arent folded


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

"" search object
" http://vim.wikia.com/wiki/Copy_or_change_search_hit
" http://sheerun.net/2014/03/21/how-to-boost-your-vim-productivity/
vnoremap <silent> s //e<C-r>=&selection=='exclusive'?'+1':''<CR><CR>
    \:<C-u>call histdel('search',-1)<Bar>let @/=histget('search',-1)<CR>gv
omap s :normal vs<CR>

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


" Maximize toggle splits - http://techdebug.com/blog/2008/05/22/vim-split-tips/
nnoremap <C-w>e :call MaximizeToggle()<cr>
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

source $HOME/.vim/keymap.vim
