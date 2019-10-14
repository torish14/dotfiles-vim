Plug 'davidhalter/jedi-vim', {'for': 'python'}  " https://github.com/davidhalter/jedi-vim


" CONFIG
""""""""

" let g:jedi#force_py_version = 2
"" Disable jedi completion, which is way too slow for big projects
" let g:jedi#popup_on_dot = 0
" let g:jedi#show_call_signatures = 0
" let g:jedi#completions_enabled = 0
let g:jedi#popup_on_dot = 0
let g:jedi#show_call_signatures = 0
let g:jedi#completions_enabled = 1

" KEYMAP
""""""""

let g:jedi#goto_command = "<leader>d"
let g:jedi#goto_assignments_command = "<leader>g"
let g:jedi#goto_definitions_command = ""

let g:jedi#documentation_command = "K"
let g:jedi#usages_command = "<leader>pn"
let g:jedi#completions_command = "<C-Space>"
let g:jedi#rename_command = "<leader>pr"
