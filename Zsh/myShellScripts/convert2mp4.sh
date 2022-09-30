#  Convert misc video > mp4
#
# - Steve. April/May '22


echo "*** Stevie's Video Conversion McFuck (SVCM) version 1.2 ***"

# check correct args

if (($# < 1)); then
    echo "*** Please supply an input video format to convert to MP4 .. E.g. 'convert2mp4 avi' or 'convert2mp4 mov'."
    exit 99
fi

if [[ ($1 = "mkv") || ($1 = "MKV") ]]; then
	echo "\nIt may be better to repackage these videos. See repackage2mp4.sh.\n"
	exit 99
fi

# Count number of video files.

fcount=$(find . -iname "*.$1" -type f | wc -l)

# If we have nothing to work with, exit cleanly.

if (($fcount == 0)); then 
    echo "Nothing to do..🤷‍♂️"
    exit 0
fi

# Otherwise.. Do shit.

if (($fcount > 1)); then
    echo "Converting" $fcount "videos. 😀"
else 
    echo "Converting" $fcount "video. 😀"
fi

for i in *.$1; do 
	echo $i
	other-transcode --mp4 "$i"; 
done 
echo "Completed conversion process."

rm *.$1
rm *.log

echo "Removed unrequired videos and logs. 😳🤞🏼"
echo "Done."
echo "*** SVCM out! 🫳  🎤 ***"

exit 0
