#!/bin/bash 

touch userInfoFile.txt

echo "<--User Information-->" | tee -a userInfoFile.txt
function userInfo(){
sudo chage -l $userName | tee -a userInfoFile.txt
}

function diskInfo(){
(echo "";echo "<--Disk Information-->") | tee -a userInfoFile.txt
sudo du -mh /home/$userName | tee -a userInfoFile.txt
}

function processorInfo(){
(echo "";echo "<--Processsor Information-->") | tee -a  userInfoFile.txt
ps -u $userName | tee -a userInfoFile.txt
}

userName=$1

userInfo $userName
diskInfo $userName
processorInfo $userName

echo " "
echo "Done!" | tee -a userInfoFile.txt

