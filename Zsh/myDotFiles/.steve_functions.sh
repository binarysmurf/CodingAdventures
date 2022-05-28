up () {
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

updateHomebrew ()
{

#
# This function updates my package manager & relevant packages weekly on a Sunday, and only once runs once rather than 
# every time I open a terminal that day.
#


	# Get the short form of the current weekday
	wday=$(date "+%a")  

	
	if [[ $wday == Sun ]]; then # Is it Sunday?
		if [ -f ~/.updatedone ]; then # Have we previously updated today? Exit!
			return
		else						# Otherwise, do the update.. 
		    echo "Yo Stevie!! Doing the weekly Homebrew update ..."
		    brew update; brew upgrade; brew doctor
		    touch ~/.updatedone # .. and create a file to stop a repeat update.
		fi
	fi
	
	# If it's not a Sunday, delete the file created for last update
	# so that the update kicks off automatically on Sunday :)
	
	if [[ $wday != Sun ]]; then  
		if [ -f ~/.updatedone ]; then 
			rm ~/.updatedone
		fi
	fi

	return
	
}
