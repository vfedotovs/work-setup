#!/bin/bash

# Update package list
sudo apt update -y

sudo apt install wget -y
wget --version | grep GNU

# nvim 0.9 install
mkdir -p ~/.local/bin/
wget https://github.com/neovim/neovim/releases/download/stable/nvim-linux64.tar.gz /tmp

cp /tmp/nvim-linux64.tar.gz ~/.local/bin/
cd ~/.local/bin/ || {
	echo "Error could not cd ~/.local/bin/"
	exit 1
}
tar xzvf nvim-linux64.tar.gz

ln -s ./nvim-linux64/bin/nvim ./nvim
export PATH="$HOME/.local/bin:$PATH"

nvim --version

# Install packages
# ripgrep required for nvim to search files and grep text
sudo apt install zsh tmux fzf ripgrep -y

echo "NVIM, Zsh, tmux  installed successfully."

# Tmux config import
mkdir -p ~/work-tools && cd ~/work-tools
git clone https://github.com/vfedotovs/tools.git .
cp tmux.conf ~/.tmux.conf
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm # Before install tmux plugins clone repo
tmux source-file ~/.tmux.conf

echo "To install tmux plugins: tmux and C-a + i  # This step will install tmux pluggins"

# TODO:
# Add download config files for nvim, zsh, tmux
# Update the .zshrc file on the new PC (replace with your customizations)
# cp ~/zshrc_repo/.zshrc ~

# Apply the changes to the current terminal session
# source ~/.zshrc

echo "Zsh configuration has been updated and changes applied."
