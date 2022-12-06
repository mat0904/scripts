#!/bin/bash

if [ "$EUID" -eq 0 -o "$UID" -eq 0 ]
	then
		sudo dnf install python3
		sudo dnf install python-pip
		sudo python3 -m pip install pcpp
		sudo curl https://raw.githubusercontent.com/Just1truc/Abricot-Norminette/main/get_abricot.sh | sh
		exit
else
	echo Must be sudo
	exit
fi
