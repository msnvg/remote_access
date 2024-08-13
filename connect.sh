#!/bin/bash

sudo su

# Update package list
echo "Updating package list..."
sudo apt update

# Install required dependencies (if not already installed)
echo "Installing required dependencies..."
sudo apt install -y wget gdebi-core

# Download the RustDesk .deb file
echo "Downloading RustDesk..."
wget https://github.com/rustdesk/rustdesk/releases/download/1.2.7/rustdesk-1.2.7-x86_64.deb -O rustdesk-1.2.7-x86_64.deb

# Install the RustDesk .deb package
echo "Installing RustDesk..."
sudo gdebi -n rustdesk-1.2.7-x86_64.deb

# Clean up
echo "Cleaning up..."
rm rustdesk-1.2.7-x86_64.deb

echo "RustDesk installation complete."

echo "Running remote, once run please share the Desktop ID and One time password with support member"

rustdesk

