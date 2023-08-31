#!/bin/bash

# Update package list
sudo apt update

# Install Zsh
sudo apt install zsh git

echo "Zsh installed successfully."

# Clone the repository (change <repository_url> to your actual repository URL)
git clone <repository_url> ~/zshrc_repo

# Update the .zshrc file on the new PC (replace with your customizations)
cp ~/zshrc_repo/.zshrc ~

# Apply the changes to the current terminal session
source ~/.zshrc

echo "Zsh configuration has been updated and changes applied."
