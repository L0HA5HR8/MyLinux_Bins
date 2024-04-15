#!/bin/bash

#run with:  ./NewBox.sh

#Set our NAME and IP variables
echo -n "What is the name of the new box?: "
read Box
echo -n "What is the IP address of $Box?: "
read IP 
echo $(IP=$IP)

#Make foler for work to go and move into it...
mkdir ./$Box
cd $Box

#Make folders for notes and scans etc.
mkdir Scans ScreenShots Nmap Scripts Resources


#Create notes file and open
echo "# 	$Box 	$IP" > $Box.md
echo " " >> $Box.md
echo "#	Enummeration" >> $Box.md
echo " " >> $Box.md
echo "#	Resources" >> $Box.md
echo " " >> $Box.md
echo "#	Exploits" >> $Box.md
echo " " >> $Box.md
echo "#	PostEx Enum" >> $Box.md
echo " " >> $Box.md
echo "#	PrivEsc" >> $Box.md
echo " " >> $Box.md
echo "#	Notes" >> $Box.md
echo " " >> $Box.md
echo "##		End 	##" >> $Box.md

touch "$Box.Outline.md"
echo "#	$Box $IP" > "$Box.Outline.md"
subl $Box.md
subl "$Box.Outline.md"


#Make Scan folder and start scanning...
cd Nmap
nmap -sV -Pn -T4 -oN Nmap $IP

echo " ----------------------------------------------------------| "
echo "| Directories made, scan completed, EXPLOIT $IP!!!         |"
echo "| Save everything, screenshot it all! Try Harder!!!        |" 
echo " ----------------------------------------------------------|"


#--Now you can move into the Nmap folder and 
#--start your other scans