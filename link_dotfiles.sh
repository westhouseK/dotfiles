#!/bin/sh

# ---------------------------------
# dotfilesのシンボリックリンクを張るshell
# 実行方法 sh link_dotfiles.sh
# ---------------------------------

ln -sf ~/dotfiles/.bash_profile ~/.bash_profile
ln -sf ~/dotfiles/.bashrc ~/.bashrc
ln -sf ~/dotfiles/.bashrc_private ~/.bashrc_private