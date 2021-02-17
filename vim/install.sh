#!/bin/zsh
DOT_DIRECTORY="${HOME}/dotfiles"
DOT_CONFIG_DIRECTORY="${HOME}/.config"

if [[ ! -e $DOT_CONFIG_DIRECTORY ]]; then
  mkdir -p $DOT_CONFIG_DIRECTORY
fi

ln -snfv $DOT_DIRECTORY/zprofile $HOME/.zprofile
ln -snfv $DOT_DIRECTORY/zshrc $HOME/.zshrc
ln -snfv $DOT_DIRECTORY/tigrc $HOME/.tigrc
ln -snfv $DOT_DIRECTORY/vim/vimrc $DOT_CONFIG_DIRECTORY/nvim/init.vim
ln -snfv $DOT_DIRECTORY/vim/vimrc $HOME/.vimrc
ln -snfv $DOT_DIRECTORY/idea/ideavimrc $HOME/.ideavimrc

echo "linked .zshprofile and zshrc complete!"
