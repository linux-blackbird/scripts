#!/bin/bash
#Converts .webp files to .png and places them in directory './converted'
#Place script in the same directory as your .webp files
#Requires ffmpeg (obviously)

echo "Creating directory './converted'"
if [ -d ./converted ]; then
    echo "Directory './converted' already exists."
else
    mkdir ./converted
    echo "Directory './converted' has been created."
fi

echo -e "\nThe following files will be converted:"

for FILE in *.webp; do
    echo "$FILE"
done
echo -e "\n"

read -p "Continue? [Y/N]" -s -n 1 PROMPT

while [ $PROMPT != "y" ] && [ $PROMPT != "n" ]
do
    echo -e "\nOnly Y or N are allowed."
    read -p "Continue? [Y/N]" -s -n 1 PROMPT
done

if [ $PROMPT = "y" ]; then
    echo -e "\n"
    for FILE in *.webp; do
        ffmpeg -hide_banner -loglevel error -i "$FILE" "./converted/${FILE::-5}.png"
    done
    echo "Conversion finished."
elif [ $PROMPT = "n" ]; then
    echo -e "\nOperation cancelled."
fi
