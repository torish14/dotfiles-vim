"" https://github.com/gmarik/Vundle.vim
set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

Plugin 'gmarik/vundle'

Plugin 'MarcWeber/vim-addon-mw-utils'
Plugin 'Raimondi/delimitMate'
Plugin 'bling/vim-airline'
Plugin 'dkprice/vim-easygrep'
Plugin 'drmikehenry/vim-fontsize'
Plugin 'garbas/vim-snipmate'
Plugin 'honza/vim-snippets'
Plugin 'jeetsukumaran/vim-buffergator'
Plugin 'koron/minimap-vim'
Plugin 'majutsushi/tagbar'
Plugin 'mkitt/tabline.vim'
Plugin 'scrooloose/nerdtree'
Plugin 'scrooloose/syntastic'
Plugin 'sjbach/lusty'
Plugin 'tlib'
Plugin 'tpope/vim-vinegar'
Plugin 'Chiel92/vim-autoformat'
Plugin 'junegunn/goyo.vim'  " http://github.com/junegunn/goyo.vim
Plugin 'junegunn/limelight.vim'  " http://github.com/junegunn/limelight.vim
Plugin 'kien/ctrlp.vim'
Plugin 'tyru/open-browser.vim'

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
" Plugin 'othree/html5.vim'
" Plugin 'skammer/vim-css-color'
" Plugin 'groenewege/vim-less'

"" autocomplete
""Plugin 'Shougo/neocomplcache.vim'
""Plugin 'othree/vim-autocomplpop'
""Plugin 'L9'
Plugin 'Valloric/YouCompleteMe'

"" git, etc
Plugin 'tpope/vim-fugitive'
Plugin 'airblade/vim-gitgutter'
Plugin 'gregsexton/gitv'
Plugin 'idanarye/vim-merginal'
Plugin 'int3/vim-extradite'
Plugin 'jaxbot/github-issues.vim'
Plugin 'Keithbsmiley/gist.vim'
