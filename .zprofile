export PATH=/usr/local/bin:$PATH
export PATH=/usr/local:$PATH

# Go用
export GOPATH=~/go
export PATH=$PATH:$GOPATH/bin
export GOBIN=$GOPATH/bin

# Ruby用
export PATH=$HOME/.rbenv/shims:$PATH

source ~/.zshrc

export PATH="$HOME/.cargo/bin:$PATH"

#mysql用
export LDFLAGS="-L/usr/local/opt/mysql@5.7/lib"
export CPPFLAGS="-I/usr/local/opt/mysql@5.7/include"
export PATH="/usr/local/opt/mysql@5.7/bin:$PATH"
