#!/bin/bash
#**************************************************#
#title:		mac_randomizer.sh
#description:	Randomize network device mac address
#author:	KBS
#date:		20181211
#version:	1.0
#***************************************************#
# Loops though net devices then changes mac addresses
for device in $(ls /sys/class/net); do
  if [ $device = "lo" ]
  then
    continue
  else
    ORG_MAC=$(cat /sys/class/net/$device/address)
    RANDOM_MAC="$(echo -n 02; od -t x1 -An -N 5 /dev/urandom | tr ' ' ':')"
    /etc/init.d/network-manager stop
    ip link set $device address $RANDOM_MAC
    echo "Changing MAC for $device from $ORG_MAC to $RANDOM_MAC"
  fi
   /etc/init.d/network-manager start
done
