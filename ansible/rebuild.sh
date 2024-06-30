!#/bin/bash

ssh-keygen -f "/home/dimitrios/.ssh/known_hosts" -R "5.161.66.154"
ssh-keygen -f "/home/dimitrios/.ssh/known_hosts" -R "5.78.112.17"
ssh-keygen -f "/home/dimitrios/.ssh/known_hosts" -R "37.27.92.41"

echo "
ssh root@5.161.66.154
ssh root@5.78.112.17
ssh root@37.27.92.41
"

