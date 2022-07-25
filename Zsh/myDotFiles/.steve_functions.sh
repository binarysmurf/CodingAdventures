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

WeeklyUpdate()
{

#
# v1.0: This function updates my package manager & relevant packages weekly on a Sunday, and only runs once rather than 
# every time I open a terminal that day.
#
# v1.1: Added deletion of local snapshots and the 'force' argument so I can run the function manually regardless of weekday.
#


	# Get the short form of the current weekday
	wday=$(date "+%a")  

	
	if [[ ($wday == Sun) || ($1 == force) ]]; then # Is it Sunday, or am I forcing an update?
		if [ -f ~/.updatedone ]; then # Have we previously updated today? Exit!
			return
		else						# Otherwise, do the update.. 
		    echo "Yo Stevie!! Doing the weekly Homebrew update, and deleting local snapshots ...\n"
		    brew update; brew upgrade; brew autoremove; brew cleanup --prune=all; brew doctor
		    tmutil deletelocalsnapshots /Volumes/Internal\ HD
		    tmutil deletelocalsnapshots /Volumes/External\ HD
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
	
}

se()
{

# uses an interactive 'fuzzy finder' to access scripts in relevant directories

  du -a ~/.bin/* ~/.* ~/.config/* | awk '{print $2}' | fzf | xargs -r $EDITOR	
}

pskill() {
  procs $1 --no-header --only pid | xargs kill -15
}
