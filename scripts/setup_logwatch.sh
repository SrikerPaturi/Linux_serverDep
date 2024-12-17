#!/bin/bash

# Secure Linux Server Project: Logwatch Setup Script
# Description: Installs and configures Logwatch for daily server log analysis.

echo "Installing Logwatch for monitoring server activity..."

# Install Logwatch
sudo apt install logwatch -y
if [ $? -eq 0 ]; then
    echo "Logwatch installed successfully."
else
    echo "Error: Failed to install Logwatch."
    exit 1
fi

# Configure Logwatch to send daily reports
sudo logwatch --output mail --mailto your_email@example.com --detail high
echo "Logwatch configured to send daily email reports."
