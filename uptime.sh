#!/bin/bash

# Define your server list with IP addresses
servers=("sv1" "sv2" "sv3")

# Function to get server uptime using ping
get_uptime() {
    local server=$1
    local result=$(ping -c 4 $server)  # Adjust the count as needed
    local status=""

    # Check if ping was successful
    if [ $? -eq 0 ]; then
        status="Online"
        else
        status="Offline"
    fi

    echo "{\"Name\": \"$server\", \"Status\": \"$status\"}"
}

# Read the existing JSON file into a variable
json_data=$(cat data/servers.json)

# Loop through servers and update only the "Status" field
for server in "${servers[@]}"; do
    status=$(get_uptime "$server" | jq -r '.Status')
    json_data=$(echo "$json_data" | jq "(.[] | select(.Name == \"$server\")).Status |= \"$status\"")
done

# Save the updated JSON data to the file
echo "$json_data" > data/servers.json

echo "Uptime information saved to uptime.json"
