"" Transparent editing of gpg encrypted files.
"" http://vim.wikia.com/wiki/Edit_gpg_encrypted_files

" Don't save backups of *.gpg files
set backupskip+=*.gpg

augroup encrypted
    au!
    " To avoid that parts of the file is saved to .viminfo when yanking or
    " deleting, empty the 'viminfo' option.
    " Disable swap files, and set binary file format before reading the file
    autocmd BufReadPre,FileReadPre *.gpg
        \ setlocal viminfo= |
        \ setlocal noswapfile bin
    " Decrypt the contents after reading the file, reset binary file format
    " and run any BufReadPost autocmds matching the file name without the .gpg
    " extension
    autocmd BufReadPost,FileReadPost *.gpg
        \ execute "'[,']!gpg --decrypt --default-recipient-self 2> /dev/null" |
        \ setlocal nobin |
        \ execute "doautocmd BufReadPost " . expand("%:r")
    " Set binary file format and encrypt the contents before writing the file
    autocmd BufWritePre,FileWritePre *.gpg
        \ setlocal bin |
        \ '[,']!gpg --encrypt --default-recipient-self
    " After writing the file, do an :undo to revert the encryption in the
    " buffer, and reset binary file format
    autocmd BufWritePost,FileWritePost *.gpg
        \ silent u |
        \ setlocal nobin
augroup END
