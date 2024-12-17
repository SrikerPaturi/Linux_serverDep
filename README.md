# Secure Linux Server Deployment Project

This project demonstrates the deployment of a secure Linux server using Ubuntu. It incorporates tools like OpenSSH, UFW, Fail2Ban, Logwatch, and Nginx secured with Let's Encrypt. Automation scripts are provided to simplify server setup, enhance security, and manage routine tasks.

## Features
- **Secure SSH Access**: Key-based authentication with disabled root login.
- **Firewall Management**: Simplified configuration using UFW.
- **Brute-Force Protection**: Fail2Ban to block malicious login attempts.
- **Log Monitoring**: Logwatch for daily server activity summaries.
- **Web Server Optimization**: Nginx with SSL/TLS certificates using Let's Encrypt.
- **Backup Automation**: Scheduled backups of critical data.

## Repository Structure

Secure-Linux-Server/
│
├── README.md
├── LICENSE
├── docs/
│   ├── HOW_TO_USE.md
│   └── troubleshooting/
│       ├── ssh_troubleshooting.md
│       └── firewall_troubleshooting.md
├── scripts/
│   ├── setup_server.sh
│   ├── secure_ssh.sh
│   ├── configure_firewall.sh
│   ├── setup_fail2ban.sh
│   ├── setup_logwatch.sh
│   ├── optimize_performance.sh
│   ├── backup_automation.sh
│   └── install_nginx_https.sh
├── .gitignore


## Getting Started
1. Clone the repository:
   ```bash
    git clone https://github.com/your-username/Secure-Linux-Server.git
    cd Secure-Linux-Server
   
2. Make the scripts executable :
    ```bash
     chmod +x scripts/*.sh
3. Execute the scripts as needed from the scripts/ directory.

## Prerequisites

1. Ubuntu 20.04 or later
2. User with sudo privileges
3. Basic familiarity with Linux commands

## Usage

Detailed instructions for each sciptare provided in how_to_use.md
  
