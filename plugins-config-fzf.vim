" FZF
"""""
" More info:
" https://github.com/junegunn/fzf/wiki/Examples-(vim)


function! FZFfiles()
    call fzf#run({
    \   'source': 'ag  -U -i -l -g "" --ignore ./var --ignore ./parts --ignore ./develop-eggs --ignore *.py? --ignore *.min.* --ignore *.gif --ignore *.png',
    \   'sink':    'e',
    \ })
endfunction

" https://github.com/junegunn/fzf/wiki/Examples-(vim)#choose-color-scheme
function! FZFcolor()
    call fzf#run({
    \   'source':
    \     map(split(globpath(&rtp, "colors/*.vim"), "\n"),
    \         "substitute(fnamemodify(v:val, ':t'), '\\..\\{-}$', '', '')"),
    \   'sink':    'colo',
    \   'options': '+m',
    \   'left':    30
    \ })
endfunction


" https://github.com/junegunn/fzf/wiki/Examples-(vim)#select-buffer
function! s:fzf_buflist()
    redir => ls
    silent ls
    redir END
    return split(ls, '\n')
endfunction

function! s:fzf_bufopen(e)
  execute 'buffer' matchstr(a:e, '^[ 0-9]*')
endfunction

function! FZFbuffers()
    call fzf#run({
    \   'source':  reverse(<sid>fzf_buflist()),
    \   'sink':    function('s:fzf_bufopen'),
    \   'options': '+m',
    \   'down':    len(<sid>fzf_buflist()) + 2
    \ })
endfunction


" https://github.com/junegunn/fzf/wiki/Examples-(vim)#simple-mru-search
function! s:fzf_allfiles()
    return extend(
    \ filter(copy(v:oldfiles),
    \        "v:val !~ 'fugitive:\\|NERD_tree\\|^/tmp/\\|.git/'"),
    \ map(filter(range(1, bufnr('$')), 'buflisted(v:val)'), 'bufname(v:val)'))
endfunction

function! FZFmru()
    call fzf#run({
    \ 'source':  reverse(s:fzf_allfiles()),
    \ 'sink':    'edit',
    \ 'options': '-m -x +s',
    \ 'down':    '40%'
    \ })
endfunction

