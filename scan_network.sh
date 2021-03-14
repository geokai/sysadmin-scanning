#!/bin/bash


network=$1


# find all devices on local network
echo "$(date "+%F %T")" > /tmp/nmap-list.txt
sudo nmap -sn $network >> /tmp/nmap-list.txt
