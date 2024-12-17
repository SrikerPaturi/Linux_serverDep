#!/bin/bash

# Secure Linux Server Project: Firewall Configuration Script
# Description: Configures UFW to allow essential ports and block unwanted traffic.

echo "Configuring the firewall with UFW..."

# Allow essential ports
sudo ufw allow 22/tcp # SSH
sudo ufw allow 80/tcp # HTTP
sudo ufw allow 443/tcp # HTTPS

# Enable the firewall
sudo ufw enable
if [ $? -eq 0 ]; then
    echo "Firewall configured and enabled successfully."
else
    echo "Error: Failed to configure or enable the firewall."
    exit 1
fi
