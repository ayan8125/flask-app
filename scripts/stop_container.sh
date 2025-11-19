#!/bin/bash

containers=$(sudo docker ps -q)  # Correct command substitution

echo "$containers"               # Print container IDs

if [ -n "$containers" ]; then    # Check if there are any containers
  sudo docker rm -f $containers  # Force remove all listed containers
else
  echo "No running containers to remove."
fi
