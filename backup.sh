#!/bin/bash

echo "Creating Two Folder, For Backup And demo Files & create some demo Text files on it"
mkdir demoFile backFile && touch demoFile/file{1..10}.txt

src=/home/rezuan/linux/demoFile
des=/home/rezuan/linux/backFile

timestamps=$(date "+%y-%m-%d-%H-%M-%S")

back_file=$des/$timestamps.tgz

tar czf $back_file --absolute-name $src

echo "Backup Complete"
