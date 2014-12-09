" incsearch
map /  <Plug>(incsearch-forward)
map ?  <Plug>(incsearch-backward)
map g/ <Plug>(incsearch-stay)
let g:incsearch#consistent_n_direction = 1
let g:incsearch#magic = '\v'
" buffer completion: <c-l>
"<Over>(buffer-complete)


" The Silver Searcher
" http://robots.thoughtbot.com/faster-grepping-in-vim
" https://github.com/ggreer/the_silver_searcher
if executable('ag')
  " Use ag over grep
  set grepprg=ag\ -i\ --nogroup\ --nocolor

  " Use ag in CtrlP for listing files. Lightning fast and respects .gitignore
  "let g:ctrlp_user_command = 'ag %s -i -l --nocolor -g ""'

  " ag is fast enough that CtrlP doesn't need to cache
  "let g:ctrlp_use_caching = 0
endif
" bind K to grep word under cursor
nnoremap K :grep! "\b<C-R><C-W>\b"<CR>:cw<CR>
" bind \ (backward slash) to grep shortcut
command -nargs=+ -complete=file -bar Ag silent! grep! -i <args>|cwindow|redraw!
nnoremap \ :Ag<SPACE>

"" neocomplete
"let g:acp_enableAtStartup = 0
"let g:neocomplete#enable_at_startup = 1
"let g:neocomplete#enable_smart_case = 1
"let g:neocomplete#sources#syntax#min_keyword_length = 3
"let g:neocomplete#lock_buffer_name_pattern = '\*ku\*'
"
"" Define dictionary.
"let g:neocomplete#sources#dictionary#dictionaries = {
"    \ 'default' : '',
"    \ 'vimshell' : $HOME.'/.vimshell_hist',
"    \ 'scheme' : $HOME.'/.gosh_completions'
"        \ }
"
"" Define keyword.
"if !exists('g:neocomplete#keyword_patterns')
"    let g:neocomplete#keyword_patterns = {}
"endif
"let g:neocomplete#keyword_patterns['default'] = '\h\w*'
"
"" Plugin key-mappings.
"inoremap <expr><C-g>     neocomplete#undo_completion()
"inoremap <expr><C-l>     neocomplete#complete_common_string()
"
"inoremap <silent> <CR> <C-r>=<SID>my_cr_function()<CR>
"function! s:my_cr_function()
"    return pumvisible() ? neocomplete#close_popup() : "\<CR>"
"endfunction
"" <TAB>: completion.
"inoremap <expr><TAB>  pumvisible() ? "\<C-n>" : "\<TAB>"
"" <C-h>, <BS>: close popup and delete backword char.
"inoremap <expr><C-h> neocomplete#smart_close_popup()."\<C-h>"
"inoremap <expr><BS> neocomplete#smart_close_popup()."\<C-h>"
"inoremap <expr><C-y>  neocomplete#close_popup()
"inoremap <expr><C-e>  neocomplete#cancel_popup()
"
"" Enable omni completion.
"autocmd FileType css setlocal omnifunc=csscomplete#CompleteCSS
"autocmd FileType html,markdown setlocal omnifunc=htmlcomplete#CompleteTags
"autocmd FileType javascript setlocal omnifunc=javascriptcomplete#CompleteJS
"autocmd FileType python setlocal omnifunc=pythoncomplete#Complete
"autocmd FileType xml setlocal omnifunc=xmlcomplete#CompleteTags
"
"" Enable heavy omni completion.
"if !exists('g:neocomplete#sources#omni#input_patterns')
"  let g:neocomplete#sources#omni#input_patterns = {}
"endif



