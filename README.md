# dotfiles
default configurations

## installation
1. install and dotfiles using the `install-dotfiles.sh`

        curl https://gist.githubusercontent.com/lbjeffli/<???>/raw/<???>/install-dotfiles.sh

    note: fill in the appropriate `<???>s`
2. reload `.bashrc`

        source ~/.bashrc

3. install [Vundle](https://github.com/VundleVim/Vundle.vim)

        git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
        vim +PluginInstall +qall

4. install other personal stuff like gpg and ssh keys