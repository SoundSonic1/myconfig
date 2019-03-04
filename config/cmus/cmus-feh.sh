#!/bin/bash
## 'status_display_program' for Cmus. Shows album art in a fixed size window.
## Use your window manager to automatically manipulate the window.
## There are several album art viewers for Cmus but this I believe is the most
## compatible with different setups as it is simpler. No weird hacks.
## Requires feh (light no-gui image viewer).

# Get the current file directory
ART=$(cmus-remote -Q | grep "file" | sed "s/file //")
# Extract album art with fixed geometry
ffmpeg -y -i "$ART" -vf scale=450:450 /tmp/albumart.png
convert ~/Pictures/cmus-wallpaper/262614.jpg /tmp/albumart.png -gravity southeast -composite /tmp/result.png
setsid feh --bg-fill "/tmp/result.png" &
