# generate_inventory_example.py

import re

# Define the placeholder IP address
placeholder_ip = "192.168.1.1"

# Input and output file paths
input_file = "inventory.ini.draft"
output_file = "inventory.ini.example"

# Regular expression to match IP addresses
ip_pattern = r'\b(?:[0-9]{1,3}\.){3}[0-9]{1,3}\b'

# Read the original inventory.ini file
with open(input_file, 'r') as f:
    original_content = f.read()

# Replace IP addresses with placeholder IP in the original content
example_content = re.sub(ip_pattern, placeholder_ip, original_content)

# Write the modified content to inventory.ini.example
with open(output_file, 'w') as f:
    f.write(example_content)

print(f"Generated {output_file} with placeholder IPs.")
