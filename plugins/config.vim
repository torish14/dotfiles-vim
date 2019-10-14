source $HOME/.vim/plugins/fzf.vim
source $HOME/.vim/plugins/tagbar.vim

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
