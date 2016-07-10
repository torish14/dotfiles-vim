" MUST READ
" http://sheerun.net/2014/03/21/how-to-boost-your-vim-productivity/

"" https://github.com/gmarik/Vundle.vim
set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

Plugin 'gmarik/vundle'  " https://github.com/gmarik/vundle

if has('gui_running')
    " all right...
else
    Plugin 'kana/vim-fakeclip'  " https://github.com/kana/vim-fakeclip
endif

Plugin 'itchyny/lightline.vim'  " https://github.com/itchyny/lightline.vim
Plugin 'Raimondi/delimitMate'  " https://github.com/Raimondi/delimitMate
Plugin 'dkprice/vim-easygrep'  " https://github.com/dkprice/vim-easygrep
Plugin 'drmikehenry/vim-fontsize'  " https://github.com/drmikehenry/vim-fontsize
Plugin 'junegunn/goyo.vim'  " http://github.com/junegunn/goyo.vim
Plugin 'junegunn/limelight.vim'  " http://github.com/junegunn/limelight.vim
Plugin 'tyru/open-browser.vim'  " https://github.com/tyru/open-browser.vim
Plugin 'nathanaelkane/vim-indent-guides'  " https://github.com/nathanaelkane/vim-indent-guides
Plugin 'haya14busa/incsearch.vim'  " https://github.com/haya14busa/incsearch.vim
Plugin 'LargeFile'  " https://github.com/vim-scripts/LargeFile
Plugin 'gorkunov/smartpairs.vim'  " https://github.com/gorkunov/smartpairs.vim
Plugin 'jez/vim-superman'  " https://github.com/jez/vim-superman
Plugin 'moll/vim-bbye'  " https://github.com/moll/vim-bbye
Plugin 'chrisbra/vim-diff-enhanced'  " https://github.com/chrisbra/vim-diff-enhanced

Plugin 'terryma/vim-multiple-cursors'  " https://github.com/terryma/vim-multiple-cursors
Plugin 'dyng/ctrlsf.vim'  " https://github.com/dyng/ctrlsf.vim
" Plugin 'rking/ag.vim'  " https://github.com/rking/ag.vim

" Plugin 'ryanoasis/vim-webdevicons'  " https://github.com/ryanoasis/vim-webdevicons
" Plugin 'jamessan/vim-gnupg'  " https://github.com/jamessan/vim-gnupg


" Buffer
Plugin 'ctrlpvim/ctrlp.vim'  " https://github.com/ctrlpvim/ctrlp.vim
Plugin 'felikz/ctrlp-py-matcher'  " https://github.com/felikz/ctrlp-py-matcher
Plugin 'tacahiroy/ctrlp-funky'  " https://github.com/tacahiroy/ctrlp-funky


Plugin 'ap/vim-buftabline'  " https://github.com/ap/vim-buftabline
Plugin 'jeetsukumaran/vim-buffergator'  " https://github.com/jeetsukumaran/vim-buffergator
Plugin 'ton/vim-bufsurf'  " https://github.com/ton/vim-bufsurf
Plugin 'scrooloose/nerdtree'  " https://github.com/scrooloose/nerdtree
" Plugin 'tpope/vim-vinegar'  " https://github.com/tpope/vim-vinegar
Plugin 'tpope/vim-eunuch'  " https://github.com/tpope/vim-eunuch
Plugin 'jeetsukumaran/vim-filebeagle'  " https://github.com/jeetsukumaran/vim-filebeagle

" Syntaxn
Plugin 'Chiel92/vim-autoformat'  " https://github.com/Chiel92/vim-autoformat
Plugin 'scrooloose/syntastic'  " https://github.com/scrooloose/syntastic
Plugin 'majutsushi/tagbar'  " https://github.com/majutsushi/tagbar
Plugin 'Valloric/MatchTagAlways'  " https://github.com/Valloric/MatchTagAlways
" Plugin 'sheerun/vim-polyglot'  " https://github.com/sheerun/vim-polyglot
Plugin 'othree/html5.vim'  " https://github.com/othree/html5.vim
Plugin 'groenewege/vim-less'  " https://github.com/groenewege/vim-less
Plugin 'JulesWang/css.vim'  " https://github.com/JulesWang/css.vim
Plugin 'hail2u/vim-css3-syntax'  " https://github.com/hail2u/vim-css3-syntax
Plugin 'ap/vim-css-color'  " https://github.com/skammer/vim-css-color
Plugin 'mfukar/robotframework-vim'  " https://github.com/mfukar/robotframework-vim
Plugin 'evanmiller/nginx-vim-syntax'  " https://github.com/evanmiller/nginx-vim-syntax
Plugin 'sql.vim--Stinson'  " https://github.com/vim-scripts/sql.vim--Stinson
Plugin 'davidhalter/jedi-vim'  " https://github.com/davidhalter/jedi-vim
Plugin 'ternjs/tern_for_vim'  " https://github.com/ternjs/tern_for_vim