""" YouCompleteMe
"let g:ycm_filetype_blacklist = {
"    \ 'tagbar' : 1,
"    \ 'qf' : 1,
"    \ 'unite' : 1,
"    \ 'vimwiki' : 1,
"    \ 'pandoc' : 1,
"    \ 'infolog' : 1,
"    \ 'mail' : 1
"\}
"let g:ycm_key_list_select_completion = ['<TAB>', '<Down>']
""let g:ycm_key_list_previous_completion=['<Up>']
"let g:ycm_complete_in_comments = 1
"let g:ycm_complete_in_strings = 1
"let g:ycm_collect_identifiers_from_comments_and_strings = 1
"let g:ycm_collect_identifiers_from_tags_files = 1
""let g:ycm_path_to_python_interpreter = '/home/thet/dev/cloud19/wireframe/noeku-buildout/bin/zopepy'
"let g:ycm_add_preview_to_completeopt = 0
"let g:ycm_autoclose_preview_window_after_completion = 1
"let g:ycm_autoclose_preview_window_after_insertion = 1
"let g:ycm_use_ultisnips_completer = 1
""let g:ycm_server_keep_logfiles = 1
"set completeopt=longest,menuone

"" Ultisnips
"let g:UltiSnipsExpandTrigger="<TAB>"

"" http://stackoverflow.com/questions/14896327/ultisnips-and-youcompleteme
"function! g:UltiSnips_Complete()
"    call UltiSnips#ExpandSnippet()
"    if g:ulti_expand_res == 0
"        if pumvisible()
"            return "\<C-n>"
"        else
"            call UltiSnips#JumpForwards()
"            if g:ulti_jump_forwards_res == 0
"               return "\<TAB>"
"            endif
"        endif
"    endif
"    return ""
"endfunction
"au BufEnter * exec "inoremap <silent> " . g:UltiSnipsExpandTrigger . " <C-R>=g:UltiSnips_Complete()<cr>"
"let g:UltiSnipsJumpForwardTrigger="<tab>"
"let g:UltiSnipsListSnippets="<c-e>"
"" this mapping Enter key to <C-y> to chose the current highlight item
"" and close the selection list, same as other IDEs.
"" CONFLICT with some plugins like tpope/Endwise
"inoremap <expr> <CR> pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>"


"" neocomplete
"let g:neocomplcache_enable_at_startup = 1
"let g:neocomplcache_enable_smart_case = 1
"let g:neocomplcache_min_syntax_length = 3

"" jedi
"let g:jedi#auto_vim_configuration = 0
"let g:jedi#show_call_signatures = 0
"let g:jedi#popup_select_first = 0
"set completeopt=longest,menuone



"" indent guides
let g:indent_guides_enable_on_vim_startup = 1
let g:indent_guides_color_change_percent = 5

"" netrw-gx
let g:netrw_browsex_viewer= "gnome-open"  " explicitly configure gnome-open for netrw. more: help netrw-gx
let g:netrw_nogx = 1 " disable netrw's gx mapping. use open-browser.
"" netrw
let g:netrw_liststyle = 3

"" vim autoformat
"" https://github.com/Chiel92/vim-autoformat
"" https://github.com/hhatto/autopep8
let g:formatprg_args_expr_python = '"--aggressive --aggressive".(&textwidth ? " --max-line-length=".&textwidth : "")." /dev/stdin "'

let g:formatprg_xml = "tidy"
let g:formatprg_zpt = "html5tidy"
let g:formatprg_html = "html5tidy"
let g:formatprg_args_expr_xml = '"-q -i -xml -wrap 0 -utf8"'
let g:formatprg_args_expr_zpt = '"-q -i -xml -wrap 0 -utf8"'
let g:formatprg_args_expr_html = '"-q -i -xml -wrap 0 -utf8"'

"let g:formatprg_args_expr_xml = '"-q -xml --show-errors 0 --show-warnings 0 --force-output --indent auto --indent-spaces ".&shiftwidth." --vertical-space yes --tidy-mark no -wrap 0"'
"let g:formatprg_args_expr_zpt = '"-q -i -xmlributes 1 --indent-spaces ".&shiftwidth." --vertical-space yes --tidy-mark no -wrap 0"'

let g:extradite_resize = 0

"" vim airline
"let g:airline#extensions#tabline#enabled=1
let g:airline_powerline_fonts=1

"" Syntastic
let g:syntastic_always_populate_loc_list=1
""let g:syntastic_auto_loc_list=1
let g:syntastic_check_on_open=1
let g:syntastic_auto_jump=0
let g:syntastic_stl_format = '[%E{%e Errors}%B{, }%W{%w Warnings}]'
let g:syntastic_ignore_files=['bin/', '.min.css', '.min.js']

" Python checker
" that fixed ignore config
" https://github.com/scrooloose/syntastic/issues/204#issuecomment-14585955
" flake8 supports # noqa or # nopep8 to ignore individual lines
let g:syntastic_python_checkers=['flake8']
" http://pep8.readthedocs.org/en/latest/intro.html#error-codes
let g:syntastic_python_flake8_args='--ignore=E702'

" Javascript checker
let g:syntastic_javascript_checkers=['jshint']
" let g:syntastic_javascript_checkers=['jslint']

" html
let g:syntastic_html_tidy_ignore_errors=[" proprietary attribute \"ng-"]

"" unite
"let g:unite_enable_split_vertically=1
""let g:unite_split_rule='right'


"" buffergator
let g:buffergator_viewport_split_policy = 'L'
let g:buffergator_autodismiss_on_select = 1
let g:buffergator_autoupdate = 1
let g:buffergator_split_size = 40
let g:buffergator_sort_regime = 'filepath'
let g:buffergator_display_regime = 'basename'
let g:buffergator_show_full_directory_path = 0
let g:buffergator_suppress_keymaps = 1


"" Tagbar
" ZCML type
let g:tagbar_type_zcml = {
    \ 'ctagstype': 'zcml',
    \ 'kinds': [
        \ 'n:name',
        \ 'g:profile',
        \ 'p:permission',
        \ 'h:handler',
        \ 'm:component',
        \ 'f:factory',
        \ 'c:class',
        \ 'i:id',
        \ 's:schema'
    \ ]
\}
" cfg file type
let g:tagbar_type_cfg = {
    \ 'ctagstype': 'ini',
    \ 'kinds': ['s:section']
\ }
" Markdown type
let g:tagbar_type_markdown = {
    \ 'ctagstype': 'markdown',
    \ 'kinds': ['h:header']
\ }

"" Fuzzy Finder
"" max results, lot o' files in a buildout :)
"let g:fuzzy_ceiling=35000
"" show full paths
"let g:fuzzy_path_display = 'highlighted_path'
"" ignored files
"let g:fuzzy_ignore = "*.png;*.PNG;*.pyc;*.pyo;*.JPG;*.jpg;*.GIF;*.gif;.svn/**;.git/**;*.mo;.DS_Store;.AppleDouble"
"" available modes
"let g:FuzzyFinderOptions = {
"    \'File': {'mode_available': 1},
"    \'Buffer': {'mode_available': 0},
"    \'Dir': {'mode_available': 0},
"    \'MruFile': {'mode_available': 0},
"    \'MruCmd': {'mode_available': 0},
"    \'Bookmark': {'mode_available': 0},
"    \}
"" Don't delete a full path when using backspace in file mode
"let g:FuzzyFinderOptions.File.smart_bs = 0


"" EASYGREP
let g:EasyGrepMode=1
let g:EasyGrepCommand=0
let g:EasyGrepRecursive=0
let g:EasyGrepIgnoreCase=1
let g:EasyGrepHidden=0
let g:EasyGrepAllOptionsInExplorer=1
let g:EasyGrepWindow=1
let g:EasyGrepReplaceWindowMode=0
let g:EasyGrepOpenWindowOnMatch=1
let g:EasyGrepEveryMatch=0
let g:EasyGrepJumpToMatch=1
let g:EasyGrepInvertWholeWord=0
let g:EasyGrepFileAssociationsInExplorer=0
let g:EasyGrepOptionPrefix='<leader>vy'
let g:EasyGrepReplaceAllPerFile=0


"""" NERDTree
let g:NERDTreeIgnore=['\~$', '\.svn$', '\.git*$', '\.pyc$', '\.pyo$', '\.mo$', '\.log$', '__pycache__', '.egg-info', 'develop-eggs']
""" set the sort order to alphabetical
let g:NERDTreeSortOrder=[]
""" when the root is changed, change Vim's working dir
""let NERDTreeChDirMode=2
let g:NERDTreeChDirMode=0
let g:NERDTreeHighlightCursorline=1
let g:NERDTreeHijackNetrw=0
let g:NERDTreeMouseMode=2
let g:NERDTreeMinimalUI=1
let g:NERDTreeWinSize=31

let g:NERDTreeAutoCenter=1
let g:NERDTreeAutoCenterThreshold=10

let g:NERDTreeCascadeOpenSingleChildDir=1


"" Conque_Shell
"let g:ConqueTerm_FastMode = 0
"let g:ConqueTerm_Color = 1
"let g:ConqueTerm_CloseOnEnd = 1


"" vim:ft=vim
