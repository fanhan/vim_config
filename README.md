this is my vim config file, part of this from spf13

**some plugins need ruby or python support, and you'd better install ctags**

**Powerline**'s fancy symbols need special fonts, if you do not have one, you may want to delete or comment `let g:Powerline_symbols = 'fancy'` in this `.vimrc` file, for more details, go to [Powerline](https://github.com/Lokaltog/vim-powerline).


###how to install

you can just download install.sh, then

    chmod +x install.sh
    ./install.sh

or you can do it yourself

backup old config

    mv .vimrc .vimrc_bak
    mv .vim .vim_bak

get this

    cd
    git clone git://github.com/nirocfz/vim_config.git .vim_config
    ln -sfn .vim_config/.vim .
    ln -sfn .vim_config/.vimrc .

then install vundle

    git clone https://github.com/gmarik/vundle.git ~/.vim/bundle/vundle

last step

    vim +BundleInstall +qall

wait for it...
