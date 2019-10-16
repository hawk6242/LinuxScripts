#!/bin/bash

#For Ubuntu Only
#removes the programs in the following list:
bloat="libreoffice-* transmission-* gnome-mines gnome-mahjongg gnome-orca gnome-sudoku cheese simple-scan aisleriot remmina thunderbird totem rhythmbox account-plugin* webapp-browser"


if [[ $(lsb_release -rs) > 16 ]]; then #this will run if the version of Ubuntu is greater than 16 
	for i in $bloat; do
		sudo apt purge $i -y
	done
	sudo apt autoremove -y
else #this will run if the version of Ubuntu is less than 16
	for i in $bloat; do
		sudo apt-get purge $i -y
	done
	sudo apt-get autoremove -y
fi
