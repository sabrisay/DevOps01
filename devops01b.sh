#! /bin/bash

if [[ $# -eq '0' ]]; then

  echo " No parameter is given. So system information can be view through fallowing commands: for volumes;'dk -f"
  echo "to view ram: system_profiler SPHardwareDataType | grep Memory;"
  echo "to view cpu:system_profiler SPHardwareDataType | grep Processor*; "
  echo "to view ip:pconfig getifaddr en0;"
  echo "to view mac: networksetup -getmacaddress en0;"

 fi   

while [[ $# -gt '0' ]] ; do
       
          
if [[ $1 == 'volumes' ]];then

  echo -n "volumes:"
  df -k;

elif [[ $1 == 'cpu' ]];then
  echo -n ""
 system_profiler SPHardwareDataType | grep Processor*; 

elif [[ $1 == 'ram' ]];then
  echo -n ""
  system_profiler SPHardwareDataType | grep Memory;

elif [[ $1 == 'network' ]];then
   echo -n "IP:"
   ipconfig getifaddr en0;
   echo -n ""
   networksetup -getmacaddress en0;

elif [[ $1 == 'all' ]];then  
   echo -n "By typing "{desired_command} -h" you can learn usage of commands. " 
 

 
fi

shift
     
     
done
