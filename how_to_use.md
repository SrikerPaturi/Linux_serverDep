# How to Use the Secure Linux Server Scripts

This document provides clear and detailed instructions on how to use the automation scripts included in this repository. Each script is designed to simplify server setup and security configuration tasks. Follow these steps to effectively use the scripts and deploy your secure Linux server.

---

## Prerequisites
Before using the scripts, ensure the following prerequisites are met:

1. You have access to a server running **Ubuntu 20.04 or later**.
2. You have a **user with sudo privileges**.
3. Git is installed on the server to clone this repository:
   ```bash
   sudo apt install git -y
   ```
4. You have a basic understanding of Linux commands.

---

## Setup Instructions

### Step 1: Clone the Repository
To get started, clone the repository to your server:
```bash
git clone https://github.com/your-username/Secure-Linux-Server.git
cd Secure-Linux-Server
```

### Step 2: Make Scripts Executable
Ensure all scripts are executable before running them:
```bash
chmod +x scripts/*.sh
```

### Step 3: Execute Scripts
Run each script in the appropriate order to set up and secure the server. Below is a guide to each script's purpose and usage:

---

## Script Guide

### 1. `setup_server.sh`
- **Purpose**: Updates and upgrades the server, installs essential utilities.
- **Usage**:
  ```bash
  sudo bash scripts/setup_server.sh
  ```
- **What it does**:
  - Updates and upgrades the system.
  - Installs essential tools like `curl`, `wget`, and `unzip`.

---

### 2. `secure_ssh.sh`
- **Purpose**: Configures SSH for key-based authentication and disables root login.
- **Usage**:
  ```bash
  sudo bash scripts/secure_ssh.sh
  ```
- **What it does**:
  - Generates an SSH key pair.
  - Copies the public key to the server.
  - Disables password authentication and root login for SSH.

---

### 3. `configure_firewall.sh`
- **Purpose**: Configures UFW to allow essential ports and enables the firewall.
- **Usage**:
  ```bash
  sudo bash scripts/configure_firewall.sh
  ```
- **What it does**:
  - Opens ports for SSH (22), HTTP (80), and HTTPS (443).
  - Enables UFW to protect the server.

---

### 4. `setup_fail2ban.sh`
- **Purpose**: Installs and configures Fail2Ban to protect against brute-force attacks.
- **Usage**:
  ```bash
  sudo bash scripts/setup_fail2ban.sh
  ```
- **What it does**:
  - Installs Fail2Ban.
  - Configures it to block IPs with repeated failed login attempts.

---

### 5. `setup_logwatch.sh`
- **Purpose**: Installs and configures Logwatch to send daily activity reports via email.
- **Usage**:
  ```bash
  sudo bash scripts/setup_logwatch.sh
  ```
- **What it does**:
  - Installs Logwatch.
  - Sets up daily email reports summarizing server activity.

---

### 6. `optimize_performance.sh`
- **Purpose**: Installs and configures Nginx, secures it with SSL using Let's Encrypt.
- **Usage**:
  ```bash
  sudo bash scripts/optimize_performance.sh
  ```
- **What it does**:
  - Installs and starts Nginx.
  - Configures SSL/TLS certificates using Let's Encrypt.

---

### 7. `backup_automation.sh`
- **Purpose**: Automates daily backups of critical data.
- **Usage**:
  ```bash
  sudo bash scripts/backup_automation.sh
  ```
- **What it does**:
  - Creates a compressed backup of specified directories.
  - Saves the backups in a designated folder with timestamps.

---

### 8. `install_nginx_https.sh`
- **Purpose**: Installs Nginx and configures HTTPS using Let's Encrypt.
- **Usage**:
  ```bash
  sudo bash scripts/install_nginx_https.sh
  ```
- **What it does**:
  - Installs Nginx web server.
  - Secures it with SSL/TLS certificates using Certbot.

---

## Recommendations
- Always test the scripts in a non-production environment before deploying them to live servers.
- Regularly review server logs and updates to ensure ongoing security and performance.
- Use a reliable email address to receive reports from Logwatch and alerts from Fail2Ban.

---

## Additional Notes
- If you encounter issues while running the scripts, refer to the [Troubleshooting Guides](docs/troubleshooting/).
- Customize the backup script (`backup_automation.sh`) to include specific directories or files that are critical to your setup.

Thank you for using the Secure Linux Server Deployment project! This repository is designed to make your server setup and maintenance efficient and secure.

