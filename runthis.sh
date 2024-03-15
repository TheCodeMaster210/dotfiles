#!/bin/bash

# Check if running as root
if [ "$(id -u)" -ne 0 ]; then
    echo "This script must be run as root" 
    exit 1
fi

# Check for apt package manager
if ! command -v apt &>/dev/null; then
    echo "apt package manager not found. Exiting."
    exit 1
fi

# Determine if dnsutils is installed
if ! dpkg -s dnsutils &> /dev/null; then
    echo "dnsutils package not found. Installing dnsutils..."
    apt update
    apt install -y dnsutils
fi
if ! command -v nmap &> /dev/null; then
    echo "nmap not found. Installing nmap..."
    apt update
    apt install -y nmap
fi

# Update package repositories and install necessary packages
if ! command -v ninvaders &> /dev/null; then
    echo "ninvaders not found. Installing ninvaders..."
    apt update
    apt install -y ninvaders
fi

if ! command -v nsnake &> /dev/null; then
    echo "ninvaders not found. Installing ninvaders..."
    apt update
    apt install -y nsnake
fi
# Determine if AWS CLI is installed
if ! command -v aws &> /dev/null; then
    echo "AWS Command Line Interface not found. Installing AWS CLI..."
    apt update
    apt install -y awscli
fi
if ! command -v conda &> /dev/null; then
    echo "Anaconda not found. Installing Anaconda..."
    # Download Anaconda installer
    curl -O https://repo.anaconda.com/archive/Anaconda3-2021.11-Linux-x86_64.sh
    # Run Anaconda installer
    bash Anaconda3-2021.11-Linux-x86_64.sh -b -p $HOME/anaconda3
    # Add Anaconda to PATH
    echo 'export PATH="$HOME/anaconda3/bin:$PATH"' >> $HOME/.bashrc
    source $HOME/.bashrc
    # Clean up installer
    rm Anaconda3-2021.11-Linux-x86_64.sh
    echo "Anaconda installed successfully."
fi
