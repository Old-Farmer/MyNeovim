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

# node is optional but neccessary for some lsp servers like pyright
# Install node use nvm https://github.com/nvm-sh/nvm
# e.g. nvm v0.39.7
# curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.7/install.sh | bash
# install node
# nvm install --reinstall-packages-from=node node # latest version of node
# nvm install --reinstall-packages-from=current --lts # recommend, latest version of lts
# use node
# nvm use node
# nvm use --lts

# python3 and pip3 is also needed for some lsp servers
# Linux distributions always install them

# cargo maybe needed by mason.nvim too
# curl https://sh.rustup.rs -sSf | sh
