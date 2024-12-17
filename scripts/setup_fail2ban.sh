#!/bin/bash

# Secure Linux Server Project: Fail2Ban Setup Script
# Description: Installs and configures Fail2Ban to protect against brute-force attacks.

echo "Installing and configuring Fail2Ban..."

# Install Fail2Ban
sudo apt install fail2ban -y
if [ $? -eq 0 ]; then
    echo "Fail2Ban installed successfully."
else
    echo "Error: Failed to install Fail2Ban."
    exit 1
fi

# Start and enable Fail2Ban service
sudo systemctl start fail2ban
sudo systemctl enable fail2ban
echo "Fail2Ban service started and enabled successfully."
