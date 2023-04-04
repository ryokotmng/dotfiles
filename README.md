# Ryoko's dotfiles
## Installation
### Getting Started
#### Recommended prerequisites
- Oh my zsh
  - change shell to zsh after installation

#### Required prerequisites
- Homebrew (visit website to find how to install)

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
$ pyenv install 2.7.13
$ pyenv virtualenv 2.7.13 neovim-2
```
Create fle link to use neovim
```
$ ln -sf ~/dotfiles/vim/vimrc ~/.config/nvim/init.vim
```
Please check ':CheckHealth' if something wrong.
