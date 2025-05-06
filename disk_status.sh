#!/bin/bash
#
#
# welcome the user ,with greeting to his/her username


  echo -e "\n---------------------Welcome---------------------"
  echo -e "\nHi $(whoami) ! Welcome to the my DevOps journey \n"
  echo "------------------------------------------------------"

  #show the date and time 
   echo "Current Date and Time is :$(date)"

  # show the uptime of the server and last Logins
  echo -e "\nThe uptime of the server is $(uptime) \n Last login Details :\n$(last -a |head -5)\n"

  #show the Disk space and RAM utilization 
  echo "---------------------****----------------------------"
  echo "Disk Space Available:" && df -H | xargs |awk '{print $11 "/" $9}'

  echo "---------------------****----------------------------"
  echo -e "\nRAM Utilization:" &&  free | xargs |awk '{print $13 "/" $8}'

  #TOP Processes
  echo "---------------------****----------------------------"
  echo -e "\nTop CPU Processes: " && top | head -10  
#
