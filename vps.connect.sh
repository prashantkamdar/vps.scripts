#!/bin/bash
#easy conenct to vps server

clear

echo -e "1. VirMach 107.173.51.44    - 512MB/15GB/1TB"
echo -e "2. VirMach 172.245.228.110  - 384MB/5GB/500GB"
echo -e "3. VirMach 23.95.234.100    - 384MB/5GB/100GB"
echo -e "4. RackNerd 107.174.240.162 - 1.5GB/20GB/6TB"
echo -e ""
printf "Which server do you want to connect to? (4): "

read -r option

echo -e ""

if [ $option -eq 1 ]
then
   echo "Now connecting to VirMach 107.173.51.44 - 512MB/15GB/1TB"
   ssh root@107.173.51.44
elif [ $option -eq 2 ]
then
   echo "Now connecting to VirMach 172.245.228.110 - 384MB/5GB/500GB"
   ssh root@172.245.228.110
elif [ $option -eq 3 ]
then
   echo "Now connecting to VirMach 23.95.234.100 - 384MB/5GB/100GB"
   ssh root@23.95.234.100
elif [ $option -eq 4 ]
then
   echo "Now connecting to RackNerd 107.174.240.162 - 1.5GB/20GB/6TB"
   ssh root@107.174.240.162
else
   echo "No such server!"
fi
