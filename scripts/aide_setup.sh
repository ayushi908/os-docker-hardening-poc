#!/bin/bash

sudo apt install aide -y

sudo aideinit
sudo mv /var/lib/aide/aide.db.new /var/lib/aide/aide.db

echo "AIDE initialized"

# Run check
sudo aide --check