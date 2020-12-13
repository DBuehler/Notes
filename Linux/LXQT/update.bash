#!/bin/bash

for f in $(ls -A); do
    n="${f%/}"
    if [ -d "$n" ]; then
        echo "$n"
        rsync -av --existing ~/"$n"/ "$n"
    fi
done
