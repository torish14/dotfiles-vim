"" KEY MAPPINGS
"""""""""""""""

let mapleader = ","  " leader key


"" :W or :Wa should write/write all
command W execute "w"
command Wa execute "wa"
" write as root in neovim - https://stackoverflow.com/a/58215799/1337474
cnoremap w!! execute 'silent! write !SUDO_ASKPASS=`which ssh-askpass` sudo tee % >/dev/null' <bar> edit!

" select all
noremap <C-a> ggVG

" make the tab key match bracket pairs
"noremap <TAB> %
"vnoremap <TAB> %

noremap <F5> :set nosmarttab<CR>
"":setlocal si! si?<CR>
""set noautoindent
""set nocindent
""set nosmarttab


"" SEARCH
"""""""""

" nnoremap / /\v
" vnoremap / /\v

" center search
noremap n nzz
noremap N Nzz


"" YANK settings
""""""""""""""""

"" delete into blackhole register, so that other aren't overwritten
"" thanks bairu from #vim!
nnoremap <Del> "_x

"" paste selected text into command line
"" http://stackoverflow.com/questions/4878980/vim-insert-selected-text-into-command-line
"" http://stackoverflow.com/a/8750499/1130358
nnoremap ; y:<C-r>"<C-b>
vnoremap ; y:<C-r>"<C-b>

" See: https://github.com/neovim/neovim/issues/583
function! ClipboardYank()
    call system('xclip -i -selection clipboard', @@)
endfunction
function! ClipboardPaste()
    let @@ = system('xclip -o -selection clipboard')
endfunction

"" clipboard copy/paste
if has('gui_running')
    " copy selection or line
    noremap 1 "+yy
    " paste before
    noremap 2 "+P
    " paste after
    noremap @ "+p
else
    noremap 1 yy:call ClipboardYank()<CR>
    noremap 2 :call ClipboardPaste()<CR>p
    noremap 3 dd:call ClipboardYank()<CR>
endif

" copy filename to clipboard
" http://vim.wikia.com/wiki/Copy_filename_to_clipboard
noremap ,cs :let @+=expand("%")<CR>
noremap ,cl :let @+=expand("%:p")<CR>


"" <leader>` MAPPINGS
"""""""""""""""""""""

" jsom formating
noremap <leader>`json :%!python -m json.tool<CR>

" insert filename
inoremap <leader>`fn <C-R>=expand("%:p")<CR>

"" reformat to column based layout
"" http://stackoverflow.com/questions/1229900/reformat-in-vim-for-a-nice-column-layout
noremap <leader>`t :%!column -t<CR>


"" SCROLLING
""""""""""""

"" center scrolling
"map <S-Up> <Up>zz
"map <S-Down> <Down>zz

"" scoll lock toggle
noremap <leader>zz :let &scrolloff=999-&scrolloff<cr>


"" WINDOWS / BUFFERS movement
"""""""""""""""""""""""""""""

"noremap <C-h> <C-w>h
"noremap <C-j> <C-w>j
"noremap <C-k> <C-w>k
"noremap <C-l> <C-w>l

noremap <leader><Up> <C-w>k
noremap <leader><Down> <C-w>j
noremap <leader><Left> <C-w>h
noremap <leader><Right> <C-w>l

noremap <C-w><Up> <C-w>k
noremap <C-w><Down> <C-w>j
noremap <C-w><Left> <C-w>h
noremap <C-w><Right> <C-w>l

" Resize splits
noremap <C-A-Up> :vertical resize +1<CR>
noremap <C-A-Down> :vertical resize -1<CR>
noremap <C-S-A-Up> :resize -1<CR>
noremap <C-S-A-Down> :resize +1<CR>

" tile all open buffers in vertical panes - http://www.vimbits.com/bits/375
map <silent> <leader>a :vertical :ball<cr>


"" FOLDS
""""""""

"" open/close all folds
""noremap <C-TAB> za
""noremap <C-S-TAB> zA
noremap <C-S-Right> zo
noremap <C-S-Left> zc
"" termit might override usage of -A-
""noremap <C-S-A-Right> zO
""noremap <C-S-A-Left> zC


"" BUFFERS
""""""""""

" open file relative to current file
" no need for autochdir
" http://stackoverflow.com/questions/1708623/opening-files-in-the-same-folder-as-the-current-file-in-vim
" noremap <leader>e :e %:h/
" use next instead of edit. next supports opening multiple files via GLOBS
noremap <leader>e :n %:h/

"" next/previous buffer
" map <silent> <C-left> :bprev<CR>
" map <silent> <C-right> :bnext<CR>

" close buffer and goto next
noremap <C-x> :Bdelete<CR>
noremap <leader>x :Bdelete<CR>


noremap <C-n> :tabnew<CR>
"noremap <leader>t :tabnew
"noremap <C-n> :tab split<CR>
noremap <C-c> :tabclose<CR>
noremap <C-Up> :tabn<CR>
noremap <C-Down> :tabp<CR>


"" spellcheck
"map <silent> <leader>d :set spell!<CR>

noremap <leader>4 :setlocal tabstop=4 shiftwidth=4 softtabstop=0<CR>
noremap <leader>2 :setlocal tabstop=2 shiftwidth=2 softtabstop=0<CR>

noremap <leader>z :setlocal foldcolumn=8<CR>
noremap <leader>Z :setlocal foldcolumn=0<CR>


"" FORMAT BUFFER
""""""""""""""""

"" isort python files
command! -range=% Isort :<line1>,<line2>! isort -
noremap <leader>i :Isort<CR>

"" reformat - strip whitespace
noremap <leader>s :call Preserve("%s/\\s\\+$//e")<CR>
"" reformat - wrap text
noremap <leader>w gqip
"" reformat - join text
noremap <leader>j vipJ^
"" reformat - split each sentence - http://superuser.com/questions/275364
""noremap <leader>k vap:s/\([\.\?!,;]\) \+/\1\r/e<CR>
noremap <leader>k vap:s/\([\.\?!;]\) \+/\1\r/e<CR>

" show full path to file
noremap <leader>% :echo expand('%:p')<CR>

"" Autoformat
noremap <leader>g :%!jscs -x<CR>

"" CLEANUP FILE
" - FileType Unix,
" - Tabs to spaces,
" - Remove Carriage Returns (^M)
" noremap <leader>t :setlocal ft=unix<CR>:setlocal expandtab<CR>:%s/\r//g<CR>:retab<CR><CR>
" noremap <leader>t :setlocal ft=unix<CR>:setlocal expandtab<CR>:call Preserve("%s/\\s\\+$//e")<CR>:call Preserve("%s/\\r//e")<CR>:retab<CR><CR>
noremap <leader>t :setlocal expandtab<CR>:call Preserve("%s/\\s\\+$//e")<CR>:call Preserve("%s/\\r//e")<CR>:retab<CR><CR>

" http://stackoverflow.com/questions/4781070/how-to-insert-tab-character-when-expandtab-option-is-on-in-vim
" <CTRL-V><Tab> in insert mode


"" OTHER
""""""""

" zeal integration
noremap gz :!zeal --query "<cword>"&<CR><CR>


" noremap <leader>p :set list!<CR>
" map <silent> <leader>l :set number!<CR>

