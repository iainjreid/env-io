#!/bin/bash -i

if [ ! -f .env ]; then
  echo "No \".env\" file found"
  exit 1
fi

# Export all of the variables from the .env file 
export $(egrep -v "^#" .env | xargs)

# Prepend an identifier to the PS1
export PS1="(evn-io) $PS1"

$SHELL

