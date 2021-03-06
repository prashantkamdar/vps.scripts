#!/bin/bash
#easy conenct to vps server

option=$1

re='^[0-9]+$'
if [[ $option =~ $re ]] ; then
   if [ $option -eq 1 ]
   then
      echo "Now connecting to VirMach 107.172.193.177 - 866MB/10GB/250GB"
      ssh root@107.172.193.177
      exit 1
   elif [ $option -eq 2 ]
   then
      echo "Now connecting to VirMach 107.173.51.44 - 512MB/15GB/1TB"
      ssh root@107.173.51.44
      exit 1
   elif [ $option -eq 3 ]
   then
      echo "Now connecting to VirMach 172.245.228.110 - 384MB/5GB/500GB"
      ssh root@172.245.228.110
      exit 1
   elif [ $option -eq 4 ]
   then
      echo "Now connecting to VirMach 23.95.234.100 - 384MB/5GB/100GB"
      ssh root@23.95.234.100
      exit 1
   elif [ $option -eq 5 ]
   then
      echo "Now connecting to RackNerd 107.174.240.162 - 1.5GB/20GB/6TB"
      ssh root@107.174.240.162
      exit
   fi
fi

clear

echo -e "1. VirMach 107.172.193.177  - 866MB/10GB/250GB"
echo -e "2. VirMach 107.173.51.44    - 512MB/15GB/1TB"
echo -e "3. VirMach 172.245.228.110  - 384MB/5GB/500GB"
echo -e "4. VirMach 23.95.234.100    - 384MB/5GB/100GB"
echo -e "5. RackNerd 107.174.240.162 - 1.5GB/20GB/6TB"
echo

read -p "Which server do you want to connect to? (5): " option
option=${option:-5}

echo

re='^[0-9]+$'
if ! [[ $option =~ $re ]] ; then
   echo "Input was not a number, please try again." >&2; echo; exit 1
fi

if [ $option -eq 1 ]
then
   echo "Now connecting to VirMach 107.172.193.177 - 866MB/10GB/250GB"
   ssh root@107.172.193.177
elif [ $option -eq 2 ]
then
   echo "Now connecting to VirMach 107.173.51.44 - 512MB/15GB/1TB"
   ssh root@107.173.51.44
elif [ $option -eq 3 ]
then
   echo "Now connecting to VirMach 172.245.228.110 - 384MB/5GB/500GB"
   ssh root@172.245.228.110
elif [ $option -eq 4 ]
then
   echo "Now connecting to VirMach 23.95.234.100 - 384MB/5GB/100GB"
   ssh root@23.95.234.100
elif [ $option -eq 5 ]
then
   echo "Now connecting to RackNerd 107.174.240.162 - 1.5GB/20GB/6TB"
   ssh root@107.174.240.162
else
   echo "No such server!"
fi
