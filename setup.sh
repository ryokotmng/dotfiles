#!/bin/zsh

echo "Setup start!"

brew install pyenv && brew install pyenv-virtualenv
brew install node

brew install lazygit
brew install tree
brew install fzf
brew install neovim
brew install asdf
brew install ffmpeg
brew install gh
brew install direnv

git clone git@github.com:rupa/z.git ~/z
sh ~/dotfiles/vim/install.sh

echo "Setup complete!"
