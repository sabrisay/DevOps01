#! /bin/bash
( 
echo "********************************";
date;
echo -n "Name: ";
uname -n;
echo -n "IP: ";
ipconfig getifaddr en0;
echo -n "Mac Address:";
networksetup -getmacaddress en0;
echo -n; 
system_profiler SPHardwareDataType | grep Memory;
echo -n; 
system_profiler SPHardwareDataType | grep Processor*;
echo -n "Volumes: ";
df -k; ) >> inventory.txt




