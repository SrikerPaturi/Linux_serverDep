#!/bin/bash

# Secure Linux Server Project: Server Optimization Script
# Description: Installs and configures Nginx and secures it with SSL using Let's Encrypt.

echo "Installing and configuring Nginx..."

# Install Nginx
sudo apt install nginx -y
if [ $? -eq 0 ]; then
    echo "Nginx installed successfully."
else
    echo "Error: Failed to install Nginx."
    exit 1
fi

# Start and enable Nginx
sudo systemctl start nginx
sudo systemctl enable nginx
echo "Nginx service started and enabled."

# Install Let's Encrypt and configure SSL/TLS
echo "Securing Nginx with SSL/TLS using Let's Encrypt..."
sudo apt install certbot python3-certbot-nginx -y
sudo certbot --nginx
if [ $? -eq 0 ]; then
    echo "Nginx secured with SSL/TLS successfully."
else
    echo "Error: Failed to secure Nginx with SSL/TLS."
    exit 1
fi
