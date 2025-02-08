# SteamOS 3 leaked recovery image build files
# ISO download for upstream (external):
https://drive.proton.me/urls/1GB1G1996G#wt1gGgGcPQjs
# ISO download for upstream (Github):
https://github.com/VPeti1/steamos/releases/tag/isov1
# How to build (Manual)
## Clone the repo
git clone https://github.com/VPeti1/steamos.git
## Select branch
git fetch --all && git checkout [upstream]
## Build it
sudo ./mkarchiso -v ./
### Upstream:
You need to be using Arch linux 
## Downstream:
You need to be using SteamOS 3.5.x
# How to build (automatic):
## Clone the repo
git clone https://github.com/VPeti1/steamos.git
## CHMOD the build script
chmod +x build.sh
## Run the script
./build
# Password
The password for the deck user is deck