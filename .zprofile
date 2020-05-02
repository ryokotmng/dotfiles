export PATH=/usr/local/bin:$PATH
export PATH=/usr/local:$PATH

# neovim用
export XDG_CONFIG_HOME=~/.config
export XDG_CACHE_HOME=~/.cache

# Go用
export GOPATH=~/go
export PATH=$PATH:$GOPATH/bin
export GOBIN=$GOPATH/bin
export GO111MODULE=on

# Ruby用
export PATH=$HOME/.rbenv/shims:$PATH

source ~/.zshrc

export PATH="$HOME/.cargo/bin:$PATH"

# mysql用
export LDFLAGS="-L/usr/local/opt/mysql@5.7/lib"
export CPPFLAGS="-I/usr/local/opt/mysql@5.7/include"
export PATH="/usr/local/opt/mysql@5.7/bin:$PATH"

# Python用
export PYENV_ROOT="$HOME/.pyenv"
export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init -)"
