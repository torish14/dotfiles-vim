" MUST READ
" http://sheerun.net/2014/03/21/how-to-boost-your-vim-productivity/

" https://github.com/junegunn/vim-plug
call plug#begin('~/.vim/plugged')

Plug 'tpope/vim-sensible'


"" VISUAL
"""""""""

Plug 'itchyny/lightline.vim'  " https://github.com/itchyny/lightline.vim
Plug 'drmikehenry/vim-fontsize'  " https://github.com/drmikehenry/vim-fontsize
Plug 'junegunn/goyo.vim'  " http://github.com/junegunn/goyo.vim
Plug 'junegunn/limelight.vim'  " http://github.com/junegunn/limelight.vim
Plug 'nathanaelkane/vim-indent-guides'  " https://github.com/nathanaelkane/vim-indent-guides

Plug 'tyru/open-browser.vim'  " https://github.com/tyru/open-browser.vim

Plug 'LargeFile'  " https://github.com/vim-scripts/LargeFile
Plug 'gorkunov/smartpairs.vim'  " https://github.com/gorkunov/smartpairs.vim
Plug 'jez/vim-superman'  " https://github.com/jez/vim-superman
Plug 'moll/vim-bbye'  " https://github.com/moll/vim-bbye

Plug 'chrisbra/vim-diff-enhanced'  " https://github.com/chrisbra/vim-diff-enhanced

Plug 'dkprice/vim-easygrep'  " https://github.com/dkprice/vim-easygrep
Plug 'haya14busa/incsearch.vim'  " https://github.com/haya14busa/incsearch.vim
Plug 'terryma/vim-multiple-cursors'  " https://github.com/terryma/vim-multiple-cursors
Plug 'rking/ag.vim'  " https://github.com/rking/ag.vim


"" BUFFER NAVIGATION
""""""""""""""""""""

Plug 'ap/vim-buftabline'  " https://github.com/ap/vim-buftabline
Plug 'severin-lemaignan/vim-minimap'  " https://github.com/severin-lemaignan/vim-minimap

Plug 'jeetsukumaran/vim-filebeagle'  " https://github.com/jeetsukumaran/vim-filebeagle
Plug 'jeetsukumaran/vim-buffergator'  " https://github.com/jeetsukumaran/vim-buffergator
Plug 'scrooloose/nerdtree'  " https://github.com/scrooloose/nerdtree

Plug 'ctrlpvim/ctrlp.vim'  " https://github.com/ctrlpvim/ctrlp.vim
Plug 'felikz/ctrlp-py-matcher'  " https://github.com/felikz/ctrlp-py-matcher
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }  " https://github.com/junegunn/fzf

Plug 'yegappan/mru'  " https://github.com/yegappan/mru
Plug 'ton/vim-bufsurf'  " https://github.com/ton/vim-bufsurf
Plug 'tpope/vim-eunuch'  " https://github.com/tpope/vim-eunuch


"" GIT, ETC
"""""""""""

Plug 'tpope/vim-fugitive'  " https://github.com/tpope/vim-fugitive
Plug 'airblade/vim-gitgutter'  " https://github.com/airblade/vim-gitgutter
Plug 'gregsexton/gitv'  " https://github.com/gregsexton/gitv


"" SYNTAX
Plug 'editorconfig/editorconfig-vim'  " https://github.com/editorconfig/editorconfig-vim

Plug 'Chiel92/vim-autoformat'  " https://github.com/Chiel92/vim-autoformat
Plug 'neomake/neomake'  " https://github.com/neomake/neomake
"Plug 'scrooloose/syntastic'  " https://github.com/scrooloose/syntastic
Plug 'majutsushi/tagbar'  " https://github.com/majutsushi/tagbar
Plug 'Valloric/MatchTagAlways'  " https://github.com/Valloric/MatchTagAlways
Plug 'Raimondi/delimitMate'  " https://github.com/Raimondi/delimitMate
Plug 'davidhalter/jedi-vim'  " https://github.com/davidhalter/jedi-vim
" , {'do': 'cd ~/.vim/plugged/jedi-vim/jedi/; git co master'}

