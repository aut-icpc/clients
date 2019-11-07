#!/bin/bash

DRIVES=$(ls /dev/disk/by-uuid)

for drive in ${DRIVES}; do
	
	echo "/dev/disk/by-uuid/${drive} /mnt/${drive} auto nosuid,nodev,nofail,noauto 0 0" >> /etc/fstab
done
