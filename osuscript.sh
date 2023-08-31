#!/bin/bash

DL="/home/peanut/Downloads"
SONGS="/hdd/osu!/Songs"

while true; do
    
    inotifywait -e create -e moved_to "$DL" | while read -r directory event file; do
        
        if [[ "$file" == *.osz ]]; then
            
            mv "$DL/$file" "$SONGS/$file"
            echo "Moved $file to $SONGS"
        fi
    done
done

