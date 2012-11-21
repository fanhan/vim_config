#!/usr/bin/env bash

cd
echo -e '\033[32mbackup original vim config\033[0m'
if [ -d "./.vim" ]
then
    mv .vim .vim_bak
fi
if [ -f "./.vimrc" ]
then
    mv .vimrc .vimrc_bak
fi

echo -e '\033[32mthen get mine\033[0m'
if [ -d "./.vim_config" ]
then
    rm -fr .vim_config_old
    mv -f .vim_config .vim_config_old
fi
git clone git://github.com/nirocfz/vim_config.git .vim_config
ln -sfn .vim_config/.vim .
ln -sfn .vim_config/.vimrc .

echo -e '\033[32minstall monaco for powerline, so you will see fancy symbol of powerline in vim\033[0m'
if [ -d ".vim_config/monaco" ]
then
    rm -fr .vim_config/monaco/*
else
    mkdir .vim_config/monaco
fi
git clone git://gist.github.com/1634235.git .vim_config/monaco
cp .vim_config/monaco/*.ttf ~/.fonts/
echo -e '\033[32mrefresh font cache...\033[0m'
fc-cache -f
rm -fr .vim_config/monaco

echo -e '\033[32minstall vundle\033[0m'
git clone https://github.com/gmarik/vundle.git ~/.vim/bundle/vundle

echo -e '\033[32minstall plugins using vundle\033[0m'
vim +BundleInstall +qall

echo -e '\033[32mOK, ALL DONE!\033[0m'
