"" OLD AND OBSOLETE
"" partly already set by plugin vim-sensible

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
