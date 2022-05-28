#! /bin/bash

# Get the first 3 octets of our ip
ifconfig | grep "broadcast" | cut -d " " -f 2 | cut -d "." -f 1,2,3 | uniq > octets.txt

# Read octets from output file
OCT = $(cat octets.txt)

# create a next .txt
echo "" > $OCT.txt

# loop

for ip in {1..254}
do
    ping -c 1 $OCT.$ip | grep "64 bytes"  | cut -d " " -f 4 | tr -d ":" >> $OCT.txt &
done

cat $OCT.txt