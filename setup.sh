#!/bin/zsh

echo "Setup start!"
sh ~/dotfiles/vim/install.sh

# install Homebrew
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
# install oh-my-zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

# setup for neovim
brew install pyenv && brew install pyenv-virtualenv
brew install node
mkdir ~/.config/nvim
pyenv install 2.7.13
pyenv virtualenv 2.7.13 neovim-2
ln -sf ~/dotfiles/vim/vimrc ~/.config/nvim/init.vim

brew install git
brew install lazygit
brew install tree
brew install fzf
brew install neovim
brew install asdf
brew install ffmpeg
brew install gh
brew install direnv

git clone git@github.com:rupa/z.git ~/z

echo "Setup complete!"
