#!/bin/zsh
if [[ ! -e $HOME/.tmux.conf ]]; then
  ln -s ~/tmux.conf ~/.tmux.conf

  case "$(uname)" in
    "Linux" )
      ln -s $PWD/tmux.conf.linux ~/.tmux.conf.linux;;
    "Darwin")
      ln -s $PWD/tmux.conf.mac ~/.tmux.conf.mac;;
  esac
fi
