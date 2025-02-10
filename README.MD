# UPDATE
Developement coninues on GitLab: https://gitlab.com/VPeti11/

# SteamOS 3 leaked recovery image build files

### ISO download for upstream:
https://github.com/VPeti1/steamos/releases/tag/isov2

https://drive.proton.me/urls/G143P5BBGW#UhhWOw0WQOGH

# Branches

## Upstream (Recommended)
SteamOS recovery with the regular Arch linux mirrors

## Downstream (Kinda official)
SteamOS recovery with the official Valve mirrors

# Building

## Requirements for Building:

You need to be using Arch Linux
See the patches that were made below

## Manual Building:

 Clone this repository.
 > git clone https://github.com/VPeti1/steamos.git

 Select your desired branch.
 > git fetch --all && git checkout [upstream/downstream]

 Make the customized mkarchiso script executable.
 > chmod +x ./mkarchiso

 Run 
 > sudo ./mkarchiso -v . 

## Automatic Building:

### Clone the repo

> git clone https://github.com/VPeti1/steamos.git

### CHMOD the build script

> chmod +x build.sh

### Run the script

> ./build

# Password

The password for the deck user is deck


# Variations
#### If you want to check out variations of this project read VERSIONS.md
