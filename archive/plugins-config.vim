"" The Silver Searcher
""""""""""""""""""""""

" http://robots.thoughtbot.com/faster-grepping-in-vim
" https://github.com/ggreer/the_silver_searcher
" bind K to grep word under cursor
"nnoremap K :grep! "\b<C-R><C-W>\b"<CR>:cw<CR>
" bind \ (backward slash) to grep shortcut
"command -nargs=+ -complete=file -bar Ag silent! grep! -i <args>|cwindow|redraw!
"nnoremap \ :Ag<SPACE>


"" YOUCOMPLETEME
""""""""""""""""

" let g:ycm_filetype_whitelist = { '*': 1 }
" let g:ycm_filetype_blacklist = {
"     \ 'tagbar' : 1,
"     \ 'qf' : 1,
"     \ 'unite' : 1,
"     \ 'vimwiki' : 1,
"     \ 'pandoc' : 1,
"     \ 'infolog' : 1,
"     \ 'mail' : 1
"     \}
" 
" let g:ycm_min_num_of_chars_for_completion = 2
" let g:ycm_goto_buffer_command = 'same-buffer'
" let g:ycm_key_invoke_completion = '<C-Space>'
" let g:ycm_key_list_select_completion = ['<TAB>', '<Down>']
" let g:ycm_key_list_previous_completion=['<Up>']
" let g:ycm_complete_in_comments = 1
" let g:ycm_complete_in_strings = 1
" let g:ycm_collect_identifiers_from_comments_and_strings = 1
" let g:ycm_collect_identifiers_from_tags_files = 1
" let g:ycm_seed_identifiers_with_syntax = 1
" let g:ycm_filepath_completion_use_working_dir = 0
" let g:ycm_use_ultisnips_completer = 1
" let g:ycm_python_binary_path = '~/dev/python-tools/bin/python'
" let g:ycm_add_preview_to_completeopt = 0
" let g:ycm_autoclose_preview_window_after_completion = 1
" let g:ycm_autoclose_preview_window_after_insertion = 1
"" let g:ycm_path_to_python_interpreter = '/home/thet/dev/cloud19/wireframe/noeku-buildout/bin/zopepy'
"" set completeopt=longest,menuone


"" Ultisnips
""""""""""""

"let g:UltiSnipsExpandTrigger="<S-Space>"
"let g:UltiSnipsJumpForwardTrigger="<c-j>"
"let g:UltiSnipsJumpBackwardTrigger="<c-k>"

"let g:UltiSnipsExpandTrigger="<TAB>"

"" http://stackoverflow.com/questions/14896327/ultisnips-and-youcompleteme
" function! g:UltiSnips_Complete()
"     call UltiSnips#ExpandSnippet()
"     if g:ulti_expand_res == 0
"         if pumvisible()
"             return "\<C-n>"
"         else
"             call UltiSnips#JumpForwards()
"             if g:ulti_jump_forwards_res == 0
"                return "\<TAB>"
"             endif
"         endif
"     endif
"     return ""
" endfunction
" au BufEnter * exec "inoremap <silent> " . g:UltiSnipsExpandTrigger . " <C-R>=g:UltiSnips_Complete()<cr>"
" let g:UltiSnipsJumpForwardTrigger="<tab>"
" let g:UltiSnipsListSnippets="<c-e>"
"" this mapping Enter key to <C-y> to chose the current highlight item
"" and close the selection list, same as other IDEs.
"" CONFLICT with some plugins like tpope/Endwise
" inoremap <expr> <CR> pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>"


"" Conque_Shell
" let g:ConqueTerm_FastMode = 0
" let g:ConqueTerm_Color = 1
" let g:ConqueTerm_CloseOnEnd = 1


"" VIM AUTOFORMAT
"""""""""""""""""

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


"" WEB DEV ICONS
""""""""""""""""

" let g:WebDevIconsUnicodeDecorateFileNodesDefaultSymbol = ' '
" let g:WebDevIconsNerdTreeAfterGlyphPadding = ' '
" let g:webdevicons_conceal_nerdtree_brackets = 0
"" let g:webdevicons_conceal_nerdtree_brackets = 1


"" GIT
""""""

" let g:extradite_resize = 0


"" UNITE
""""""""

"let g:unite_enable_split_vertically=1
""let g:unite_split_rule='right'


"" SYNTASTIC
""""""""""""

" let g:syntastic_python_checkers=['flake8', 'pydocstyle']
" let g:syntastic_javascript_checkers=['jslint']

