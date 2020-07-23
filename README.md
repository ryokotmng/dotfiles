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
$ brew install lazygit
```

Clone dotfiles by using git.
```
$ git clone https://github.com/ryokotmng/dotfiles.git
```

## Install Plugins

fugitive
under ~/dotfiles/.vim/bundler
```
git clone https://github.com/tpope/vim-fugitive.git
```

others
```
$ brew install hub
$ brew install neovim
$ brew install tree
$ brew install fzf
$ brew install tig
$ brew install --HEAD universal-ctags
$ brew install the_silver_searcher
$ gem install redcarpet pygments.rb
$ npm -g install instant-markdown-d
```
Create fle link to use neovim
```
$ ln -sf ~/dotfiles/vim/vimrc ~/.config/nvim/init.vim
```
neovim may require to install itself in some languages, please check ':CheckHealth'.

Need git clone to ~/.vim
- rupa/z

##### dein
Under ~/dotfiles
Create linked dotfiles in home directory.
```
$ sh link.sh
```
dein
```
$ sh ./installer.sh ~/.cache/dein
```
Then Dein automatically install plugins when vim starts.

If dein doesn't work properly, open vim and install dein
```
:call dein#install()
```