" autocomplete and snippets
Plugin 'SirVer/ultisnips'  " https://github.com/SirVer/ultisnips
Plugin 'honza/vim-snippets'  " https://github.com/honza/vim-snippets
Plugin 'vim-scripts/AutoComplPop'  " https://github.com/vim-scripts/AutoComplPop
"Plugin 'Valloric/YouCompleteMe'  " https://github.com/Valloric/YouCompleteMe
"Plugin 'garbas/vim-snipmate'  " https://github.com/garbas/vim-snipmate


"" git, etc
Plugin 'tpope/vim-fugitive'  " https://github.com/tpope/vim-fugitive
Plugin 'airblade/vim-gitgutter'  " https://github.com/airblade/vim-gitgutter


" Colorscheme
Plugin 'tomasr/molokai'  " https://github.com/tomasr/molokai
Plugin 'endel/vim-github-colorscheme'  " https://github.com/endel/vim-github-colorscheme
Plugin 'w0ng/vim-hybrid'  " https://github.com/w0ng/vim-hybrid
Plugin 'Lokaltog/vim-distinguished'  " https://github.com/Lokaltog/vim-distinguished
Plugin 'altercation/vim-colors-solarized'  " https://github.com/altercation/vim-colors-solarized
Plugin 'ciaranm/inkpot'  " https://github.com/ciaranm/inkpot


"" Musi
"Plugin 'sbl/scvim'  " https://github.com/sbl/scvim

"" ===========================================================================


"" GENERAL
"Plugin 'MarcWeber/vim-addon-local-vimrc'  " https://github.com/MarcWeber/vim-addon-local-vimrc
"Plugin 'terryma/vim-expand-region'  " https://github.com/terryma/vim-expand-region
"Plugin 'koron/minimap-vim'  " https://github.com/koron/minimap-vim
"Plugin 'severin-lemaignan/vim-minimap'  " https://github.com/severin-lemaignan/vim-minimap
"Plugin 'MarcWeber/vim-addon-mw-utils'  " https://github.com/MarcWeber/vim-addon-mw-utils
"Plugin 'tlib'


"" SYNTAXN
" Plugin 'marijnh/tern_for_vim'  " https://github.com/marijnh/tern_for_vim
" Plugin 'othree/html5.vim'  " https://github.com/othree/html5.vim
" Plugin 'skammer/vim-css-color'  " https://github.com/skammer/vim-css-color
" Plugin 'groenewege/vim-less'  " https://github.com/groenewege/vim-less


"" GIT
"" gitguteer alternative for other vcs: https://github.com/mhinz/vim-signify
"Plugin 'gregsexton/gitv'  " https://github.com/gregsexton/gitv
"Plugin 'idanarye/vim-merginal'  " https://github.com/idanarye/vim-merginal
"Plugin 'int3/vim-extradite'  " https://github.com/int3/vim-extradite
"Plugin 'jaxbot/github-issues.vim'  " https://github.com/jaxbot/github-issues.vim
"Plugin 'Keithbsmiley/gist.vim'  " https://github.com/Keithbsmiley/gist.vim


" TODO
" https://github.com/reedes/vim-thematic
" http://blog.codinghorror.com/progamming-fonts/
" https://github.com/Lokaltog/powerline-fonts
" https://github.com/itchyny/lightline.vim
" http://cocopon.me/app/vim-color-gallery/
" http://vimcolorschemetest.googlecode.com/svn/html/index-c.html

" http://vimawesome.com/plugin/tabular
" http://vimawesome.com/plugin/gundo
" http://vimawesome.com/plugin/unimpaired-vim
" http://vimawesome.com/plugin/commentary-vim
" http://vimawesome.com/plugin/webapi-vim
" http://vimawesome.com/plugin/vim-multiple-cursors
" https://github.com/majutsushi/tagbar/wiki

" Plugin 'sjbach/lusty'  " https://github.com/sjbach/lusty

"" overrides ctrl-x
" Plugin 'jeetsukumaran/vim-buffergator'  " https://github.com/jeetsukumaran/vim-buffergator

"" Modifies tabline, etc too much
" Plugin 'mkitt/tabline.vim'  " https://github.com/mkitt/tabline.vim
" Plugin 'zefei/vim-wintabs'  " https://github.com/zefei/vim-wintabs
" Plugin 'fholgado/minibufexpl.vim'  " https://github.com/fholgado/minibufexpl.vim
" Plugin 'bling/vim-airline'  " https://github.com/bling/vim-airline
