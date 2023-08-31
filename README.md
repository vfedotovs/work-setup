# work-setup

What is required:   
- [ ] Script to install sofware(nvim, zsh, tmux, chrome etc).   
- [x] Script to restore chrome bookmarks.    
- [ ] Script to download and import tmux conf.    
- [ ] Script to download and import zsh_rc conf.    
- [ ] Script to download and import nvim conf.  
- [ ] Backup and restore dot files.  
- [ ] Script to backup and restore data.  
- [ ] Steps to setup and import pass data.  
- [ ] Add makefile to run scripts.  
- [ ] Dockerfile to setup container for restore tests and script development.  

Test scripts in ubuntu docker manually:      

docker pull ubuntu:23.10.  
docker run -ti --rm ubuntu /bin/bash.  
apt update && apt install lsb-core.  


Save the state of the container by running the following command:   
docker commit -p container_id new_container_name.   


## Manual Windows WSL setup steps   

### Install wsl  (Reboot of windows needed) 
```bash
wsl --install   # reboot PC
wsl --list --online   
wsl --install -d Ubuntu-22.04
```

### Install zsh
---------------
```bash
sudo apt-get install zsh
```

### Change shell to zsh
---------------------
```bash
sudo sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
chsh -s /bin/zsh  # Switch shell to zsh permananttly
```


### Install zsh auto compltes complete (Work in progress)
---------------
https://gist.github.com/n1snt/454b879b8f0b7995740ae04c5fb5b7df

### Install fuzzy finder (work in progress)
-------------------
explore keybindings
https://bytexd.com/how-to-use-fzf-command-line-fuzzy-finder/?utm_content=cmp-true

### Mein 3 default key bindings   
CTRL + t - search for files and folders to STDOUT in current dir fuzzy way   
CTRL + r - search zshell history fuzzy way   
ALT + c - search for folder name and cd in to that in fuzzy way   



#### How to import zshrc config file (aliases) and zsh functions (Work in progress) 
---------------------------------------------------------
Main problem how to quickly import aliases and functions   


### How to set up passweordless authentification to linux server
-----------------------------------
https://www.linuxbabe.com/linux-server/setup-passwordless-ssh-login


### Set up tmux  
---------------
```bash
mkdir -p ~/work-tools  && cd ~/work-tools    
git clone https://github.com/vfedotovs/tools.git .    
cp tmux.conf ~/.tmux.conf   
tmux source-file ~/.tmux.conf   
```

### Lounch tmux and install plugins   
------------------------------------   
```bash  
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm   # Before install tmux plugins clone repo
```

### Tmux Plugin installation step   
----------------------------------  
```bash
tmux   
C-a + i  # This stelp will install tmux pluggins   
```
