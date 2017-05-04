# dotfiles
default configurations

## installation
1. install and dotfiles using the `install-dotfiles.sh`

        $ curl https://gist.githubusercontent.com/lbjeffli/fb9f830e4b9227dbea8267c095096181/raw | /bin/bash

2. reload `.bashrc`

        $ source ~/.bashrc

3. install [Vundle](https://github.com/VundleVim/Vundle.vim)

        $ git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
        $ vim +PluginInstall +qall

4. install other personal stuff like gpg and ssh keys

Note: step 2 and 3 can be carried out by running 
    
    $ bash .sciprt/init-install.sh
