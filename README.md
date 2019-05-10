# Ryoko's dotfiles
## Installation
### Getting Started
Recommended prerequisites
- Oh my zsh
  - change shell to zsh after installation
- Homebrew (visit website to find how to install)
- tig and tree (using brew install)
- rbenv
```
$ brew install rbenv
```
- Python and pip
```
$ brew install python3
$ sudo easy_install pip
```
- Git cli tool
```
$ brew install git
$ git config --global user.name "USER_NAME"
$ git config --global user.email email@example.com
$ git config --global tag.sort version:refname
```

Clone dotfiles by using git.
```
$ git clone https://github.com/ryokotmng/dotfiles.git
```

## Install Plugins
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

fugitive
under ~/dotfiles/.vim/bundler
```
git clone https://github.com/tpope/vim-fugitive.git
```

syntax highlight for Vyper
```
$ curl https://raw.githubusercontent.com/jacqueswww/vim-vyper/master/install.sh | sh
```

instant-markdown-d
```
$ gem install redcarpet pygments.rb
$ npm -g install instant-markdown-d
```
hub
```
$ brew install hub
```
