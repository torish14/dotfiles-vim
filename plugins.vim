" MUST READ
" http://sheerun.net/2014/03/21/how-to-boost-your-vim-productivity/


" NEEDS TO BE SET BEFORE PLUGIN IS LOADED
let g:ale_completion_enabled = 1


" https://github.com/junegunn/vim-plug
call plug#begin('~/.vim/plugged')


" https://github.com/maralla/pack
" https://github.com/junegunn/vim-plug/issues/651
let g:plug_window = 'enew'
let g:plug_url_format = 'git@github.com:%s.git'

Plug 'tpope/vim-sensible'

"" VISUAL
"""""""""
" Plug 'itchyny/lightline.vim'  " https://github.com/itchyny/lightline.vim
Plug 'drmikehenry/vim-fontsize'  " https://github.com/drmikehenry/vim-fontsize
Plug 'junegunn/goyo.vim'  " http://github.com/junegunn/goyo.vim
Plug 'junegunn/limelight.vim'  " http://github.com/junegunn/limelight.vim
" Plug 'nathanaelkane/vim-indent-guides'  " https://github.com/nathanaelkane/vim-indent-guides
Plug 'tyru/open-browser.vim'  " https://github.com/tyru/open-browser.vim
Plug 'vim-scripts/LargeFile'  " https://github.com/vim-scripts/LargeFile
Plug 'moll/vim-bbye'  " https://github.com/moll/vim-bbye
Plug 'chrisbra/vim-diff-enhanced'  " https://github.com/chrisbra/vim-diff-enhanced
Plug 'haya14busa/incsearch.vim'  " https://github.com/haya14busa/incsearch.vim
Plug 'mileszs/ack.vim'  " https://github.com/mileszs/ack.vim

" Plug 'jez/vim-superman'  " https://github.com/jez/vim-superman
" Plug 'dkprice/vim-easygrep'  " https://github.com/dkprice/vim-easygrep
" Plug 'tpope/vim-obsession'  " https://github.com/tpope/vim-obsession
" Plug 'terryma/vim-multiple-cursors'  " https://github.com/terryma/vim-multiple-cursors

Plug 'ryanoasis/vim-devicons'  " https://github.com/ryanoasis/vim-devicons


"" BUFFER NAVIGATION
""""""""""""""""""""
" Plug 'Shougo/denite.nvim'  " https://github.com/Shougo/denite.nvim

Plug 'jeetsukumaran/vim-filebeagle'  " https://github.com/jeetsukumaran/vim-filebeagle
Plug 'jeetsukumaran/vim-buffergator'  " https://github.com/jeetsukumaran/vim-buffergator
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }  " https://github.com/junegunn/fzf
Plug 'severin-lemaignan/vim-minimap'  " https://github.com/severin-lemaignan/vim-minimap

" Keep until buffergator is fixed to work as vertical replacement.
" Plug 'ap/vim-buftabline'  " https://github.com/ap/vim-buftabline
Plug 'pacha/vem-tabline'  " https://github.com/pacha/vem-tabline

" Plug 'kien/ctrlp.vim'  " https://github.com/kien/ctrlp.vim
" Plug 'vim-scripts/LustyJuggler'  " https://github.com/vim-scripts/LustyJuggler
Plug 'scrooloose/nerdtree'  " https://github.com/scrooloose/nerdtree
Plug 'Xuyuanp/nerdtree-git-plugin'  " https://github.com/Xuyuanp/nerdtree-git-plugin
" Plug 'yegappan/mru'  " https://github.com/yegappan/mru
" Plug 'ton/vim-bufsurf'  " https://github.com/ton/vim-bufsurf

" Plug 'jeetsukumaran/vim-indentwise'  " https://github.com/jeetsukumaran/vim-indentwise
" Plug 'jeetsukumaran/vim-gazetteer'  " https://github.com/jeetsukumaran/vim-gazetteer
" Plug 'dahu/vim-lotr'  " https://github.com/dahu/vim-lotr


"" GIT, ETC
"""""""""""

Plug 'cohama/agit.vim'  " https://github.com/cohama/agit.vim
Plug 'tpope/vim-fugitive'  " https://github.com/tpope/vim-fugitive
" Plug 'airblade/vim-gitgutter'  " https://github.com/airblade/vim-gitgutter
Plug 'mhinz/vim-signify'  " https://github.com/mhinz/vim-signify
Plug 'gregsexton/gitv'  " https://github.com/gregsexton/gitv
Plug 'rhysd/ghpr-blame.vim'  " https://github.com/rhysd/ghpr-blame.vim


