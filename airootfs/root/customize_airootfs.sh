#!/bin/bash
chmod +x /home/deck/Desktop/*
chmod +x /home/deck/tools/*
systemctl enable sddm
useradd -M deck -g deck
chown -R deck /home/deck
loadkeys hu
