"" PLUGINS

" https://github.com/maralla/pack
" Plug 'itchyny/lightline.vim'  " https://github.com/itchyny/lightline.vim
" Plug 'nathanaelkane/vim-indent-guides'  " https://github.com/nathanaelkane/vim-indent-guides
" Plug 'vim-scripts/LargeFile'  " https://github.com/vim-scripts/LargeFile
" Plug 'mhinz/vim-hugefile'  " https://github.com/mhinz/vim-hugefile
" Plug 'jez/vim-superman'  " https://github.com/jez/vim-superman
" Plug 'dkprice/vim-easygrep'  " https://github.com/dkprice/vim-easygrep
" Plug 'tpope/vim-obsession'  " https://github.com/tpope/vim-obsession
" Plug 'terryma/vim-multiple-cursors'  " https://github.com/terryma/vim-multiple-cursors


"" BUFFER NAVIGATION
""""""""""""""""""""
" Plug 'Shougo/denite.nvim'  " https://github.com/Shougo/denite.nvim

" Keep until buffergator is fixed to work as vertical replacement.
" Plug 'ap/vim-buftabline'  " https://github.com/ap/vim-buftabline

" Plug 'kien/ctrlp.vim'  " https://github.com/kien/ctrlp.vim
" Plug 'vim-scripts/LustyJuggler'  " https://github.com/vim-scripts/LustyJuggler
" Plug 'yegappan/mru'  " https://github.com/yegappan/mru
" Plug 'ton/vim-bufsurf'  " https://github.com/ton/vim-bufsurf
" Plug 'jeetsukumaran/vim-indentwise'  " https://github.com/jeetsukumaran/vim-indentwise
" Plug 'jeetsukumaran/vim-gazetteer'  " https://github.com/jeetsukumaran/vim-gazetteer
" Plug 'dahu/vim-lotr'  " https://github.com/dahu/vim-lotr
" Plug 'rbgrouleff/bclose.vim'  " https://github.com/rbgrouleff/bclose.vim


"" GIT, ETC
"""""""""""
" Plug 'mhinz/vim-signify'  " https://github.com/mhinz/vim-signify
" Plug 'rhysd/ghpr-blame.vim'  " https://github.com/rhysd/ghpr-blame.vim


"" SYNTAXN
""""""""""
Plug 'Chiel92/vim-autoformat'  " https://github.com/Chiel92/vim-autoformat
Plug 'maralla/completor.vim'  " https://github.com/maralla/completor.vim
"" Plug 'luochen1990/rainbow'  " https://github.com/luochen1990/rainbow
" Plug 'sgur/vim-editorconfig'  " https://github.com/sgur/vim-editorconfig
" Plug 'Raimondi/delimitMate'  " https://github.com/Raimondi/delimitMate
" Plug 'davidhalter/jedi-vim', {'for': 'python'}  " https://github.com/davidhalter/jedi-vim


"" AutoComplPop --- always works, when others don't
" Plug 'vim-scripts/L9'  " https://github.com/vim-scripts/L9
" Plug 'othree/vim-autocomplpop'  " https://github.com/othree/vim-autocomplpop


Plug 'neoclide/vim-jsx-improve', {'for': ['javascript.jsx']} " https://github.com/neoclide/vim-jsx-improve
" Plug 'MaxMEllon/vim-jsx-pretty' {'for': ['javascript', 'javascript.jsx']}  " https://github.com/MaxMEllon/vim-jsx-pretty

" Plug 'othree/javascript-libraries-syntax.vim', {'for': 'javascript'}  " https://github.com/othree/javascript-libraries-syntax.vim
" Plug 'othree/es.next.syntax.vim', {'for': 'javascript'}  " https://github.com/othree/es.next.syntax.vim
Plug 'othree/yajs.vim', {'for': 'javascript'}  " https://github.com/othree/yajs.vim
Plug 'jelera/vim-javascript-syntax', {'for': 'javascript'}  " https://github.com/jelera/vim-javascript-syntax

" Plug 'ternjs/tern_for_vim', { 'do': 'npm install' }  " https://github.com/ternjs/tern_for_vim
" Plug 'kchmck/vim-coffee-script'  " https://github.com/kchmck/vim-coffee-script
" Plug 'neomake/neomake'  " https://github.com/neomake/neomake
" Plug 'JulesWang/css.vim'  " https://github.com/JulesWang/css.vim
" Plug 'evanmiller/nginx-vim-syntax'  " https://github.com/evanmiller/nginx-vim-syntax
" Plug 'kgust/sql.vim'  "  https://github.com/kgust/sql.vim

" DBGP debugger interface
"Plug 'vim-vdebug/vdebug'  " https://github.com/vim-vdebug/vdebug


"" COLORSCHEME
""""""""""""""
" Plug 'jonathanfilip/lucius'  " https://github.com/jonathanfilip/lucius
" Plug 'morhetz/gruvbox'  " https://github.com/morhetz/gruvbox
" Plug 'w0ng/vim-hybrid'  " https://github.com/w0ng/vim-hybrid
" Plug 'Lokaltog/vim-distinguished'  " https://github.com/Lokaltog/vim-distinguished
" Plug 'altercation/vim-colors-solarized'  " https://github.com/altercation/vim-colors-solarized
" Plug 'ciaranm/inkpot'  " https://github.com/ciaranm/inkpot
" Plug 'hukl/Smyck-Color-Scheme'  " https://github.com/hukl/Smyck-Color-Scheme


"" Musi
" Plug 'supercollider/scvim'  " https://github.com/supercollider/scvim


"" Look also at these:
" https://github.com/justinmk/vim-dirvish  " like filebeagle
" Plug 'thet/minibufexpl.vim'  " https://github.com/thet/minibufexpl.vim / https://github.com/fholgado/minibufexpl.vim



"""""""""""""""""
"" PLUGINS CONFIG
"""""""""""""""""


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





"" let g:rainbow_active = 1

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
" let g:buftabline_indicators = 1



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


""" netrw-gx
"let g:netrw_browsex_viewer= "gnome-open"  " explicitly configure gnome-open for netrw. more: help netrw-gx


" DISABLED
" ========

""" netrw
"let g:netrw_liststyle = 3
"" delete/hide netrw buffer after leaving
"" https://github.com/tpope/vim-vinegar/issues/13#issuecomment-47133890
"autocmd FileType netrw setl bufhidden=wipe
"


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




"" Autoformat
noremap <leader>f :Autoformat<CR><CR>
