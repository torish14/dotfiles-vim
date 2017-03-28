"" SYNTASTIC
""""""""""""

" also see: http://usevim.com/2016/03/07/linting/
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_loc_list_height = 5
let g:syntastic_auto_loc_list = 0
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 1
let g:syntastic_auto_jump = 0
let g:syntastic_stl_format = '[%E{%e Errors}%B{, }%W{%w Warnings}]'
let g:syntastic_ignore_files = ['bin/', '.min.css', '.min.js']

let g:syntastic_error_symbol = '❌'
let g:syntastic_style_error_symbol = '⁉️'
let g:syntastic_warning_symbol = '⚠️'
let g:syntastic_style_warning_symbol = '💩'

highlight clear SignColumn
highlight SyntasticErrorSign ctermfg=red guifg=red
highlight SyntasticWarningSign ctermfg=yellow guifg=yellow
highlight SyntasticStyleErrorSign ctermfg=red guifg=red
highlight SyntasticStyleWarningSign ctermfg=yellow guifg=yellow

" Python checker
let g:syntastic_python_python_exec = '~/dev/python-tools/bin/python'
" flake8 supports # noqa or # nopep8 to ignore individual lines
let g:syntastic_python_checkers=['pylama']
" http://pep8.readthedocs.org/en/latest/intro.html#error-codes
let g:syntastic_python_flake8_args='--ignore=E702,E221,E222,E241'

" Javascript checker
let g:syntastic_javascript_checkers = ['eslint']
" let g:syntastic_javascript_checkers=['jshint', 'jscs']

" html
let g:syntastic_html_tidy_ignore_errors=[" proprietary attribute \"ng-"]

