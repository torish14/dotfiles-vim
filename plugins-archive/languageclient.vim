Plug 'autozimu/LanguageClient-neovim', { 'branch': 'next', 'do': 'bash install.sh' }  " https://github.com/autozimu/LanguageClient-neovim


" CONFIG
""""""""

let g:LanguageClient_autoStart = 1
let g:LanguageClient_serverCommands = {
    \ 'python': ['/home/thet/dev/empower.help/bda.empower/bin/pyls'],
    \ 'javascript': ['/home/thet/node_modules/.bin/javascript-typescript-stdio'],
    \ 'javascript.vue': ['/home/thet/node_modules/.bin/vls'],
    \ 'json': ['/home/thet/node_modules/.bin/json-languageserver'],
    \ 'html': ['/home/thet/node_modules/.bin/html-languageserver'],
    \ 'xhtml': ['/home/thet/node_modules/.bin/html-languageserver'],
    \ 'css': ['/home/thet/node_modules/.bin/css-languageserver'],
    \ 'less': ['/home/thet/node_modules/.bin/css-languageserver'],
    \ 'scss': ['/home/thet/node_modules/.bin/css-languageserver'],
    \ 'sh': ['/home/thet/node_modules/.bin/bash-language-server'],
\ }

"    \ 'python': ['/home/thet/dev/python-tools/bin/pyls'],
" docker-langserver

"" Language Client Debugging
" let g:LanguageClient_loggingLevel = 'INFO'
" let g:LanguageClient_virtualTextPrefix = ''
" let g:LanguageClient_loggingFile =  expand('~/.vim/LanguageClient.log')
" let g:LanguageClient_serverStderr = expand('~/.vim/LanguageServer.log')


" KEYMAP
""""""""

nnoremap <silent> = :call LanguageClient_contextMenu()<CR>
noremap <leader>d :call LanguageClient_textDocument_definition()<CR><CR>
noremap <leader>g :call LanguageClient_textDocument_implementation()<CR><CR>
