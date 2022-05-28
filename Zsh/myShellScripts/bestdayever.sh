#!/usr/local/bin/zsh

name=$1
feature=$2
user=$(whoami)
today=$(date)
where=$(pwd)

echo Hi $name.; sleep 1
echo $name, you look great!; sleep 1
echo You have the best $feature, $name!; sleep 1 

sleep 2
echo "You are logged in as $user. Today is $today, and your current directory is $where."
