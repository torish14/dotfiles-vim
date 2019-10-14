Plug 'Chiel92/vim-autoformat'  " https://github.com/Chiel92/vim-autoformat

"" https://github.com/Chiel92/vim-autoformat
"" https://github.com/hhatto/autopep8
" Using autopep8 - yapf messes files up with my current setup...
"let g:formatters_python = ['yapf']
"if exists('g:formatdef_yapf')
"    "" Use config files (~/.config/yapf/style)
"    unlet g:formatdef_yapf
"endif

" Troubles? see:
" https://github.com/Chiel92/vim-autoformat#help-the-formatter-doesnt-work-as-expected
" let g:autoformat_verbosemode=1

let g:formatters_python = ['autopep8']

let g:formatdef_htmlbeautify = '"html-beautify -f - -p -m10 -s ".shiftwidth()'
let g:formatters_zpt = ['htmlbeautify']
let g:formatters_xml = ['htmlbeautify']
let g:formatters_svg = ['htmlbeautify']

let g:formatdef_thet_cssbrush = '"cssbrush ".bufname("%")'
let g:formatters_less = ['thet_cssbrush']
let g:formatters_css = ['thet_cssbrush']


" let g:formatdef_thet_javascript = '"js-beautify -X -f - -".(&expandtab ? "s ".shiftwidth() : "t").(&textwidth ? " -w ".&textwidth : "")'
" let g:formatdef_thet_javascript = '"prettier --single-quote --tab-width ".shiftwidth()'
" let g:formatdef_thet_javascript = '"prettier --single-quote --stdin --stdin-filepath ".expand("%:p").(&textwidth ? " --print-width ".&textwidth : "")." --tab-width=".shiftwidth()'
" let g:formatters_javascript = ['thet_javascript']
let g:formatters_javascript = ['prettier']


" let g:formatdef_thet_python = '"-a -a -a -a ".(&textwidth ? "--max-line-length=".&textwidth : "")." /dev/stdin "'
" let g:formatdef_thet_python = '"autopep8 - --range ".a:firstline." ".a:lastline." ".(&textwidth ? "--max-line-length=".&textwidth : "")." -a -a --ignore=E24,E70"'
" let g:formatters_python = ['thet_python']

"" xml_pp provided by perl-XML-Twig (Fedora)
" let g:formatdef_xmlpp = "xml_pp -s indented_a"
" let g:formatters_zcml =  ['xmlpp']
" let g:formatters_zpt =   ['xmlpp']
" let g:formatters_zcml =  ['xmlpp', 'htmlbeautify', 'tidy_xml']
" let g:formatters_zpt =   ['xmlpp', 'htmlbeautify', 'tidy_html']

" let g:formatters_zcml =  ['htmlbeautify', 'tidy_xml']
" let g:formatters_zpt =  ['htmlbeautify', 'tidy_html']

" let g:formatdef_thet_xml = "tidy -q -i -xml -wrap 0 -utf8"
" let g:formatdef_thet_zcml = "tidy -q -i -xml -wrap 0 -utf8"
" let g:formatdef_thet_zpt = "html5tidy -q -i -xml -wrap 0 -utf8"
" let g:formatdef_thet_html = "html5tidy -q -i -xml -wrap 0 -utf8"

" let g:formatters_xml =  ['thet_xml']
" let g:formatters_zcml =  ['thet_zcml']
" let g:formatters_zpt =  ['thet_zpt']
" let g:formatters_html = ['thet_html']

" let g:formatprg_args_expr_xml = '"-q -xml --show-errors 0 --show-warnings 0 --force-output --indent auto --indent-spaces ".&shiftwidth." --vertical-space yes --tidy-mark no -wrap 0"'
" let g:formatprg_args_expr_zpt = '"-q -i -xmlributes 1 --indent-spaces ".&shiftwidth." --vertical-space yes --tidy-mark no -wrap 0"'


"" Autoformat
noremap <leader>f :Autoformat<CR><CR>
