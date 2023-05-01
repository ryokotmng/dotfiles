#!/bin/sh

function repo() {
  if [ $# -eq 0 ]; then
    tmp=`pwd`
  else
    tmp=$1
  fi
  (
    cd $tmp
    url=$(git remote -v | head -n 1 | awk '{
      gsub("git@github.com:", "https://github.com/", $2)
      print substr($2, 1, length($2) - 4)
    }')
    current_branch=$(git rev-parse --abbrev-ref HEAD)
    full_url="${url}/tree/${current_branch}"
    open "${full_url}"
  )
}

repo
