#!/bin/bash

sudo apt install auditd -y
sudo systemctl enable auditd
sudo systemctl start auditd

echo "Adding audit rules..."

# Monitor passwd file
sudo auditctl -w /etc/passwd -p wa -k passwd_changes

# Monitor shadow file
sudo auditctl -w /etc/shadow -p wa -k shadow_changes

echo "Auditd configured"