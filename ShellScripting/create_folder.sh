#!/bin/bash
# Define the Desktop path
DESKTOP_PATH="$HOME/Desktop"
# Define the folder name you want to create
FOLDER_NAME="my_new_folder"
# Create the folder on the Desktop
mkdir -p "$DESKTOP_PATH/$FOLDER_NAME"
# Print a confirmation message
echo "Folder '$FOLDER_NAME' created on Desktop."
# List the contents of the Desktop to verify
echo "Contents of Desktop:"
ls "$DESKTOP_PATH"
