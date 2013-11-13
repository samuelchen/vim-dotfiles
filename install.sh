#!/usr/bin/env sh

# backup existed vim files
if [ -f "$HOME/.vimrc" ]; then
  mv "$HOME/.vimrc" "$HOME/.vimrc.bak"
fi

if [ -d "$HOME/.vim" ]; then
  mv "$HOME/.vim" "$HOME/.vim.bak"
fi

if [ ! -d "$PWD/_vim" ]; then
  mkdir "$PWD/_vim"
fi

mkdir "$PWD/_vim/bundle"
ln -s "$PWD/vundle" "$PWD/_vim/bundle/vundle"

ln -s "$PWD/_vimrc" "$HOME/.vimrc"
ln -s "$PWD/_vim" "$HOME/.vim"

