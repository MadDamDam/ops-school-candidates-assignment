#!/bin/bash
#add fix to exercise5-server1 here

echo 'Host server?' | sudo tee --append /etc/ssh/ssh_config > /dev/null
echo '    StrictHostKeyChecking no' | sudo tee --append /etc/ssh/ssh_config > /dev/null
echo '    UserKnownHostsFile=/dev/null' | sudo tee --append /etc/ssh/ssh_config > /dev/null

# server2 already has public key defined
#sudo su - vagrant -c "ssh-keygen -t rsa -N '' -f /home/vagrant/.ssh/id_rsa"
sudo apt-get --assume-yes install sshpass
sshpass -p 'vagrant' ssh-copy-id vagrant@server2
