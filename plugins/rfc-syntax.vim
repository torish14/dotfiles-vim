Plug 'vim-scripts/rfc-syntax'  " https://github.com/vim-scripts/rfc-syntax

if expand('%:t') =~? 'rfc\d\+'
  setfiletype rfc
endif
