dotfiles
========

My dotfiles for easy access.

Installation
------------
**Installation will delete existing dotfiles in your home folder**

Run the following commands:

    git clone git@github.com:santialbo/dotfiles.git
    cd dotfiles
    make clean && make
    vim -c 'BundleInstall' -c 'q' -c 'q'
