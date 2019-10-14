" MUST READ
" http://sheerun.net/2014/03/21/how-to-boost-your-vim-productivity/


" NEEDS TO BE SET BEFORE PLUGIN IS LOADED
let g:ale_completion_enabled = 0


" https://github.com/junegunn/vim-plug
call plug#begin('~/.vim/plugged')


" https://github.com/junegunn/vim-plug/issues/651
let g:plug_window = 'enew'
let g:plug_url_format = 'git@github.com:%s.git'

Plug 'tpope/vim-sensible'


"" VISUAL
"""""""""
Plug 'drmikehenry/vim-fontsize'  " https://github.com/drmikehenry/vim-fontsize
Plug 'junegunn/goyo.vim'  " http://github.com/junegunn/goyo.vim
Plug 'junegunn/limelight.vim'  " http://github.com/junegunn/limelight.vim
Plug 'tyru/open-browser.vim'  " https://github.com/tyru/open-browser.vim
Plug 'chrisbra/vim-diff-enhanced'  " https://github.com/chrisbra/vim-diff-enhanced
Plug 'haya14busa/incsearch.vim'  " https://github.com/haya14busa/incsearch.vim
Plug 'mileszs/ack.vim'  " https://github.com/mileszs/ack.vim
Plug 'ryanoasis/vim-devicons'  " https://github.com/ryanoasis/vim-devicons


"" BUFFER NAVIGATION
""""""""""""""""""""
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }  " https://github.com/junegunn/fzf
Plug 'jeetsukumaran/vim-filebeagle'  " https://github.com/jeetsukumaran/vim-filebeagle
Plug 'jeetsukumaran/vim-buffergator'  " https://github.com/jeetsukumaran/vim-buffergator
Plug 'severin-lemaignan/vim-minimap'  " https://github.com/severin-lemaignan/vim-minimap
Plug 'pacha/vem-tabline'  " https://github.com/pacha/vem-tabline
Plug 'scrooloose/nerdtree'  " https://github.com/scrooloose/nerdtree
Plug 'Xuyuanp/nerdtree-git-plugin'  " https://github.com/Xuyuanp/nerdtree-git-plugin
Plug 'francoiscabrol/ranger.vim'  " https://github.com/francoiscabrol/ranger.vim
Plug 'moll/vim-bbye'  " https://github.com/moll/vim-bbye


"" GIT, ETC
"""""""""""
Plug 'tpope/vim-fugitive'  " https://github.com/tpope/vim-fugitive
Plug 'tpope/vim-rhubarb'  " https://github.com/tpope/vim-rhubarb
Plug 'shumphrey/fugitive-gitlab.vim'  " https://github.com/shumphrey/fugitive-gitlab.vim
Plug 'airblade/vim-gitgutter'  " https://github.com/airblade/vim-gitgutter
Plug 'junegunn/gv.vim'  " https://github.com/junegunn/gv.vim
Plug 'cohama/agit.vim'  " https://github.com/cohama/agit.vim


"" SYNTAXN
""""""""""

" Against indentation annoyances
Plug 'tpope/vim-sleuth'  " https://github.com/tpope/vim-sleuth

Plug 'editorconfig/editorconfig-vim'  " https://github.com/editorconfig/editorconfig-vim
Plug 'majutsushi/tagbar'  " https://github.com/majutsushi/tagbar

Plug 'SirVer/ultisnips'  " https://github.com/SirVer/ultisnips
Plug 'honza/vim-snippets'  " https://github.com/honza/vim-snippets

Plug 'gorkunov/smartpairs.vim'  " https://github.com/gorkunov/smartpairs.vim
Plug 'Valloric/MatchTagAlways', {'for': 'html'}  " https://github.com/Valloric/MatchTagAlways

Plug 'pangloss/vim-javascript', {'for': ['javascript', 'javascript.jsx', 'javascript.vue']}  " https://github.com/pangloss/vim-javascript
Plug 'mxw/vim-jsx', {'for': ['javascript', 'javascript.jsx']}  " https://github.com/mxw/vim-jsx
Plug 'posva/vim-vue', {'for': ['javascript.vue']}  " https://github.com/posva/vim-vue
Plug 'leafgarland/typescript-vim', {'for': 'typescript'}  " https://github.com/leafgarland/typescript-vim

Plug 'othree/html5.vim', {'for': ['html', 'tal']}  " https://github.com/othree/html5.vim
Plug 'ap/vim-css-color', {'for': ['css', 'less', 'scss', 'sass']}  " https://github.com/ap/vim-css-color
Plug 'hail2u/vim-css3-syntax', {'for': ['css', 'less', 'scss', 'sass']}  " https://github.com/hail2u/vim-css3-syntax
Plug 'cakebaker/scss-syntax.vim', {'for': ['scss', 'sass']}  " https://github.com/cakebaker/scss-syntax.vim
Plug 'groenewege/vim-less', {'for': 'less'}  " https://github.com/groenewege/vim-less

Plug 'plasticboy/vim-markdown', {'for': 'markdown'}  " https://github.com/plasticboy/vim-markdown
Plug 'mfukar/robotframework-vim', {'for': 'robot'}  " https://github.com/mfukar/robotframework-vim
Plug 'chr4/nginx.vim', {'for': 'nginx'}  " https://github.com/chr4/nginx.vim
Plug 'pld-linux/vim-syntax-vcl'  " https://github.com/pld-linux/vim-syntax-vcl


"" COLORSCHEME
""""""""""""""
Plug 'mhartington/oceanic-next'  " https://github.com/mhartington/oceanic-next
Plug 'tomasr/molokai'  " https://github.com/tomasr/molokai
Plug 'endel/vim-github-colorscheme'  " https://github.com/endel/vim-github-colorscheme
Plug 'NLKNguyen/papercolor-theme'  " https://github.com/NLKNguyen/papercolor-theme

source $HOME/.vim/plugins/config.vim

" Add plugins to &runtimepath
call plug#end()
