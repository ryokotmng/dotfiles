#!/bin/zsh

echo "Setup start!"

brew install lazygit
brew install tree
brew install fzf
brew install pyenv && brew install pyenv-virtualenv
brew install neovim
brew install asdf
brew install ffmpeg
git clone git@github.com:rupa/z.git ~/z
sh ~/dotfiles/vim/install.sh

echo "Setup complete!"
