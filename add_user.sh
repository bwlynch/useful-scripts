#!/usr/bin/env bash

#This script is quick way to add a user to a server. To use it, copy it onto a server, make sure it is executable (by running chmod +x add_user.sh). To run the script, enter `./add_user.sh *name-of-the-user-you-want-to-create*` - For example: ./add_user ansible will create an account named ansible. This will create the account and give access for the user to become root. After running this script, edit /home/name-of-user/.ssh/authorized_keys and add the public key of the user that you want to have access to the box

mkdir -p /home/${1}/.ssh
touch /home/${1}/.ssh/authorized_keys
useradd -d /home/${1} ${1}
usermod -aG sudo ${1}
chown -R ${1}:${1} /home/${1}/
chmod 700 /home/${1}/.ssh
chmod 600 /home/${1}/.ssh/authorized_keys

cat > /etc/sudoers.d/${1} << EOL
# User rules for ubuntu
${1} ALL=(ALL) NOPASSWD:ALL
EOL

