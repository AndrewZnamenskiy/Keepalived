#!/bin/bash


ip_address=$(hostname -I | awk '{print $1}')
nc -z -v "$ip_address" 80 2>/dev/null

if [ $? -ne 0 ]; then
  exit 1

  elif [[ -f /var/www/html/index.nginx-debian.html ]]; then
        exit 0
  else
        exit 1
  fi
fi
