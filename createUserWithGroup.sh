#!/bin/bash

touch file.txt

function diviceInfo(){
echo "<--Creator username-->" | tee -a file.txt
whoami | tee -a file.txt
(echo "";echo "<--Device Info-->") >> file.txt
uname -a | tee -a file.txt
(echo "";echo "<--System Info-->") >> file.txt
sudo lshw -short >> file.txt
}

function createUser(){
sudo useradd -m -u 1100  -g TestGroup -e $exDate $userName | tee -a file.txt
}

diviceInfo 
exDate=$1

echo "<--Creating a Group For New User-->"
sudo groupadd -g 5000 TestGroup | tee -a file.txt
(echo"";echo "<--Group Info-->";) | tee -a file.txt
sudo tail -1 /etc/group | tee -a file.txt
echo "<--TestGroup is created for new user with gid 5000-->" >> file.txt
sleep 3

echo "<--Enter User Name for new user-->"
read userName
createUser $userName $exDate
(echo"";echo "<--User Info-->") | tee -a file.txt
sudo tail -1 /etc/passwd | tee -a file.txt
(echo"";echo "New user '$userName' is created with expiery Date is '$exDate'.";echo"") >> file.txt
(echo "New user '$userName' is created with expiery Date is '$exDate' .";echo"")
echo "Please set password for '$userName'!"
echo "Done" || tee -a file.txt





