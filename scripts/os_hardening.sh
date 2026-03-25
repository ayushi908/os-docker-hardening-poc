#!/bin/bash

echo "Updating system..."
sudo apt update && sudo apt upgrade -y

echo "Removing unnecessary packages..."
sudo apt remove -y telnet ftp

echo "Disabling unused services..."
sudo systemctl disable apache2 || true

echo "SSH Hardening..."
sudo sed -i 's/#PermitRootLogin yes/PermitRootLogin no/' /etc/ssh/sshd_config
sudo sed -i 's/#PasswordAuthentication yes/PasswordAuthentication no/' /etc/ssh/sshd_config

sudo systemctl restart ssh

echo "OS Hardening Completed"