#!/bin/bash

# Secure Linux Server Project: Nginx and HTTPS Setup Script
# Description: Installs Nginx and configures HTTPS using Let's Encrypt.

echo "Installing and setting up Nginx with HTTPS..."

# Install Nginx
sudo apt install nginx -y
if [ $? -eq 0 ]; then
    echo "Nginx installed successfully."
else
    echo "Error: Failed to install Nginx."
    exit 1
fi

# Install Let's Encrypt and configure HTTPS
sudo apt install certbot python3-certbot-nginx -y
sudo certbot --nginx
if [ $? -eq 0 ]; then
    echo "Nginx secured with HTTPS successfully."
else
    echo "Error: Failed to configure HTTPS."
    exit 1
fi
