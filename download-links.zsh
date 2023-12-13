#!/bin/zsh

# Replace 'your-output-directory' with the directory where you want to save the files
output_directory="your-output-directory"

# Array of links (replace with your actual links)
links=(
  "http://example.com/link1"
  "http://example.com/link2"
  "http://example.com/link3"
)

# Create the output directory if it doesn't exist
mkdir -p "$output_directory"

# Loop through the links and download the content
for link in "${links[@]}"; do
  # Extract the filename from the link
  filename=$(basename "$link")

  # Download the content using curl
  curl -L "$link" -o "$output_directory/$filename"

  # Optionally, you can add a sleep to avoid rate limiting
  # sleep 1
done

echo "Downloaded content saved to $output_directory"
