source $HOME/.vim/plugins-config-fzf.vim
source $HOME/.vim/plugins-config-tagbar.vim
" source $HOME/.vim/plugins-config-lightline.vim


"" Ack.vim
if executable('ag')
  let g:ackprg = 'ag --vimgrep'
endif


"" UltiSnips
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<c-b>"
let g:UltiSnipsJumpBackwardTrigger="<c-z>"


"" Colorizer
let g:colorizer_auto_filetype='css,less,scss'
let g:colorizer_skip_comments = 0

""" Denite
"call denite#custom#map(
"      \ 'insert',
"      \ '<Down>',
"      \ '<denite:move_to_next_line>',
"      \ 'noremap'
"      \)
"call denite#custom#map(
"      \ 'insert',
"      \ '<Up>',
"      \ '<denite:move_to_previous_line>',
"      \ 'noremap'
"      \)


"" BufTabLine
let g:buftabline_indicators = 1

"" Mini Buffer Explorer
"""""""""""""""""""""""
let g:miniBufExplVSplit = 20
let g:miniBufExplBRSplit = 0
let g:miniBufExplorerAutoStart = 0
let g:miniBufExplBuffersNeeded = 0
let g:miniBufExplShowBufNumbers = 1


"" BUFFERGATOR
""""""""""""""
let g:buffergator_autoexpand_on_split = 0
let g:buffergator_viewport_split_policy = 'L'
let g:buffergator_autodismiss_on_select = 0
let g:buffergator_autoupdate = 1
let g:buffergator_split_size = 40
let g:buffergator_sort_regime = 'bufnum'
let g:buffergator_display_regime = 'basename'
let g:buffergator_show_full_directory_path = 0
let g:buffergator_suppress_keymaps = 1


"" filebeagle defines <leader>f, which I don't want
let g:filebeagle_suppress_keymaps = 1
let g:filebeagle_show_hidden = 0  " show with ``gh``
"let g:filebeagle_check_gitignore = 1


"" Lusty Juggler
""""""""""""""""
let g:LustyJugglerDefaultMappings = 0


"" GITGUTTER
""""""""""""
let g:gitgutter_grep_command = 'ag'
let g:gitgutter_async = 1
" let g:gitgutter_realtime = 0
" let g:gitgutter_eager = 0


"" JEDI
"""""""
" let g:jedi#force_py_version = 2
"" Disable jedi completion, which is way too slow for big projects
" let g:jedi#popup_on_dot = 0
" let g:jedi#show_call_signatures = 0
" let g:jedi#completions_enabled = 0
let g:jedi#popup_on_dot = 0
let g:jedi#show_call_signatures = 0
let g:jedi#completions_enabled = 1


"" COMPLETOR
""""""""""""
" let g:completor_node_binary = '/home/thet/.nvm/versions/node/v7.2.0/bin/node'
let g:completor_node_binary = '/usr/bin/nodejs'
let g:completor_completion_delay = 300

"" JavaScript
"""""""""""""

" let g:used_javascript_libs = 'jquery,underscore,backbone,angularjs,requirejs,jasmine,chai,react,flux'


" vim-jsx
" set to ``0`` or ``:set ft=javascript.jsx`` when doing React.
" let g:jsx_ext_required = 1

" vim-jsx-pretty
" let g:vim_jsx_pretty_enable_jsx_highlight = 1
" let g:vim_jsx_pretty_colorful_config = 0


"" VIM AUTOFORMAT
"""""""""""""""""

"" https://github.com/Chiel92/vim-autoformat
"" https://github.com/hhatto/autopep8
" Using autopep8 - yapf messes files up with my current setup...
"let g:formatters_python = ['yapf']
"if exists('g:formatdef_yapf')
"    "" Use config files (~/.config/yapf/style)
"    unlet g:formatdef_yapf
"endif

let g:formatters_python = ['autopep8']

let g:formatdef_htmlbeautify = '"html-beautify -f - -p -m10 -s ".shiftwidth()'
let g:formatters_zpt = ['htmlbeautify']
let g:formatters_xml = ['htmlbeautify']

let g:formatdef_thet_cssbrush = '"cssbrush ".bufname("%")'
let g:formatters_less = ['thet_cssbrush']
let g:formatters_css = ['thet_cssbrush']


" let g:formatdef_thet_javascript = '"js-beautify -X -f - -".(&expandtab ? "s ".shiftwidth() : "t").(&textwidth ? " -w ".&textwidth : "")'
let g:formatdef_thet_javascript = '"prettier --single-quote --tab-width ".shiftwidth()'
let g:formatters_javascript = ['thet_javascript']


"" ALE
""""""
let g:ale_lint_on_enter = 0
let g:ale_lint_on_filetype_changed = 0
let g:ale_lint_on_text_changed = 'never'
let g:ale_lint_delay = 500
let g:ale_echo_cursor = 1
let g:ale_echo_delay = 200
let g:ale_sign_column_always = 1
let g:ale_sign_error = '✖'
let g:ale_sign_warning = '⚠'
let g:ale_statusline_format = ['✖%d', '⚠ %d', '✓ ok']

" http://pylint-messages.wikidot.com/all-codes
let g:ale_python_pylint_options = "-d C0103,C0111,C0301,E0611,E1101,F0401,R0903,R0914,W0201"
" http://flake8.pycqa.org/en/latest/user/error-codes.html
" let g:ale_python_flake8_args =

