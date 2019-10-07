source $HOME/.vim/plugins-config-fzf.vim
source $HOME/.vim/plugins-config-tagbar.vim
" source $HOME/.vim/plugins-config-lightline.vim

"" ranger
let g:ranger_map_keys = 0


let g:fugitive_gitlab_domains = ['https://git.bluedynamics.eu/', 'https://git.iem.at/']

"" Ack.vim
if executable('ag')
  let g:ackprg = 'ag --vimgrep'
endif


"" UltiSnips
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<tab>"
let g:UltiSnipsJumpBackwardTrigger="<s-tab>"

"" Colorizer
let g:colorizer_auto_filetype='css,less,scss'
let g:colorizer_skip_comments = 0

"" vem-tabline
" Show all buffers in tablines also when splitting windows
let g:vem_tabline_multiwindow_mode = 0


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

" Troubles? see:
" https://github.com/Chiel92/vim-autoformat#help-the-formatter-doesnt-work-as-expected
" let g:autoformat_verbosemode=1

let g:formatters_python = ['autopep8']

let g:formatdef_htmlbeautify = '"html-beautify -f - -p -m10 -s ".shiftwidth()'
let g:formatters_zpt = ['htmlbeautify']
let g:formatters_xml = ['htmlbeautify']
let g:formatters_svg = ['htmlbeautify']

let g:formatdef_thet_cssbrush = '"cssbrush ".bufname("%")'
let g:formatters_less = ['thet_cssbrush']
let g:formatters_css = ['thet_cssbrush']


" let g:formatdef_thet_javascript = '"js-beautify -X -f - -".(&expandtab ? "s ".shiftwidth() : "t").(&textwidth ? " -w ".&textwidth : "")'
" let g:formatdef_thet_javascript = '"prettier --single-quote --tab-width ".shiftwidth()'
" let g:formatdef_thet_javascript = '"prettier --single-quote --stdin --stdin-filepath ".expand("%:p").(&textwidth ? " --print-width ".&textwidth : "")." --tab-width=".shiftwidth()'
" let g:formatters_javascript = ['thet_javascript']
let g:formatters_javascript = ['prettier']


"" ALE
""""""
" let g:ale_fix_on_save = 1
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

let g:ale_linter_aliases = {
\  'vue': ['vue', 'javascript', 'html', 'scss'],
\  'jsx': ['css', 'javascript']
\}

let g:ale_linters = {
\   'javascript': ['prettier-eslint'],
\   'vue': ['eslint', 'vls'],
\   'jsx': ['stylelint', 'eslint']
\}


" \   'python': ['black'],

let g:ale_fixers = {
\   '*': ['remove_trailing_lines', 'trim_whitespace'],
\   'javascript': ['prettier', 'eslint'],
\   'python': ['black'],
\}


" NEEDS TO BE SET BEFORE PLUGIN IS LOADED
" let g:ale_completion_enabled = 1
let g:ale_set_balloons = 1


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
let g:incsearch#consistent_n_direction = 1
let g:incsearch#magic = '\v'
" buffer completion: <c-l>
"<Over>(buffer-complete)


"" indent guides
let g:indent_guides_enable_on_vim_startup = 1
let g:indent_guides_color_change_percent = 5


""" netrw-gx
let g:netrw_nogx = 1 " disable netrw's gx mapping. use open-browser.


""" NERDTree
""""""""""""
let g:NERDTreeIgnore=['\~$', '\.svn$', '\.git*$', '\.pyc$', '\.pyo$', '\.mo$', '\.log$', '__pycache__', '.egg-info', 'develop-eggs']
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
