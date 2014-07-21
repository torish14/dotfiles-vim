
"" indent guides
let g:indent_guides_enable_on_vim_startup = 1
let g:indent_guides_color_change_percent = 5

"" netrw-gx
let g:netrw_browsex_viewer= "gnome-open"  " explicitly configure gnome-open for netrw. more: help netrw-gx
let g:netrw_nogx = 1 " disable netrw's gx mapping. use open-browser.


"" vim autoformat
"" https://github.com/Chiel92/vim-autoformat
"" https://github.com/hhatto/autopep8
let g:formatprg_args_expr_python = '"--aggressive --aggressive".(&textwidth ? " --max-line-length=".&textwidth : "")." /dev/stdin "'
let g:formatprg_args_expr_xml = '"-q -xml --show-errors 0 --show-warnings 0 --force-output --indent auto --indent-spaces ".&shiftwidth." --vertical-space yes --tidy-mark no -wrap 0"'
let g:formatprg_zpt = "html5tidy"
let g:formatprg_args_expr_zpt = '"-q -xml --show-errors 0 --show-warnings 0 --force-output --indent auto --indent-attributes 1 --indent-spaces ".&shiftwidth." --vertical-space yes --tidy-mark no -wrap 0"'
let g:formatprg_html = "html5tidy"

let g:extradite_resize = 0

"" neocomplete
let g:neocomplcache_enable_at_startup = 1
let g:neocomplcache_enable_smart_case = 1
let g:neocomplcache_min_syntax_length = 3

"" jedi
"let g:jedi#auto_vim_configuration = 0
"let g:jedi#show_call_signatures = 0
"let g:jedi#popup_select_first = 0
"set completeopt=longest,menuone

"" vim airline
let g:airline#extensions#tabline#enabled=1
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
" let g:syntastic_javascript_checkers=['jshint']
let g:syntastic_javascript_checkers=['jslint']

"" unite
let g:unite_enable_split_vertically=1
""let g:unite_split_rule='right'


"" buffergator
let g:buffergator_viewport_split_policy = 'L'
let g:buffergator_sort_regime = 'filepath'
let g:buffergator_display_regime = 'basename'
let g:buffergator_split_size = 40
let g:buffergator_autodismiss_on_select = 1
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
" max results, lot o' files in a buildout :)
let g:fuzzy_ceiling=35000
" show full paths
let g:fuzzy_path_display = 'highlighted_path'
" ignored files
let g:fuzzy_ignore = "*.png;*.PNG;*.pyc;*.pyo;*.JPG;*.jpg;*.GIF;*.gif;.svn/**;.git/**;*.mo;.DS_Store;.AppleDouble"
" available modes
let g:FuzzyFinderOptions = {
    \'File': {'mode_available': 1},
    \'Buffer': {'mode_available': 0},
    \'Dir': {'mode_available': 0},
    \'MruFile': {'mode_available': 0},
    \'MruCmd': {'mode_available': 0},
    \'Bookmark': {'mode_available': 0},
    \}
" Don't delete a full path when using backspace in file mode
let g:FuzzyFinderOptions.File.smart_bs = 0


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


"" Conque_Shell
"let g:ConqueTerm_FastMode = 0
"let g:ConqueTerm_Color = 1
"let g:ConqueTerm_CloseOnEnd = 1


"" vim:ft=vim
