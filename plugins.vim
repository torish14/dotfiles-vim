" MUST READ
" http://sheerun.net/2014/03/21/how-to-boost-your-vim-productivity/

" https://github.com/junegunn/vim-plug
call plug#begin('~/.vim/plugged')


" https://github.com/maralla/pack
" https://github.com/junegunn/vim-plug/issues/651
let g:plug_window = 'enew'
let g:plug_url_format = 'git@github.com:%s.git'

Plug 'tpope/vim-sensible'

"" VISUAL
"""""""""

Plug 'itchyny/lightline.vim'  " https://github.com/itchyny/lightline.vim
Plug 'drmikehenry/vim-fontsize'  " https://github.com/drmikehenry/vim-fontsize
Plug 'junegunn/goyo.vim'  " http://github.com/junegunn/goyo.vim
Plug 'junegunn/limelight.vim'  " http://github.com/junegunn/limelight.vim
Plug 'nathanaelkane/vim-indent-guides'  " https://github.com/nathanaelkane/vim-indent-guides

Plug 'tyru/open-browser.vim'  " https://github.com/tyru/open-browser.vim
Plug 'vim-scripts/LargeFile'  " https://github.com/vim-scripts/LargeFile
Plug 'jez/vim-superman'  " https://github.com/jez/vim-superman
Plug 'moll/vim-bbye'  " https://github.com/moll/vim-bbye

Plug 'chrisbra/vim-diff-enhanced'  " https://github.com/chrisbra/vim-diff-enhanced

Plug 'dkprice/vim-easygrep'  " https://github.com/dkprice/vim-easygrep
Plug 'haya14busa/incsearch.vim'  " https://github.com/haya14busa/incsearch.vim
" Plug 'terryma/vim-multiple-cursors'  " https://github.com/terryma/vim-multiple-cursors
Plug 'rking/ag.vim'  " https://github.com/rking/ag.vim


"" BUFFER NAVIGATION
""""""""""""""""""""


Plug 'jeetsukumaran/vim-filebeagle'  " https://github.com/jeetsukumaran/vim-filebeagle
Plug 'jeetsukumaran/vim-buffergator'  " https://github.com/jeetsukumaran/vim-buffergator
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }  " https://github.com/junegunn/fzf
Plug 'kien/ctrlp.vim'  " https://github.com/kien/ctrlp.vim
Plug 'severin-lemaignan/vim-minimap'  " https://github.com/severin-lemaignan/vim-minimap

" Keep until buffergator is fixed to work as vertical replacement.
Plug 'ap/vim-buftabline'  " https://github.com/ap/vim-buftabline

" Plug 'vim-scripts/LustyJuggler'  " https://github.com/vim-scripts/LustyJuggler
"                                  " https://github.com/sjbach/lusty
" Plug 'scrooloose/nerdtree'  " https://github.com/scrooloose/nerdtree
" Plug 'yegappan/mru'  " https://github.com/yegappan/mru
" Plug 'ton/vim-bufsurf'  " https://github.com/ton/vim-bufsurf


"" GIT, ETC
"""""""""""

Plug 'tpope/vim-fugitive'  " https://github.com/tpope/vim-fugitive
Plug 'airblade/vim-gitgutter'  " https://github.com/airblade/vim-gitgutter
Plug 'gregsexton/gitv'  " https://github.com/gregsexton/gitv


"" SYNTAXN
Plug 'gorkunov/smartpairs.vim'  " https://github.com/gorkunov/smartpairs.vim
Plug 'Raimondi/delimitMate'  " https://github.com/Raimondi/delimitMate
Plug 'chrisbra/Colorizer', {'for': ['css', 'less', 'sass']}  " https://github.com/chrisbra/Colorizer

Plug 'editorconfig/editorconfig-vim'  " https://github.com/editorconfig/editorconfig-vim

Plug 'w0rp/ale'  " https://github.com/w0rp/ale
Plug 'Chiel92/vim-autoformat'  " https://github.com/Chiel92/vim-autoformat
Plug 'majutsushi/tagbar'  " https://github.com/majutsushi/tagbar
Plug 'davidhalter/jedi-vim'  " https://github.com/davidhalter/jedi-vim
Plug 'pangloss/vim-javascript', {'for': 'javascript'}  " https://github.com/pangloss/vim-javascript
Plug 'ternjs/tern_for_vim', { 'do': 'npm install' }  " https://github.com/ternjs/tern_for_vim

Plug 'othree/html5.vim'  " https://github.com/othree/html5.vim
Plug 'groenewege/vim-less'  " https://github.com/groenewege/vim-less
Plug 'mxw/vim-jsx'  " https://github.com/mxw/vim-jsx
Plug 'leafgarland/typescript-vim'  " https://github.com/leafgarland/typescript-vim
Plug 'kchmck/vim-coffee-script'  " https://github.com/kchmck/vim-coffee-script
Plug 'mfukar/robotframework-vim'  " https://github.com/mfukar/robotframework-vim
Plug 'chr4/nginx.vim'  " https://github.com/chr4/nginx.vim
Plug 'Valloric/MatchTagAlways'  " https://github.com/Valloric/MatchTagAlways
Plug 'plasticboy/vim-markdown'  " https://github.com/plasticboy/vim-markdown

" Plug 'neomake/neomake'  " https://github.com/neomake/neomake
" Plug 'JulesWang/css.vim'  " https://github.com/JulesWang/css.vim
" Plug 'hail2u/vim-css3-syntax'  " https://github.com/hail2u/vim-css3-syntax
" Plug 'evanmiller/nginx-vim-syntax'  " https://github.com/evanmiller/nginx-vim-syntax
" Plug 'kgust/sql.vim'  "  https://github.com/kgust/sql.vim


"" AUTOCOMPLETE AND SNIPPETS
Plug 'SirVer/ultisnips'  " https://github.com/SirVer/ultisnips
Plug 'honza/vim-snippets'  " https://github.com/honza/vim-snippets
Plug 'maralla/completor.vim'  " https://github.com/maralla/completor.vim
"" AutoComplPop --- always works, when others don't
" Plug 'vim-scripts/L9'  " https://github.com/vim-scripts/L9
" Plug 'othree/vim-autocomplpop'  " https://github.com/othree/vim-autocomplpop

"" COLORSCHEME
Plug 'tomasr/molokai'  " https://github.com/tomasr/molokai
Plug 'endel/vim-github-colorscheme'  " https://github.com/endel/vim-github-colorscheme
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
