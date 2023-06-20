#!/bin/bash

echo "<---Syatem Updating-->" | tee update.txt
sudo dnf update | tee -a update.txt

echo "<--System Upgrading-->" | tee -a update.txt
sudo dnf upgrade -y | tee -a update.txt

echo "<--System Update Complete-->" | tee -a update.txt

