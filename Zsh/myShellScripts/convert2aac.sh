#!/bin/bash
#  Convert misc audio > aac
#
# - Steve. May '22


echo "*** Stevie's Audio Conversion McFuck (SACM) version 1.1 ***"

# check correct args

if (($# < 1)); then
    echo "*** Please supply an input audio format to convert to m4a .. E.g. 'convert2aac mp3' or 'convert2aac flac'."
    exit 99
fi

# Count number of audio files in current directory.

fcount=$(find . -iname "*.$1" -type f | wc -l)

# If we have nothing to work with, exit cleanly.

if (($fcount == 0)); then 
    echo "Nothing to do..🤷‍♂️"
    exit 0
fi

# Otherwise.. Do shit.

if (($fcount > 1)); then
    echo "Converting" $fcount "audio files. 😀"
else 
    echo "Converting" $fcount "audio file. 😀"
fi

for i in *.$1; do 
    echo $i
	ffmpeg -loglevel quiet -i "$i" -c:a aac -vn -b:a 320k "${i%.*}.m4a";
done 
echo "Completed conversion process."

rm *.$1
echo "Removed any unrequired audio files. 😳🤞🏼"
echo "Done."

echo "*** SACM out! 🫳🏼🎤 ***"
