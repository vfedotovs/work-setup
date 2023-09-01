#!/bin/bash

# Update package list
sudo apt update -y

# nvim 0.9 install 
mkdir -p ~/.local/bin/
wget wget https://github.com/neovim/neovim/releases/download/stable/nvim-linux64.tar.gz /tmp 

cp /tmp/nvim-linux64.tar.gz ~/.local/bin/
cd ~/.local/bin/
tar xzvf nvim-linux64.tar.gz

ln -s ./nvim-linux64/bin/nvim ./nvim
export PATH="$HOME/.local/bin:$PATH"

# Install zsh
sudo apt install zsh tmux -y

echo "NVIM, Zsh, tmux  installed successfully."

# Clone the repository (change <repository_url> to your actual repository URL)


# TODO:
# Add download config files for nvim, zsh, tmux 
# Update the .zshrc file on the new PC (replace with your customizations)
# cp ~/zshrc_repo/.zshrc ~

# Apply the changes to the current terminal session
# source ~/.zshrc

echo "Zsh configuration has been updated and changes applied."
