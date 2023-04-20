#!/bin/bash

contador=0
termina=10
ip=${1:-""}

while [ $contador -lt $termina ]; do
  echo "Contador: $contador"
  docker_running=$(systemctl is-active docker)
  
  if [ "$docker_running" = "active" ]; then
    if [ ! -f "/usr/local/bin/scope" ]; then
      sudo curl -L git.io/scope -o /usr/local/bin/scope
      sudo chmod a+x /usr/local/bin/scope
    fi
    
    if [ -n "$ip" ]; then
      sudo /usr/local/bin/scope launch $ip
    else
      sudo /usr/local/bin/scope launch
    fi
    
    break
  fi
  
  sleep 2
  ((contador++))
done

