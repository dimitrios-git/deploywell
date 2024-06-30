#!/bin/bash

# Function to remove and add SSH keys
refresh_ssh_key() {
  local ip=$1

  # Remove old entry
  ssh-keygen -f "$HOME/.ssh/known_hosts" -R "$ip"

  # Add new entry
  if ssh-keyscan -H "$ip" >> "$HOME/.ssh/known_hosts"; then
    echo "Successfully added $ip to known_hosts"
  else
    echo "Failed to add $ip to known_hosts"
  fi
}

# IP addresses to refresh
ips=("5.161.66.154" "5.78.112.17" "37.27.92.41")

# Loop through each IP and refresh SSH key
for ip in "${ips[@]}"; do
  refresh_ssh_key "$ip"
done

