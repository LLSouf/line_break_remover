#!/bin/bash

# Step 1: Get the content from the clipboard and save it to input.txt
xclip -selection clipboard -o > /tmp/input.txt

# Step 2: Use sed to replace line breaks with spaces and copy it back to the clipboard
sed ':a;N;$!ba;s/\n/ /g' /tmp/input.txt | xclip -selection clipboard

echo "Content processed and copied back to clipboard."
