#!/bin/bash

#mkdir script_test
#cd script_test
#touch test_file.js
apt update
apt-get install network-manager-vpnc-gnome
cat > /etc/vpnc/blynch.conf << EOL
IPSec gateway gp.ndi.org
IPSec ID NDIVPN
IPSec secret d3fW6ht0yQmhvb8bG7Y
Xauth username blynch
Xauth password Lgafad95141342.
EOL

cd ~/
mkdir initial_install_files
cd initial_install_files
#install chrome
wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
dpkg -i google-chrome-stable_current_amd64.deb

#virtual box
wget "https://download.virtualbox.org/virtualbox/6.0.0/virtualbox-6.0_6.0.0-127566~Ubuntu~bionic_amd64.deb"
apt install ./virtualbox-6.0_6.0.0-127566~Ubuntu~bionic_amd64.deb

#vagrant
wget "https://releases.hashicorp.com/vagrant/2.2.2/vagrant_2.2.2_linux_amd64.zip"
#unzip vagrant_2.2.2_linux_amd64.zip
#./vagrant
apt install vagrant -y

#create ssh keys
#mkdir ~/.ssh
#cd ~/.ssh
#ssh-keygen -t rsa
#cd ~/initial_install_files

#node and npm
wget "https://nodejs.org/dist/v10.16.0/node-v10.16.0-linux-x64.tar.xz"
sudo tar xf node-v10.16.0-linux-x64.tar.xz --directory /usr/local --strip-components 1

#vim
apt install -y vim

#yum
apt install -y yum

#install yarn
curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | sudo apt-key add -
echo "deb https://dl.yarnpkg.com/debian/ stable main" | sudo tee /etc/apt/sources.list.d/yarn.list
apt install yarn -y

#install cpanm for installing perl modules
cpan App::cpanminus

#install docker
apt-get install \
    apt-transport-https \
    ca-certificates \
    curl \
    software-properties-common -y
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
apt-key fingerprint 0EBFCD88
add-apt-repository \
   "deb [arch=amd64] https://download.docker.com/linux/ubuntu \
   $(lsb_release -cs) \
   stable"
apt-get install docker-ce -y
docker run hello-world
apt install docker-compose -y

#git
apt install git -y


#install pip
apt install python-pip -y

#install conda
wget "https://repo.anaconda.com/archive/Anaconda3-5.3.1-Linux-x86_64.sh"
wget "https://repo.anaconda.com/archive/Anaconda2-5.3.1-Linux-x86_64.sh"
bash Anaconda2-5.3.1-Linux-x86_64.sh
bash Anaconda3-5.3.1-Linux-x86_64.sh


#add line to unzip tar of old files and move them to home



apt update
apt upgrade
