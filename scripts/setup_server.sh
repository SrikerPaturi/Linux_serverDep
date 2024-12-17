#!/bin/bash

# Secure Linux Server Project: Server Setup Script
# Author: Sriker Paturi
# Description: This script updates and upgrades the server and installs essential utilities.

echo "Starting system update and upgrade..."

# Update and upgrade the system
sudo apt update && sudo apt upgrade -y
if [ $? -eq 0 ]; then
    echo "System updated and upgraded successfully."
else
    echo "Error: System update or upgrade failed."
    exit 1
fi

# Install essential packages
echo "Installing essential utilities..."
sudo apt install -y curl wget git unzip
if [ $? -eq 0 ]; then
    echo "Essential utilities installed successfully."
else
    echo "Error: Failed to install essential utilities."
    exit 1
fi

echo "Server setup completed successfully."
