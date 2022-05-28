# Upscale video to 1080p.
#
# - Steve. April '22

if (($# < 1)); then
    echo "*** Please supply an input video file to upscale to 1080p."
    exit 99
fi

# Otherwise.. Upscale.

echo "Upscaling $1... 😀"
    ffmpeg -loglevel quiet -i "$1" -vf scale=1920x1080:flags=lanczos "${1%.*}_1080p.mp4"
echo "Completed process."