#!/bin/bash

# 

# Install Git
echo "Installing Git..."
winget install --id Git.Git -e --source winget

# Install OpenSSH Client
echo "Installing OpenSSH Client..."
Add-WindowsCapability -Online -Name OpenSSH.Client~~~~0.0.1.0

# Install GPS tools
echo "Installing GPS tools..."
winget install --id GPSBabel.GPSBabel -e --source winget

# Verify installations
echo "Verifying installations..."

# Check Git
if command -v git &> /dev/null; then
    echo "Git installed successfully. Version: $(git --version)"
else
    echo "Git installation failed."
fi

# Check SSH
if command -v ssh &> /dev/null; then
    echo "SSH installed successfully. Version: $(ssh -V 2>&1)"
else
    echo "SSH installation failed."
fi

# Check GPS tools
if command -v gpsbabel &> /dev/null; then
    echo "GPS tools installed successfully. Version: $(gpsbabel -V)"
else
    echo "GPS tools installation failed."
fi

echo "Installation process completed."