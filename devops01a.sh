#! /bin/bash
echo -n "IP:";
ipconfig getifaddr en0;
networksetup -getmacaddress en0;
system_profiler SPHardwareDataType | grep Memory;
system_profiler SPHardwareDataType | grep Processor*;
echo -n "Volume:"
df -k;



