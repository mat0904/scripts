#!/bin/bash

if [ "$EUID" -eq 0 -o "$UID" -eq 0 ]
	then
		echo "Installing"
		sudo rpm --import https://packagecloud.io/shiftkey/desktop/gpgkey
		sudo sh -c 'echo -e "[shiftkey]\nname=GitHub Desktop\nbaseurl=https://packagecloud.io/shiftkey/desktop/el/7/\$basearch\nenabled=1\ngpgcheck=0\nrepo_gpgcheck=1\ngpgkey=https://packagecloud.io/shiftkey/desktop/gpgkey" > /etc/yum.repos.d/shiftkey-desktop.repo'
		sudo dnf install github-desktop -y
		exit
else
	echo "Must be sudo"
	exit
fi
