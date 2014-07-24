"" https://github.com/gmarik/Vundle.vim
set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

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


Plugin 'gmarik/vundle'

Plugin 'MarcWeber/vim-addon-mw-utils'
Plugin 'Raimondi/delimitMate'
Plugin 'bling/vim-airline'
Plugin 'dkprice/vim-easygrep'
Plugin 'drmikehenry/vim-fontsize'
Plugin 'jeetsukumaran/vim-buffergator'
Plugin 'koron/minimap-vim'
Plugin 'mkitt/tabline.vim'
Plugin 'scrooloose/nerdtree'
Plugin 'sjbach/lusty'
Plugin 'tlib'
Plugin 'tpope/vim-vinegar'
Plugin 'junegunn/goyo.vim'  " http://github.com/junegunn/goyo.vim
Plugin 'junegunn/limelight.vim'  " http://github.com/junegunn/limelight.vim
Plugin 'kien/ctrlp.vim'
Plugin 'tyru/open-browser.vim' " Use open-browser instead netrw_gx. Supports search!

Plugin 'nathanaelkane/vim-indent-guides'


" Colorscheme
Plugin 'tomasr/molokai'
Plugin 'endel/vim-github-colorscheme'
Plugin 'altercation/vim-colors-solarized'
Plugin 'ciaranm/inkpot'

" Syntaxn
Plugin 'sheerun/vim-polyglot'
Plugin 'mfukar/robotframework-vim'
Plugin 'hail2u/vim-css3-syntax'
Plugin 'Chiel92/vim-autoformat'
Plugin 'scrooloose/syntastic'
Plugin 'majutsushi/tagbar'
Plugin 'marijnh/tern_for_vim'
" Plugin 'othree/html5.vim'
" Plugin 'skammer/vim-css-color'
" Plugin 'groenewege/vim-less'

" autocomplete and snippets
""Plugin 'Shougo/neocomplcache.vim'
""Plugin 'othree/vim-autocomplpop'
""Plugin 'L9'
Plugin 'Valloric/YouCompleteMe'  " https://github.com/Valloric/YouCompleteMe
Plugin 'SirVer/ultisnips'  " https://github.com/SirVer/ultisnips
"Plugin 'garbas/vim-snipmate'  " https://github.com/garbas/vim-snipmate
Plugin 'honza/vim-snippets'  " https://github.com/honza/vim-snippets

"" git, etc
Plugin 'tpope/vim-fugitive'
Plugin 'airblade/vim-gitgutter'
Plugin 'gregsexton/gitv'
Plugin 'idanarye/vim-merginal'
Plugin 'int3/vim-extradite'
Plugin 'jaxbot/github-issues.vim'
Plugin 'Keithbsmiley/gist.vim'
