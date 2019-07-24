#!/bin/bash

if [ $# -lt 2 ]; then
  echo "Invalid number of parameters."
  echo "Usage: ./exercise6-fix.sh [source-file] [...] [dest-folder]" 
  exit 1
fi

array=${@:1:$#-1}
dest=${@: -1}

thisHost=$(hostname)
case $thisHost in 
"server1") thatHost="server2";;
"server2") thatHost="server1";;
esac

length=$(wc -c $array | tail -1 | awk {'print $1'})
scp -i /home/vagrant/.ssh/id_rsa $array vagrant@$thatHost:$dest
echo $length

