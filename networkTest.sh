#!/bin/bash

echo "----------------------------checking alpha connectivty--------------------------------"
ping -c 5 alpha
echo "----------------------------checking beta connectivty--------------------------------"
ping -c 5 beta
echo "----------------------------checking gamma connectivty--------------------------------"
ping -c 5 gamma

echo "This script curls http://www.heartnsoul.com/ascii_art/deer.txt from each host"
echo "Hit enter to continue"
read
mpssh "curl http://www.heartnsoul.com/ascii_art/deer.txt" -u root -f ~/demo/all
