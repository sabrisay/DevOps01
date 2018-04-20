#! /bin/bash

IP=ipconfig getifaddr en0;
echo  "IP Address is $IP ";
MAC=networksetup -getmacaddress en0;
echo "Mac Address is $MAC";
RAM=system_profiler SPHardwareDataType | grep Memory;
echo "Memory is $RAM";
CPU=system_profiler SPHardwareDataType | grep Processor*;
echo "Processor is $CPU";
VOLUME=df -k;
echo "Volumes is $VOLUME";


