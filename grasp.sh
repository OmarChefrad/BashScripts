#!/bin/bash

# Check if Docker is already installed
if command -v docker &> /dev/null; then
    echo "Docker is already installed."
else
    # Install Docker
    echo "Installing Docker..."
    
    # Download the Docker installation script
    curl -fsSL https://get.docker.com -o get-docker.sh

    # Run the installation script
    sudo sh get-docker.sh

    # Add your user to the docker group to run Docker commands without sudo
    sudo usermod -aG docker $USER

    # Clean up
    rm get-docker.sh

    echo "Docker has been installed. Please log out and log back in to apply the changes."
fi
