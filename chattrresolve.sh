#!/bin/bash
#

echo "1. Lock resolve.conf
2. Unlock resolve.conf & edit the resolv file
3. Unlock resolv.conf"

read choice

if [ "$choice" = "1" ]; then
   echo "Locking resolve.conf"
   sudo chattr +i /etc/resolv.conf

elif [ "$choice" = "2" ]; then
   echo "Unlocking resolve.conf"
   sudo chattr -i /etc/resolv.conf
   sudo nvim /etc/resolv.conf
   sudo chattr +i /etc/resolv.conf
   echo "Done"

elif [ "$choice" = "3" ]; then
   echo "Unlocking resolv.conf"
   sudo chattr -i /etc/resolv.conf
   echo "resolv.conf unlocked!"

else 
   echo "Unknown command";
fi


