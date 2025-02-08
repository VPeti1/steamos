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


if [[ -f /etc/os-release ]]; then
    . /etc/os-release
    if [[ "$ID" == "arch" ]]; then
        echo "The system is running Arch Linux."
        git checkout upstream
    elif [[ "$ID" == "steamos" ]]; then
        echo "The system is running SteamOS."
        git checkout downstream
    else
        echo "The system is not Arch Linux or SteamOS!"
        exit 1

    fi
else
    echo "/etc/os-release not found. Unable to determine the OS."
    exit 1
fi

sudo chmod +x ./mkarchiso
sudo ./mkarchiso -v ./
