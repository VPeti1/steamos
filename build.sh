#!/bin/bash
set -e

if command -v pacman &> /dev/null
then
    echo "Pacman found"
else
    echo "Pacman not found"
    exit 1
fi

if command -v git &> /dev/null
then
    echo "Git found"
else
    echo "Git not found"
    exit 1
fi

git fetch --all

echo "Do you want to check the Git branch's upstream or downstream?"
echo "1. Upstream"
echo "2. Downstream"
read -p "Please enter 1 for Upstream or 2 for Downstream: " choice

if [[ "$choice" -eq 1 ]]; then
    git checkout upstream
elif [[ "$choice" -eq 2 ]]; then
    git checkout downstream
else
    echo "Invalid choice. Please select 1 or 2."
    exit 1
fi

sudo chmod +x ./mkarchiso
sudo ./mkarchiso -v ./
