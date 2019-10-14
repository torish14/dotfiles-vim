Plug 'Valloric/YouCompleteMe'  " https://github.com/Valloric/YouCompleteMe

let g:ycm_filetype_whitelist = { '*': 1 }
let g:ycm_filetype_blacklist = {
    \ 'tagbar' : 1,
    \ 'qf' : 1,
    \ 'unite' : 1,
    \ 'vimwiki' : 1,
    \ 'pandoc' : 1,
    \ 'infolog' : 1,
    \ 'mail' : 1
    \}

let g:ycm_min_num_of_chars_for_completion = 2
let g:ycm_goto_buffer_command = 'same-buffer'
let g:ycm_key_invoke_completion = '<C-Space>'
let g:ycm_key_list_select_completion = ['<TAB>', '<Down>']
let g:ycm_key_list_previous_completion=['<Up>']
let g:ycm_complete_in_comments = 1
let g:ycm_complete_in_strings = 1
let g:ycm_collect_identifiers_from_comments_and_strings = 1
let g:ycm_collect_identifiers_from_tags_files = 1
let g:ycm_seed_identifiers_with_syntax = 1
let g:ycm_filepath_completion_use_working_dir = 0
let g:ycm_use_ultisnips_completer = 1
let g:ycm_python_binary_path = '~/dev/python-tools/bin/python'
let g:ycm_add_preview_to_completeopt = 0
let g:ycm_autoclose_preview_window_after_completion = 1
let g:ycm_autoclose_preview_window_after_insertion = 1
" let g:ycm_path_to_python_interpreter = '/home/thet/dev/cloud19/wireframe/noeku-buildout/bin/zopepy'
" set completeopt=longest,menuone
