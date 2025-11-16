#!/bin/bash
# This script will run on instance startup to install updates and a web server

# Update the package repository
yum update -y

# Install Apache web server
yum install -y httpd

# Start the Apache service
systemctl start httpd

# Enable Apache to start on boot
systemctl enable httpd

# Create a simple HTML file
echo "<h1>Welcome to your EC2 instance!</h1>" > /var/www/html/index.html