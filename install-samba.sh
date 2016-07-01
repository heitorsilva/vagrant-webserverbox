#!/bin/bash

sudo apt-get install samba -y
sudo mv /etc/samba/smb.conf /etc/samba/smb.conf.bkp
sudo mv /tmp/smb.conf /etc/samba/smb.conf
sudo /etc/init.d/samba restart