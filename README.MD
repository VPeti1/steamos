# SteamOS 3 leaked recovery image build files
# ISO download for upstream:
https://drive.proton.me/urls/1GB1G1996G#wt1gGgGcPQjs
# How to build
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
