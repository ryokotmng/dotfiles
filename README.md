# Ryoko's dotfiles
## Installation
### Getting Started
Recommended prerequisites
- Oh my zsh
  - change shell to zsh after installation
- Homebrew (visit website to find how to install)
- Git tools
```
$ brew install git
$ git config --global user.name "USER_NAME"
$ git config --global user.email email@example.com
$ git config --global tag.sort version:refname
```

Clone dotfiles by using git.
```
$ cd && git clone https://github.com/ryokotmng/dotfiles.git
$ sh dotfiles/setup.sh
```

##### dein
Under ~/dotfiles
To install dein, see [Github page](https://github.com/Shougo/dein.vim).
Dein automatically install plugins when vim starts.

If dein doesn't work properly, open vim and install dein
```
:call dein#install()
```

### Install neovim
Python2 and Python3 needed.
```
$ mkdir ~/.config/nvim
see [this](https://qiita.com/yuku_t/items/6db331e7084f88b43fe4) for Python setup.
$ brew install pyenv-virtualenv
$ brew install pyenv && pyenv install 2.7.13
$ pyenv virtualenv 2.7.13 neovim-2
$ brew install neovim
```
Create fle link to use neovim
```
$ ln -sf ~/dotfiles/vim/vimrc ~/.config/nvim/init.vim
```
Please check ':CheckHealth' if something wrong.

## Install Other Plugins

### fugitive
under ~/dotfiles/.vim/bundler
```
git clone https://github.com/tpope/vim-fugitive.git
```

### rupa/z
Need git clone to ~/.vim
- rupa/z

others
```
$ brew install hub
$ brew install tree
$ brew install fzf
$ brew install tig
$ brew install --HEAD universal-ctags
$ brew install the_silver_searcher
$ gem install redcarpet pygments.rb
$ npm -g install instant-markdown-d
```

