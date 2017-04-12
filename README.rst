thet's vim configuration
========================

Bootstrap plugin system
-----------------------

Provided, you have you vim configuration in ``~/.vim``, do::

    curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
        https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

Then::

    vim +PlugInstall


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

