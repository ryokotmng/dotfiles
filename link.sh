#!/bin/zsh

set -u
DOT_DIRECTORY="${HOME}/dotfiles"
DOT_CONFIG_DIRECTORY=".config"

echo "link home directory dotfiles"
cd ${DOT_DIRECTORY}
for f in .??*
do
    # 無視したいファイルやディレクトリ
    [ "$f" = ".git" ] && continue
    [ "$f" = ".config" ] && continue
    ln -snfv ${DOT_DIRECTORY}/${f} ${HOME}/${f}
done

echo "ln -sf ~/dotfiles/vim/vimrc ~/.config/nvim/init.vim"
echo "ln -sf ~/dotfiles/vim/vimrc ~/.vimrc"
echo "linked dotfiles complete!"
