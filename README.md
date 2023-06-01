# work-setup

What is required:
[ ] Script to install sofware(nvim, zsh, tmux, chrome etc)
[x] Script to restore chrome bookmarks
[ ] Script to download and import tmux conf
[ ] Script to download and import zsh_rc conf
[ ] Script to download and import nvim conf
[ ] Backup and restore dot files
[ ] Script to backup and restore data
[ ] Steps to setup and import pass data
[ ] Add makefile to run scripts


[ ] Dockerfile to setup container for restore tests and script development

Test scripts in ubuntu docker manually:

docker pull ubuntu:23.10
docker run -ti --rm ubuntu /bin/bash
apt update && apt install lsb-core


Save the state of the container by running the following command:
docker commit -p container_id new_container_name
