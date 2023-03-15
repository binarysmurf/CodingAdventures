#!/bin/bash

up () 
{
  local d=""
  local limit="$1"

  # Default to limit of 1
  if [ -z "$limit" ] || [ "$limit" -le 0 ]; then
    limit=1
  fi

  for ((i=1;i<=limit;i++)); do
    d="../$d"
  done

  # perform cd. Show error if cd fails
  if ! cd "$d"; then
    echo "Couldn't go up $limit dirs.";
  fi
}

WeeklyUpdate()
{

#
# v1.0: This function updates my package manager & relevant packages weekly on a Sunday, and only runs once rather than 
# every time I open a terminal that day.
#
# v1.1: Added deletion of local snapshots and the 'force' argument so I can run the function any time.
#


    # Get the short form of the current weekday (Sun, Mon, Tue etc..)
	wday=$(date "+%a")  

	
	if [[ ($wday == Sun) || ($1 == force) ]]; then # a) Is it Sunday, or b) am I forcing an update?
		if [ -f ~/.updatedone ]; then # Have we previously updated today? Exit!
			return
		else						# Otherwise, do the update.. 
		    echo "Yo Stevie!! Updating and maintaining Homebrew; also deleting local snapshots ..."
		    brew update; brew upgrade; brew cleanup --prune=all; brew autoremove; brew doctor
		    tmutil deletelocalsnapshots /Volumes/Internal\ HD
		    touch ~/.updatedone # .. and create a file to stop a repeat update.
            echo "Update complete!!"
		fi
	fi
	
	# If it's not a Sunday, delete the file created for last update
	# so that the update kicks off automatically on Sunday :)
	
	if [[ $wday != Sun ]]; then  
		if [ -f ~/.updatedone ]; then 
			rm ~/.updatedone
		fi
	fi

}

mkd()
{
    mkdir -p $1
    cd $1
}

# Let the cow say something
cow () { cowsay "$1"; echo; }

# Fortune with spaces
quote () { echo; fortune; echo; }
