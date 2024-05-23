#!/usr/bin/bash

# do not actually execute this script
exit 0

cd $HOME

# nvim install by my script
./nvim_install.sh
# use snap to install
sudo snap install --beta nvim --classic # stable

# LazyVim dependencies
sudo apt-get install ripgrep fd-find

# lazygit(https://github.com/jesseduffield/lazygit)
LAZYGIT_VERSION=$(curl -s "https://api.github.com/repos/jesseduffield/lazygit/releases/latest" | grep -Po '"tag_name": "v\K[^"]*')
curl -Lo lazygit.tar.gz "https://github.com/jesseduffield/lazygit/releases/latest/download/lazygit_${LAZYGIT_VERSION}_Linux_x86_64.tar.gz"
tar xf lazygit.tar.gz lazygit
install lazygit $HOME/.local/bin

# node is optional but neccessary for some lsp servers like pyright

# recommend fnm(https://github.com/Schniz/fnm) to manage node
curl -fsSL https://fnm.vercel.app/install | bash  # install
curl -fsSL https://fnm.vercel.app/install | bash --skip-shell # upgrade

# use .node-version
# change
eval "`fnm env`"
# to 
eval "`fnm env --use-on-cd`"
# in ~/.bashrc

# bash cmp
mkdir -p $HOME/.local/share/bash-completion/completions
fnm completions --shell bash > $HOME/.local/share/bash-completion/completions/fnm

# set mirror
echo "export FNM_NODE_DIST_MIRROR=https://mirrors.tuna.tsinghua.edu.cn/nodejs-release/" >> $HOME/.bashrc

# then install or use
fnm install --lts
fnm use v20.13.1


# another alternative, install node use nvm(https://github.com/nvm-sh/nvm)
# e.g. nvm v0.39.7
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.7/install.sh | bash
# install node
nvm install --reinstall-packages-from=node node     # latest version of node
nvm install --reinstall-packages-from=current --lts # recommend, latest version of lts
# use node
nvm use node
nvm use --lts

# python3 and pip3 is also needed for some lsp servers
# Linux distributions always install them

# cargo maybe needed by mason.nvim too
curl https://sh.rustup.rs -sSf | sh
