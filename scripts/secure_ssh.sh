#!/bin/bash

# Secure Linux Server Project: SSH Security Script
# Description: Configures SSH for key-based authentication and disables insecure access.

echo "Configuring secure SSH access..."

# Generate SSH key pair
echo "Generating SSH key pair..."
ssh-keygen -t rsa -b 4096 -f ~/.ssh/id_rsa -N ""
if [ $? -eq 0 ]; then
    echo "SSH key generated successfully."
else
    echo "Error: SSH key generation failed."
    exit 1
fi

# Copy SSH public key to the server
echo "Copying SSH key to the server..."
ssh-copy-id -i ~/.ssh/id_rsa.pub user@server_ip
if [ $? -eq 0 ]; then
    echo "SSH key copied successfully."
else
    echo "Error: Failed to copy SSH key."
    exit 1
fi

# Harden SSH configuration
echo "Hardening SSH configuration..."
sudo sed -i 's/#PermitRootLogin.*/PermitRootLogin no/' /etc/ssh/sshd_config
sudo sed -i 's/#PasswordAuthentication.*/PasswordAuthentication no/' /etc/ssh/sshd_config

# Restart SSH service
sudo systemctl restart ssh
echo "SSH configuration secured successfully."
