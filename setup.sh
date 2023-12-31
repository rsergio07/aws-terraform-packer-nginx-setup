#!/bin/bash

# Update and install packages
sudo yum update -y
sudo amazon-linux-extras install -y nginx1

# Start and enable Nginx
sudo systemctl enable nginx
sudo systemctl start nginx

# Add specific configurations based on availability zone
if [ "$(curl -s http://169.254.169.254/latest/meta-data/placement/availability-zone)" == "us-east-1a" ]; then
    # Add us-east-1a specific configurations here
    echo "Configurations for us-east-1a"
elif [ "$(curl -s http://169.254.169.254/latest/meta-data/placement/availability-zone)" == "us-west-2a" ]; then
    # Add us-west-2a specific configurations here
    echo "Configurations for us-west-2a"
else
    # Default configurations
    echo "Default configurations"
fi
