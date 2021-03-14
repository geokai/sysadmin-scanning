#!/bin/bash

client_list=$1


cat $client_list | sed -n '1 p'

# print file excluding last line:
# cat $client_list | awk '/^Nmap/ { print $5 ":" $6 }' | sed -n '$!{1,$ p}' | sed -e 's/(//;s/)//'
cat $client_list | awk '/^Nmap scan/ {printf $5 "\t" $6 "\t"}; /MAC/ {printf $3}; /MAC/ {printf "\n"}'; echo
