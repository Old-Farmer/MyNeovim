#!/usr/bin/bash

cd $HOME

# nvim install
./nvim_install.sh

# LazyVim dependencies
sudo apt-get install ripgrep fd-find

# lazygit
LAZYGIT_VERSION=$(curl -s "https://api.github.com/repos/jesseduffield/lazygit/releases/latest" | grep -Po '"tag_name": "v\K[^"]*')
curl -Lo lazygit.tar.gz "https://github.com/jesseduffield/lazygit/releases/latest/download/lazygit_${LAZYGIT_VERSION}_Linux_x86_64.tar.gz"
tar xf lazygit.tar.gz lazygit
install lazygit $HOME/.local/bin

# node is optional but neccessary for some lsp server like pyright
# Install node use nvm https://github.com/nvm-sh/nvm
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.7/install.sh | bash
# nvm install --reinstall-packages-from=node --latest-npm node
