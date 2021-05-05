Coc
---

:CocConfig
:CocUpdate

:CocInstall EXTENSION[@VERSION]
:CocUninstall EXTENSION

:CocList extensions


vim make list of numbers
------------------------
https://vim.fandom.com/wiki/Making_a_list_of_numbers
https://vim.fandom.com/wiki/Generating_a_column_of_increasing_numbers
::
    :put +range(3,11)


vim column insert
-----------------
https://stackoverflow.com/questions/13701506/vim-quick-column-insert
::
    :vnoremap <C-Space> I<Space><Esc>gv
    :vnoremap <C-S-Space> A<Space><Esc>gv


vim toggle auto preview
-----------------------
::
    set completeopt-=preview
    set completeopt+=preview


vim variables
-------------
https://stackoverflow.com/questions/9193066/how-do-i-inspect-vim-variables
::
    :echo g:SuperTabDefaultCompletionType


vim registers
-------------

https://www.brianstorti.com/vim-registers/
https://www.tutorialspoint.com/vim/vim_registers.htm


Open all last git - edited files in vim
---------------------------------------
https://logc.github.io/blog/2015/07/15/open-files-from-last-commit-in-vim/

$ git log --pretty=format: --name-only -n 1
$ vim $(git lastedited)



Save as root
------------
::
    :w !sudo tee %


Motions
-------

Select inside tags::
    vit

Select around tags::
    vat

Delete/Cut inside tags::
    dit

Delete/Cut around tags::
    dat


Temporarily deactivate auto commands when saving
------------------------------------------------
https://stackoverflow.com/a/41258575/1337474
::
    :noa w




Check installation
------------------
::
    :checkhealth


Search for multiple words
-------------------------
https://stackoverflow.com/questions/41007769/how-to-search-for-multiple-strings-in-a-vi-editor-on-solaris

SEARCHTERM|SEARCHTERM2


Search for all occurrences also within a line
----------------------------------------------
https://stackoverflow.com/questions/5581886/vim-global-replace-line

set gdefault OR %s/SEARCH/REPLACE/g


copy yanked text to command prompt
----------------------------------

https://stackoverflow.com/questions/906535/how-to-copy-yanked-text-to-vi-command-prompt

<ctrl-r>*  - system clipboard
<ctrl-r>"



show last comand
----------------
https://stackoverflow.com/questions/8928070/vim-show-my-last-command-command
: + arrow-up


multiple search/replace in one line
-----------------------------------

https://stackoverflow.com/questions/4737099/multiple-search-and-replace-in-one-line



:%s/SEARCH/REPLACE/e

retab
-----

tabs to spaces: ``set et|retab``  (expandtab, retab)
spaces to tabs: ``set noet|retab!`` (noexpandtab, retab)

.. ATTENTION: these changes all whitespace, even those between non-whitespace characters to spaces resp. tabs.

For an alternative, see: http://vim.wikia.com/wiki/Super_retab


search/replace
--------------

``cw`` or ``cgn``



http://vimcasts.org/episodes/operating-on-search-matches-using-gn/

``cgn``: search for next word, select the next match and start insert mode. repeat with ``.``


vim colors
----------
https://codeyarns.com/2011/07/29/vim-chart-of-color-names/


spell correction
----------------
https://stackoverflow.com/questions/640351/how-can-i-spellcheck-in-gvim#640362

::
    :setlocal spell spelllang=en_us
    :set spell

For spell checker and to activate right button on mouse::

    :set mousemodel=popup


::
    :help spell

    To search for the next misspelled word:

    ]s           Move to next misspelled word after the cursor.
                 A count before the command can be used to repeat.
                 'wrapscan' applies.

    [s           Like "]s" but search backwards, find the misspelled
                 word before the cursor.

    Finding suggestions for bad words:

    z=           For the word under/after the cursor, suggest correctly
                 spelled words.

    To add words to your own word list:

    zg           Add word under the cursor as a good word


jump end of file
----------------
::
    :$

count pattern
-------------
:%s/PATTERN//gn


Save / Load a session
---------------------
https://bocoup.com/blog/sessions-the-vim-feature-you-probably-arent-using

Save a session with ``mks`` or ``mksession``::
    :mks SESSIONFILE.vim

Load a session by sourcing that file::
    :source SESSIONFILE.vim

Or:
    $ vim -S SESSIONFILE.vim

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


::
    :set wrap
    :set nowrap

