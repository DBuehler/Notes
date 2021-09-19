#!/bin/env bash

# This script goes into a top-level directory $HOME/SavesBackups

ts=$(date +%F-%H-%M)

dest_dir="$HOME/SavesBackups/$ts"

source_dir="$HOME/.local/share/7DaysToDie"

if [ -d "$dest_dir" ]; then
    echo "ERROR: Destination directory '$dest_dir' already exists!"
    exit 1
fi

if ! mkdir "$dest_dir"; then
    echo "ERROR: Problem creating destination directory '$dest_dir'"
    exit 1
fi

if ! [ -d "$source_dir" ]; then
    echo "ERROR: Source directory '$source_dir' not found!"
    exit 1
fi

rsync -av "$source_dir" "$dest_dir"

echo "Backup saved to $dest_dir"
