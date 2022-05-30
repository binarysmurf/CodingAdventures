#!/bin/bash

# Required parameters:
# @raycast.schemaVersion 1
# @raycast.title Nuke
# @raycast.mode silent

# Optional parameters:
# @raycast.icon 🤖
# @raycast.packageName Nuke

# Documentation:
# @raycast.description Nuke Everything
# @raycast.author Steve D.
# @raycast.authorURL https://www.facebook.com/binarysmurf

if  [ "$( ls -a /Users/stevie/Desktop/)" ]; # Makes sure there are actually files to delete, to avoid an error message.
then
    rm -rf ~/Desktop/*
fi

if  [ "$( ls -a /Users/stevie/Downloads/)" ]; # See above.
then
    rm -rf ~/Downloads/*
fi

if  [ "$( ls -a /Users/stevie/Scratch\ Directory/)" ]; # Ditto.
then
    rm -rf ~/Scratch\ Directory/*
fi

if  [ "$( ls -a /Users/stevie/Documents/Screenshots/)" ]; # Are you fucking slow?
then
    rm -rf ~/Documents/Screenshots/*
fi

