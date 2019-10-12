thet's vim configuration
========================

Bootstrap plugin system
-----------------------

Provided, you have you vim configuration in ``~/.vim``, do::

    curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
        https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

Then::

    vim +PlugInstall


Language Server Integration
---------------------------

In your buildour.cfg, set::

  [buildout]
  parts =
    pyls

  [pyls]
  recipe = zc.recipe.egg
  eggs =
      ${robot:eggs}
      python-language-server
      pyls-black
      pyls-isort
      autopep8
      mccabe
      pycodestyle
      pydocstyle
      pyflakes
      pylint
      rope
      yapf

In your vim config, set (for LanguageClient-neovim)::

    let g:LanguageClient_serverCommands = {
      \ 'python': ['/PATH/TO/YOUR/BUILDOUT/bin/pyls'],
    \ }


Add the local ./bin directory to the PATH - this way pyls is found if you start nvim in the buildout-root directory::
  export PATH=./bin:$PATH


Collaborative editing
---------------------
To try out:

https://github.com/fanyun-sun/CoVim
https://github.com/FredKSchott/CoVim
https://github.com/Floobits/floobits-neovim
https://github.com/typeintandem/tandem
https://github.com/typeintandem/nvim
https://teletype.atom.io/
https://github.com/atom/teletype
https://github.com/atom/teletype-client
https://github.com/atom/teletype-server
https://www.emacswiki.org/emacs/CollaborativeEditing


External tools / 2
------------------

https://github.com/prettier/prettier
https://prettier.io/
https://github.com/w0rp/ale
https://github.com/vuejs/vetur/tree/master/server
https://github.com/prettier/prettier-eslint
https://github.com/prettier/eslint-plugin-prettier
https://eslint.org/docs/user-guide/configuring
https://htmlhint.io/
https://github.com/htmlhint/HTMLHint
https://github.com/maralla/completor.vim

https://pipenv.readthedocs.io/en/latest/basics/
https://github.com/pypa/pipenv
https://github.com/pyenv/pyenv
https://github.com/pypa/pipenv/issues/3241


https://github.com/davidhalter/jedi
https://github.com/palantir/python-language-server
  https://github.com/rupert/pyls-black
  https://github.com/paradoxxxzero/pyls-isort

https://github.com/mads-hartmann/bash-language-server
https://github.com/rcjsuen/dockerfile-language-server-nodejs
https://github.com/sourcegraph/javascript-typescript-langserver
https://github.com/vscode-langservers/vscode-css-languageserver-bin



https://github.com/felixfbecker/php-language-server
::
  composer require felixfbecker/language-server



External tools
--------------

I personally do not install these node modules globally with the ``-g`` option but instead have them in my ``~/node_modules/``.
I have all node modules which I regulary need to use in my systems ``PATH``.

Node modules used by this vim configuration::

    npm install eslint
    npm install babel-eslint
    npm install eslint-plugin-react
    npm install js-beautify
    npm install csscomb
    npm install cssbrush
    npm install html-beautify

.. note:: The following is outdated and not checked for validity.


DOTFILES-VIM
============


Setting up the system
---------------------

Ubuntu (tested with: 10.10)::

    % sudo apt-add-repository ppa:passy/vim
    % sudo add-apt-repository ppa:jerome-etienne/neoip
    % sudo apt-get update
    % sudo apt-get install vim git-core ruby-dev rake ack-grep nodejs

Initial install of `.vim` folder
--------------------------------

::

    cd ~
    git clone git@github.com:garbas/dotfiles-vim.git .vim
    ln -s .vim/config-XYZ .vimrc
    cd .vim
    git submodule update --init


Maintainance
-----------

::

  % git pull
  % git submodule update --init
  % cd addons/Command-T
  % rake make


In vim, run :UpdateAddons from time to time.

Find more information about vam here:
https://github.com/MarcWeber/vim-addon-manager/blob/master/doc/vim-addon-manager.txt

build `command-t` bundle (this you have to do each time you upgrade command-t
bundle)::

