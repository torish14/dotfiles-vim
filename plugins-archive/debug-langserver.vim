call plug#begin('~/.vim/plugged')

Plug 'autozimu/LanguageClient-neovim', {
    \ 'branch': 'next',
    \ 'do': 'bash install.sh',
    \ }

Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }

call plug#end()

augroup filetype_python
    autocmd!
    autocmd BufReadPost *.python setlocal filetype=python
augroup END
augroup filetype_javascript
    autocmd!
    autocmd BufReadPost *.js setlocal filetype=javascript
augroup END


" Always draw sign column. Prevent buffer moving when adding/deleting sign.
set signcolumn=yes

let g:LanguageClient_serverCommands = {
    \ 'python': ['/home/thet/dev/python-tools/bin/pyls'],
    \ 'javascript': ['/home/thet/node_modules/.bin/javascript-typescript-stdio'],
    \ }
let g:LanguageClient_loggingLevel = 'INFO'
let g:LanguageClient_virtualTextPrefix = ''
let g:LanguageClient_loggingFile =  expand('~/.vim/LanguageClient.log')
let g:LanguageClient_serverStderr = expand('~/.vim/LanguageServer.log')


let g:deoplete#enable_at_startup = 1
call deoplete#custom#option('sources', {
  \ '_': ['LanguageClient'],
\})

