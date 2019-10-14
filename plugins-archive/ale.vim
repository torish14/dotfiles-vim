" NEEDS TO BE SET BEFORE PLUGIN IS LOADED
let g:ale_completion_enabled = 0

Plug 'w0rp/ale'  " https://github.com/w0rp/ale


" CONFIG
""""""""

" let g:ale_fix_on_save = 1
let g:ale_lint_on_enter = 0
let g:ale_lint_on_filetype_changed = 0
let g:ale_lint_on_text_changed = 'never'
let g:ale_lint_delay = 500
let g:ale_echo_cursor = 1
let g:ale_echo_delay = 200
let g:ale_sign_column_always = 1
let g:ale_sign_error = '✖'
let g:ale_sign_warning = '⚠'
let g:ale_statusline_format = ['✖%d', '⚠ %d', '✓ ok']

" http://pylint-messages.wikidot.com/all-codes
let g:ale_python_pylint_options = "-d C0103,C0111,C0301,E0611,E1101,F0401,R0903,R0914,W0201"
" http://flake8.pycqa.org/en/latest/user/error-codes.html
" let g:ale_python_flake8_args =

let g:ale_linter_aliases = {
\  'vue': ['vue', 'javascript', 'html', 'scss'],
\  'jsx': ['css', 'javascript']
\}

let g:ale_linters = {
\   'javascript': ['prettier-eslint'],
\   'vue': ['eslint', 'vls'],
\   'jsx': ['stylelint', 'eslint']
\}

let g:ale_fixers = {
\   '*': ['remove_trailing_lines', 'trim_whitespace'],
\   'javascript': ['prettier', 'eslint'],
\   'python': ['black'],
\   'html': ['tidy'],
\   'xhtml': ['tidy'],
\   'xml': ['tidy'],
\}

let g:ale_set_balloons = 1


" KEYMAP
""""""""

" noremap <leader>d :ALEGoToDefinition
" noremap <leader>g :ALEFindReferences

"" ALE next/prev Error
noremap ]e :ALENextWrap<cr>
noremap [e :ALEPreviousWrap<cr>

noremap <leader>f :ALEFix<CR>
