#!/bin/bash

# Retrieve random quote from an API
quote=$(curl -s "https://api.quotable.io/random" | jq -r 'select(.content | contains("America") or contains("country") or contains("Christianity") or contains("Judaism") or contains("Islam") or contains("Buddhism") or contains("secular humanism") or contains("agnosticism") or contains("atheism") | not) | .content')

# Define color codes
YELLOW='\033[1;93m'
NC='\033[0m' # No Color

# Function for animated printing
animate_print() {
  string=$1
  delay=$2
  length=${#string}
  for ((i=0; i<length; i++)); do
    echo -ne "${YELLOW}${string:$i:1}${NC}"
    sleep $delay
  done
}

# Function to display text in a box
display_in_box() {
  text=$1
  length=${#text}

  # Print the top border
  echo -e "┌─${text//?/─}─┐"

  # Print the content with left and right borders
  echo -e "│ $text │"

  # Print the bottom border
  echo -e "└─${text//?/─}─┘"
}

# Display the welcome message in a box
display_in_box "Welcome:"

# Display the quote with color and animation
animate_print " $quote" 0.03

# Add one line of spacing
echo

# Add one more line of spacing
echo

# Show the command prompt
PS1='[s1yn@sec \W]$ '
