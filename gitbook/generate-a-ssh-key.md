---
description: Your Guide to Generating a SSH Key
---

# Generate a SSH Key

Use the following command to generate a new SSH key in the project's directory:

```bash
ssh-keygen -t rsa -b 4096 -C "ansible_ssh_key" -f ansible_ssh_key # Generate a set of keys
eval "$(ssh-agent -s)"   # Start the ssh-agent in the background
ssh-add ansible_ssh_key  # Add your private key to the ssh-agent
```
