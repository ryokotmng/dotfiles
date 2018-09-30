# Ryoko's dotfiles
## Installation
### Getting Started
Recommended prerequisites
- Oh my zsh

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
