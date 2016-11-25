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