Plug 'othree/html5.vim'  " https://github.com/othree/html5.vim
Plug 'groenewege/vim-less'  " https://github.com/groenewege/vim-less
Plug 'JulesWang/css.vim'  " https://github.com/JulesWang/css.vim
Plug 'hail2u/vim-css3-syntax'  " https://github.com/hail2u/vim-css3-syntax
Plug 'ap/vim-css-color'  " https://github.com/ap/vim-css-color
Plug 'mfukar/robotframework-vim'  " https://github.com/mfukar/robotframework-vim
Plug 'evanmiller/nginx-vim-syntax'  " https://github.com/evanmiller/nginx-vim-syntax
Plug 'sql.vim--Stinson'  " https://github.com/vim-scripts/sql.vim--Stinson

Plug 'pangloss/vim-javascript'  " https://github.com/pangloss/vim-javascript
Plug 'mxw/vim-jsx'  " https://github.com/mxw/vim-jsx
Plug 'kchmck/vim-coffee-script'  " https://github.com/kchmck/vim-coffee-script

Plug 'ternjs/tern_for_vim'  " https://github.com/ternjs/tern_for_vim


"" AUTOCOMPLETE AND SNIPPETS
Plug 'SirVer/ultisnips'  " https://github.com/SirVer/ultisnips
Plug 'honza/vim-snippets'  " https://github.com/honza/vim-snippets
Plug 'vim-scripts/AutoComplPop'  " https://github.com/vim-scripts/AutoComplPop


"" COLORSCHEME
Plug 'morhetz/gruvbox'  " https://github.com/morhetz/gruvbox
Plug 'tomasr/molokai'  " https://github.com/tomasr/molokai
Plug 'endel/vim-github-colorscheme'  " https://github.com/endel/vim-github-colorscheme
Plug 'w0ng/vim-hybrid'  " https://github.com/w0ng/vim-hybrid
Plug 'Lokaltog/vim-distinguished'  " https://github.com/Lokaltog/vim-distinguished
Plug 'altercation/vim-colors-solarized'  " https://github.com/altercation/vim-colors-solarized
Plug 'ciaranm/inkpot'  " https://github.com/ciaranm/inkpot
Plug 'hukl/Smyck-Color-Scheme'  " https://github.com/hukl/Smyck-Color-Scheme


"" Musi
Plug 'supercollider/scvim'  " https://github.com/supercollider/scvim
" Plug 'sbl/scvim'  " https://github.com/sbl/scvim

"" ===========================================================================

" Plug 'terryma/vim-expand-region'  " https://github.com/terryma/vim-expand-region
" Plug 'marijnh/tern_for_vim'  " https://github.com/marijnh/tern_for_vim
" Plug 'mkitt/tabline.vim'  " https://github.com/mkitt/tabline.vim
" Plug 'zefei/vim-wintabs'  " https://github.com/zefei/vim-wintabs
" Plug 'fholgado/minibufexpl.vim'  " https://github.com/fholgado/minibufexpl.vim
" Plug 'bling/vim-airline'  " https://github.com/bling/vim-airline
" Plug 'tpope/vim-vinegar'  " https://github.com/tpope/vim-vinegar
" Plug 'ryanoasis/vim-webdevicons'  " https://github.com/ryanoasis/vim-webdevicons
" Plug 'jamessan/vim-gnupg'  " https://github.com/jamessan/vim-gnupg
" Plug 'sheerun/vim-polyglot'  " https://github.com/sheerun/vim-polyglot
" Plug 'Valloric/YouCompleteMe'  " https://github.com/Valloric/YouCompleteMe
" Plug 'garbas/vim-snipmate'  " https://github.com/garbas/vim-snipmate
"" gitguteer alternative for other vcs: https://github.com/mhinz/vim-signify
" Plug 'idanarye/vim-merginal'  " https://github.com/idanarye/vim-merginal
" Plug 'int3/vim-extradite'  " https://github.com/int3/vim-extradite
" Plug 'jaxbot/github-issues.vim'  " https://github.com/jaxbot/github-issues.vim
" Plug 'Keithbsmiley/gist.vim'  " https://github.com/Keithbsmiley/gist.vim

" https://github.com/reedes/vim-thematic
" http://cocopon.me/app/vim-color-gallery/
" http://blog.codinghorror.com/progamming-fonts/
" https://github.com/Lokaltog/powerline-fonts

" http://vimawesome.com/plugin/tabular
" http://vimawesome.com/plugin/gundo
" http://vimawesome.com/plugin/unimpaired-vim
" http://vimawesome.com/plugin/commentary-vim
" http://vimawesome.com/plugin/webapi-vim
" https://github.com/sjbach/lusty

" Add plugins to &runtimepath
call plug#end()
