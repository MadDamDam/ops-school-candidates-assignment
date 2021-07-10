#!/bin/bash
#add fix to exercise5-server1 here

echo 'Host server?' | sudo tee --append /etc/ssh/ssh_config > /dev/null
echo '    StrictHostKeyChecking no' | sudo tee --append /etc/ssh/ssh_config > /dev/null
echo '    UserKnownHostsFile=/dev/null' | sudo tee --append /etc/ssh/ssh_config > /dev/null

# server2 already has public key defined
mv /vagrant/id_rsa* /home/vagrant/.ssh/
chmod 600 /home/vagrant/.ssh/id_rsa*
cat /home/vagrant/.ssh/id_rsa.pub >> /home/vagrant/.ssh/authorized_keys

