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
Plugin 'groenewege/vim-less'
Plugin 'hail2u/vim-css3-syntax'
Plugin 'honza/vim-snippets'
Plugin 'jeetsukumaran/vim-buffergator'
Plugin 'koron/minimap-vim'
Plugin 'majutsushi/tagbar'
Plugin 'mfukar/robotframework-vim'
Plugin 'mikewest/vimroom'
Plugin 'mkitt/tabline.vim'
Plugin 'othree/html5.vim'
Plugin 'scrooloose/nerdtree'
Plugin 'scrooloose/syntastic'
Plugin 'sjbach/lusty'
Plugin 'skammer/vim-css-color'
Plugin 'tlib'
Plugin 'tomasr/molokai'
Plugin 'tpope/vim-vinegar'

"" autocomplete
""Plugin 'Shougo/neocomplcache.vim'
Plugin 'othree/vim-autocomplpop'
Plugin 'L9'

"" git, etc
Plugin 'tpope/vim-fugitive'
Plugin 'gregsexton/gitv'
Plugin 'int3/vim-extradite'
Plugin 'airblade/vim-gitgutter'
Plugin 'jaxbot/github-issues.vim'
