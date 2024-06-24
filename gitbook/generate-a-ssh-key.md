---
description: Instructions to generate a key for authenticating to remote hosts.
---

# Generate a SSH Key

```bash
ssh-keygen -t rsa -b 4096 -C "ansible_ssh_key" -f ansible_ssh_key # Generate a set of keys
eval "$(ssh-agent -s)"   # Start the ssh-agent in the background
ssh-add ansible_ssh_key  # Add your private key to the ssh-agent
```