"" SYNTAXN
Plug 'editorconfig/editorconfig-vim'  " https://github.com/editorconfig/editorconfig-vim
Plug 'w0rp/ale'  " https://github.com/w0rp/ale
Plug 'Chiel92/vim-autoformat'  " https://github.com/Chiel92/vim-autoformat
Plug 'majutsushi/tagbar'  " https://github.com/majutsushi/tagbar

" Plug 'gorkunov/smartpairs.vim'  " https://github.com/gorkunov/smartpairs.vim
" Plug 'Raimondi/delimitMate'  " https://github.com/Raimondi/delimitMate

" Plug 'davidhalter/jedi-vim', {'for': 'python'}  " https://github.com/davidhalter/jedi-vim

" Plug 'Valloric/MatchTagAlways', {'for': 'html'}  " https://github.com/Valloric/MatchTagAlways
Plug 'othree/html5.vim', {'for': ['html', 'tal']}  " https://github.com/othree/html5.vim
Plug 'ap/vim-css-color', {'for': ['css', 'less', 'scss', 'sass']}  " https://github.com/ap/vim-css-color
Plug 'groenewege/vim-less', {'for': 'less'}  " https://github.com/groenewege/vim-less

Plug 'posva/vim-vue', {'for': ['javascript']}  " https://github.com/posva/vim-vue
Plug 'neoclide/vim-jsx-improve', {'for': ['javascript.jsx']} " https://github.com/neoclide/vim-jsx-improve
" Plug 'pangloss/vim-javascript', {'for': ['javascript', 'javascript.jsx']}  " https://github.com/pangloss/vim-javascript
" Plug 'MaxMEllon/vim-jsx-pretty' {'for': ['javascript', 'javascript.jsx']}  " https://github.com/MaxMEllon/vim-jsx-pretty
" Plug 'mxw/vim-jsx', {'for': ['javascript', 'javascript.jsx']}  " https://github.com/mxw/vim-jsx
" Plug 'othree/yajs.vim', {'for': 'javascript'}  " https://github.com/othree/yajs.vim
" Plug 'othree/javascript-libraries-syntax.vim', {'for': 'javascript'}  " https://github.com/othree/javascript-libraries-syntax.vim
" Plug 'othree/es.next.syntax.vim', {'for': 'javascript'}  " https://github.com/othree/es.next.syntax.vim
Plug 'leafgarland/typescript-vim', {'for': 'typescript'}  " https://github.com/leafgarland/typescript-vim

Plug 'plasticboy/vim-markdown', {'for': 'markdown'}  " https://github.com/plasticboy/vim-markdown

Plug 'mfukar/robotframework-vim', {'for': 'robot'}  " https://github.com/mfukar/robotframework-vim
Plug 'chr4/nginx.vim', {'for': 'nginx'}  " https://github.com/chr4/nginx.vim

Plug 'pld-linux/vim-syntax-vcl'  " https://github.com/pld-linux/vim-syntax-vcl

" Plug 'pangloss/vim-javascript', {'for': 'javascript'}  " https://github.com/pangloss/vim-javascript
" Plug 'ternjs/tern_for_vim', { 'do': 'npm install' }  " https://github.com/ternjs/tern_for_vim
" Plug 'kchmck/vim-coffee-script'  " https://github.com/kchmck/vim-coffee-script
" Plug 'neomake/neomake'  " https://github.com/neomake/neomake
" Plug 'JulesWang/css.vim'  " https://github.com/JulesWang/css.vim
" Plug 'hail2u/vim-css3-syntax'  " https://github.com/hail2u/vim-css3-syntax
" Plug 'evanmiller/nginx-vim-syntax'  " https://github.com/evanmiller/nginx-vim-syntax
" Plug 'kgust/sql.vim'  "  https://github.com/kgust/sql.vim

" DBGP debugger interface
"Plug 'vim-vdebug/vdebug'  " https://github.com/vim-vdebug/vdebug



"" AUTOCOMPLETE AND SNIPPETS
Plug 'SirVer/ultisnips'  " https://github.com/SirVer/ultisnips
Plug 'honza/vim-snippets'  " https://github.com/honza/vim-snippets
Plug 'maralla/completor.vim'  " https://github.com/maralla/completor.vim
"" AutoComplPop --- always works, when others don't
" Plug 'vim-scripts/L9'  " https://github.com/vim-scripts/L9
" Plug 'othree/vim-autocomplpop'  " https://github.com/othree/vim-autocomplpop

"" COLORSCHEME
Plug 'mhartington/oceanic-next'  " https://github.com/mhartington/oceanic-next
Plug 'tomasr/molokai'  " https://github.com/tomasr/molokai
Plug 'endel/vim-github-colorscheme'  " https://github.com/endel/vim-github-colorscheme
Plug 'NLKNguyen/papercolor-theme'  " https://github.com/NLKNguyen/papercolor-theme
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

" Add plugins to &runtimepath
call plug#end()
