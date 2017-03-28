source $HOME/.vim/plugins-config-fzf.vim
source $HOME/.vim/plugins-config-tagbar.vim
source $HOME/.vim/plugins-config-lightline.vim


"" JEDI
"""""""

" let g:jedi#show_call_signatures = 2
let g:jedi#force_py_version = 2
" Disable jedi completion, which is way too slow for big projects
let g:jedi#popup_on_dot = 0
let g:jedi#show_call_signatures = 0
let g:jedi#completions_enabled = 0


"" COMPLETOR
""""""""""""
let g:completor_node_binary = '/home/thet/.nvm/versions/node/v7.2.0/bin/node'


"" VIM AUTOFORMAT
"""""""""""""""""

"" https://github.com/Chiel92/vim-autoformat
"" https://github.com/hhatto/autopep8
" Using autopep8 - yapf messes files up with my current setup...
let g:formatters_python = ['autopep8']
"let g:formatters_python = ['yapf']
"if exists('g:formatdef_yapf')
"    "" Use config files (~/.config/yapf/style)
"    unlet g:formatdef_yapf
"endif


let g:formatdef_htmlbeautify = '"html-beautify -f - -p -m10 -s ".shiftwidth()'
let g:formatters_zpt = ['htmlbeautify']
let g:formatters_xml = ['htmlbeautify']

let g:formatdef_thet_cssbrush = '"cssbrush ".bufname("%")'
let g:formatters_less = ['thet_cssbrush']
let g:formatters_css = ['thet_cssbrush']


"" NEOMAKE
""""""""""
let g:neomake_javascript_enabled_makers = ['eslint']


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


"" NERDTree
"""""""""""

let g:NERDTreeIgnore=['\~$', '\.svn$', '\.git*$', '\.pyc$', '\.pyo$', '\.mo$', '\.log$', '__pycache__', '.egg-info', 'develop-eggs']
""" set the sort order to alphabetical
let g:NERDTreeSortOrder=[]
""" when the root is changed, change Vim's working dir
""let NERDTreeChDirMode=2
let g:NERDTreeChDirMode=0
let g:NERDTreeHighlightCursorline=0
let g:NERDTreeHijackNetrw=0
let g:NERDTreeMouseMode=2
let g:NERDTreeMinimalUI=1
let g:NERDTreeWinSize=31
let g:NERDTreeAutoCenter=1
let g:NERDTreeAutoCenterThreshold=10
let g:NERDTreeCascadeOpenSingleChildDir=1


"" BUFFERGATOR
""""""""""""""

let g:buffergator_viewport_split_policy = 'L'
let g:buffergator_autodismiss_on_select = 0
let g:buffergator_autoupdate = 1
let g:buffergator_split_size = 40
let g:buffergator_sort_regime = 'filepath'
let g:buffergator_display_regime = 'basename'
let g:buffergator_show_full_directory_path = 0
let g:buffergator_suppress_keymaps = 1


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


"" filebeagle defines <leader>f, which I don't want
let g:filebeagle_suppress_keymaps = 1


"" Set limelight on Goyo
autocmd! User GoyoEnter Limelight
autocmd! User GoyoLeave Limelight!


"" LargeFile
let g:LargeFile = 1  " 500k is already a large file


"" BufTabLine
let g:buftabline_indicators = 1


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


"" netrw-gx
let g:netrw_browsex_viewer= "gnome-open"  " explicitly configure gnome-open for netrw. more: help netrw-gx
let g:netrw_nogx = 1 " disable netrw's gx mapping. use open-browser.

"" netrw
let g:netrw_liststyle = 3
" delete/hide netrw buffer after leaving
" https://github.com/tpope/vim-vinegar/issues/13#issuecomment-47133890
autocmd FileType netrw setl bufhidden=wipe

