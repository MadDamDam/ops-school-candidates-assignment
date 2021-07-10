#!/bin/bash
#add fix to exercise5-server1 here

echo 'Host server?' | sudo tee --append /etc/ssh/ssh_config > /dev/null
echo '    StrictHostKeyChecking no' | sudo tee --append /etc/ssh/ssh_config > /dev/null
echo '    UserKnownHostsFile=/dev/null' | sudo tee --append /etc/ssh/ssh_config > /dev/null

su - vagrant -c "ssh-keygen -t rsa -N '' -f /home/vagrant/.ssh/id_rsa"
cat /home/vagrant/.ssh/id_rsa.pub >> /home/vagrant/.ssh/authorized_keys
cp /home/vagrant/.ssh/id_rsa* /vagrant
