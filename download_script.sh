#!/bin/bash

# File name
FILE_NAME="llava-v1.5-7b-f16.gguf"

# Check if the file already exists
if [ ! -f "/data/$FILE_NAME" ]; then
	    # Download the file
	        wget -O "/data/$FILE_NAME" https://huggingface.co/jartine/llava-v1.5-7B-GGUF/resolve/main/llava-v1.5-7b-f16.gguf
fi

# Make the binary executable
chmod 755 "/data/$FILE_NAME"

# Execute the binary
# sh -c for if mac has zsh issues
sh -c "/data/$FILE_NAME --host 0.0.0.0"

