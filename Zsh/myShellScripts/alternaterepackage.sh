# Repackage mkv > mp4 - mkv only (a.t.m)
#
# - Steve. March '22

echo "*** Stevie's Alternate Repackaging Video McFuck (SARVM) version 1.0 ***"

# Count number of .mkv files.

fcount=$(find . -iname "*.mkv" -type f | wc -l)

# If we have nothing to work with, exit cleanly.

if (($fcount == 0)); then 
    echo "Nothing to do..🤷‍♂️"
    exit 0
fi

# Otherwise.. Repackage that shit!!! 🤘🏼

if (($fcount > 1)); then
    echo "Repackaging" $fcount "video containers... 😀"
else 
    echo "Repackaging" $fcount "video container... 😀"
fi

for i in *.mkv; 
    do 
        ffmpeg -loglevel quiet -i "$i" -c copy -sn -c:v libx264 -profile:v high -level:v 4.1 -vf format=yuv420p -c:a aac -map 0:v:0 -movflags faststart "${f%.mkv}.mp4";
    done

echo "Completed process."
rm *.mkv
echo "Removed unrequired videos. 😳🤞🏼"
echo "Done."
echo "*** SARVM out! 🫳🏼 🎤 ***"
