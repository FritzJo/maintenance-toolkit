# maintenance-toolkit
A collection of simple scripts to automate maintenance tasks

- [update_docker.sh](#update-dockersh)
  * [Description](#description)
  * [Supported operating systems](#supported-operating-systems)
  * [How-To](#how-to)
- [workstation_setup.sh](#workstation-setupsh)
  * [Description](#description-1)
  * [Supported operating systems](#supported-operating-systems-1)
  * [How-To](#how-to-1)

# Details
## update_docker.sh
### Description
This script starts an update of the operating system and pulls the newest docker image for every image, that is currently in use. It also restarts every docker-compose.yml to use the new image.
### Supported operating systems
* Ubuntu
### How-To
For the script to work, a special folder structure is required:
```
+-- dockerapp1
|   +-- docker-compose.yml
|   +-- ...
+-- dockerapp2
|   +-- docker-compose.yml
|   +-- ...
+-- dockerapp3
|   +-- docker-compose.yml
|   +-- ...
+-- ...
```
The top-level directory of these "dockerapp" folders has to be inserted in the $DOCKERPATH variable inside the script.

## workstation_setup.sh
### Description
Very basic script to install the most important tools on a linux workstation.

Currently the script installs:
* vim
* tmux
* git
* tree
* htop
* curl
* zsh
* ranger

### Supported operating systems
* Ubuntu
### How-To
Just execute the script with:
```bash
./workstation_setup.sh
```
