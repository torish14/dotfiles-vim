
Folding
-------
::

    zc  "" close a fold
	zo  "" open a fold
    za  "" toggle fold

	zC  "" like above
    zO  "" but on all
	zA  "" folding levels

    zR  "" open all folds in buffer
    zM  "" close all folds in buffer


Location window commands
------------------------

E.g. Lightline posts it's errors there::

    :lopen
    :lclose
    :ll #LINENUMBER


List/Browse recently opened files
---------------------------------
http://stackoverflow.com/questions/309723/view-a-list-of-recent-documents-in-vim

::
    :oldfiles
    :browse old


Reload current vim file::
    :so %

Reload whole vimrc::
    :so $MYVIMRC


http://stackoverflow.com/questions/11303032/how-to-add-text-at-the-end-of-each-line-in-vim
add text to beginning/end of multiple lines::

    <C-v>  " go into visual block mode and select the lines
    A      " append. then make your changes and press or...
    $A     " to append at the end of each line.
    <ESC>  " done



refresh netrw listing::

    <C-l>

sort case insensitive::

    :sort i


format json::

    :%!python -m json.tool

format js:
https://www.npmjs.com/package/prettier
::
    :%!prettier --single-quote

reformat for column layout::
    :%!column -t

reformat vim table for column layout::

    :%!column -t -s \& -o \&


vimscript
---------

Echo variable value::
    :echo g:SuperTabDefaultCompletionType



performance profiling
---------------------
http://stackoverflow.com/a/12216578/1337474
::
    :profile start profile.log
    :profile func *
    :profile file *
    " At this point do slow actions
    :profile pause
    :noautocmd qall!

http://stackoverflow.com/a/1702904/1337474
::
    vim --startuptime vim.log


Find duplicate autocommand handlers:
http://stackoverflow.com/a/19031285/1337474
e.g.::
    :au CursorMoved

Mathparen slows down:
http://vi.stackexchange.com/a/5318/6303
::
    let g:matchparen_timeout = 20
    let g:matchparen_insert_timeout = 20



General tips
------------

- Open binary files in external browser
http://stackoverflow.com/questions/7810845/how-to-open-pdf-files-under-cursor-using-gf-with-external-pdf-readers-in-vim
::
    au BufReadCmd *.pdf silent !gnome-open % &