let g:ale_linters = {
\   'javascript': ['eslint'],
\}


"" EASYGREP
"""""""""""

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


"" OTHER
""""""""

"" MatchTagAlways
let g:mta_filetypes = {
    \ 'html' : 1,
    \ 'jinja' : 1,
    \ 'pt' : 1,
    \ 'xhtml' : 1,
    \ 'xml' : 1,
    \ 'zcml' : 1,
    \}


"" Set limelight on Goyo
autocmd! User GoyoEnter Limelight
autocmd! User GoyoLeave Limelight!


"" LargeFile
let g:LargeFile = 1  " 1M is already a large file


"" incsearch
map /  <Plug>(incsearch-forward)
map ?  <Plug>(incsearch-backward)
map g/ <Plug>(incsearch-stay)
let g:incsearch#consistent_n_direction = 1
let g:incsearch#magic = '\v'
" buffer completion: <c-l>
"<Over>(buffer-complete)


"" indent guides
let g:indent_guides_enable_on_vim_startup = 1
let g:indent_guides_color_change_percent = 5


" DISABLED
" ========

" set statusline+=%{ALEGetStatusLine()}
"
" " http://vim.wikia.com/wiki/Change_statusline_color_to_show_insert_or_normal_mode
" function! InsertStatuslineColor(mode)
"   if a:mode == 'i'
"     hi statusline guibg=green
"   elseif a:mode == 'r'
"     hi statusline guibg=red
"   else
"     hi statusline guibg=blue
" endif
" endfunction
"
" au InsertEnter * call InsertStatuslineColor(v:insertmode)
" au InsertChange * call InsertStatuslineColor(v:insertmode)
" au InsertLeave * hi statusline guibg=blue
"
" " default the statusline to green when entering Vim
" hi statusline guibg=blue


"" NEOMAKE
""""""""""
" function! EslintConfig()
"     let g:neomake_javascript_eslint_maker = {
"         \ 'args': ['-f', 'compact', '--rule', '{"indent": ["error", '.&shiftwidth.']}'],
"         \ 'errorformat': '%E%f: line %l\, col %c\, Error - %m,' .
"         \ '%W%f: line %l\, col %c\, Warning - %m'
"         \ }
" endfunction
" function! EslintConfig2()
"     let g:neomake_javascript_eslint_maker = {
"         \ 'args': ['-f', 'compact', '--rule', '{"indent": ["error", 2]}'],
"         \ 'errorformat': '%E%f: line %l\, col %c\, Error - %m,' .
"         \ '%W%f: line %l\, col %c\, Warning - %m'
"         \ }
" endfunction
" function! EslintConfig4()
"     let g:neomake_javascript_eslint_maker = {
"         \ 'args': ['-f', 'compact', '--rule', '{"indent": ["error", 4]}'],
"         \ 'errorformat': '%E%f: line %l\, col %c\, Error - %m,' .
"         \ '%W%f: line %l\, col %c\, Warning - %m'
"         \ }
" endfunction
"
" let g:neomake_javascript_enabled_makers = ['eslint']
" let g:neomake_open_list = 0
"
" let g:neomake_warning_sign = {
"   \ 'text': '⚠',
"   \ 'texthl': 'WarningMsg',
"   \ }
" let g:neomake_error_sign = {
"   \ 'text': '✖',
"   \ 'texthl': 'ErrorMsg',
"   \ }
" let g:neomake_message_sign = {
"   \ 'text': '➤',
"   \ 'texthl': 'WarningMsg',
"   \ }
" let g:neomake_info_sign = {
"   \ 'text': 'ℹ',
"   \ 'texthl': 'WarningMsg',
"   \ }
"
" autocmd BufEnter *.js :call EslintConfig()
" autocmd! BufReadPost,BufWritePost * call CheckSyntax()
" function CheckSyntax()
"     Neomake
"     call lightline#update()
" endfunction



""" netrw-gx
"let g:netrw_browsex_viewer= "gnome-open"  " explicitly configure gnome-open for netrw. more: help netrw-gx
"let g:netrw_nogx = 1 " disable netrw's gx mapping. use open-browser.
"
""" netrw
"let g:netrw_liststyle = 3
"" delete/hide netrw buffer after leaving
"" https://github.com/tpope/vim-vinegar/issues/13#issuecomment-47133890
"autocmd FileType netrw setl bufhidden=wipe
"

"
"
""" NERDTree
""""""""""""
"
"let g:NERDTreeIgnore=['\~$', '\.svn$', '\.git*$', '\.pyc$', '\.pyo$', '\.mo$', '\.log$', '__pycache__', '.egg-info', 'develop-eggs']
"""" set the sort order to alphabetical
"let g:NERDTreeSortOrder=[]
"""" when the root is changed, change Vim's working dir
"""let NERDTreeChDirMode=2
"let g:NERDTreeChDirMode=0
"let g:NERDTreeHighlightCursorline=0
"let g:NERDTreeHijackNetrw=0
"let g:NERDTreeMouseMode=2
"let g:NERDTreeMinimalUI=1
"let g:NERDTreeWinSize=31
"let g:NERDTreeAutoCenter=1
"let g:NERDTreeAutoCenterThreshold=10
"let g:NERDTreeCascadeOpenSingleChildDir=1
"
