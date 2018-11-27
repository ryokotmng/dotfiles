# Ryoko's dotfiles
## Installation
### Getting Started
Recommended prerequisites
- Oh my zsh
  - change shell to zsh after installation
- brew (visit website to find how to install)
- tig and tree (using brew install)
- Python and pip
```
$ brew install python3
$ sudo easy_install pip
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
Install dein.
```
$ sh ./installer.sh ~/.cache/dein
```
Then Dein automatically install plugins when vim starts.

If dein doesn't work properly, open vim and install dein
```
:call dein#install()
```

Install fugitive
under ~/dotfiles/.vim/bundler
```
git clone https://github.com/tpope/vim-fugitive.git
```

Install syntax highlight for Vyper
```
$ curl https://raw.githubusercontent.com/jacqueswww/vim-vyper/master/install.sh | sh
```

