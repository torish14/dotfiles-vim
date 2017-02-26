" FZF
"""""""

function! FZFfiles()
    call fzf#run({
    \   'source': 'ag  -U -i -l -g "" --ignore ./var --ignore ./parts --ignore ./develop-eggs --ignore *.py? --ignore *.min.* --ignore *.gif --ignore *.png',
    \   'sink':    'e',
    \ })
endfunction

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

