git clone https://github.com/ilubnon/dotfiles.git /tmp/ilubnon_dotfiles --depth 1
cp /tmp/ilubnon_dotfiles/.* ~
rm -rf /tmp/ilubnon_dotfiles
vim +PlugInstall +qall
