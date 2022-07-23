#!/bin/bash

for ((i=1; i<=10000000; i+=1)) ; do
  p1=$(shuf -i 314824432191309680913-590295810358705651711 -n1)
  page=$p1
  webserv="https://privatekeys.pw/keys/bitcoin/$page"

  key="19vkiEajfhuZ8bs8Zu2jgmC6oqZbWqhxhG"

   if curl -s "$webserv" | grep "$key"
    then
      echo $webserv > text.txt
    else
      echo $page
   fi
done
