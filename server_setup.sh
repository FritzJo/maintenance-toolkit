username=""
password=""

# update system
sudo apt update && sudo apt upgrade -y 
sudo apt autoremove -y

# create user 
sudo useradd -g users -d /home/$username -s /bin/bash -p $(echo $password| openssl passwd -1 -stdin) $username

# install management tool
sudo apt install cockpit cockpit-docker

# install docker
sudo apt-get remove docker docker-engine docker.io containerd runc
sudo apt-get install \
    apt-transport-https \
    ca-certificates \
    curl \
    gnupg-agent \
    software-properties-common -y
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
sudo add-apt-repository \
   "deb [arch=amd64] https://download.docker.com/linux/ubuntu \
   $(lsb_release -cs) \
   stable"
sudo apt-get install docker-ce docker-ce-cli containerd.io docker-compose -y

# install and configure ufw
sudo ufw allow 22
sudo ufw allow 9090
sudo ufw allow 80
sudo ufw allow 443
sudo ufw enable
