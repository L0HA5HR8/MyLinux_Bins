# MyLinux_Bins
Just a couple shortcut commands to add to /etc/bin and a script to help with CTF initial box scanning.

## These aliases help me move a little quicker on the keyboard as I find myself typing them often.
- The "addy" file is an ifconfig shortcut to print only your IP address and "taddy" is the same thing but for your tunnel IP address.
- The "lst" file will be used as an alias for "ls -la" as you won't have to reach for the "-" in the command.
## I found myself doing these organizational tasks on every box while prepping for the OSCP and in THM and HTB, so I automated it.
- The file "newbox" needs to be sent to /etc/bin or at least linked there and will act as an all-encompassing command to run an Nmap scan and set up your directories for attacking a standard type box on TryHackMe or HackTheBox. The details for execution are in the comments of the code but put simply:
     - The script will ask for a box name and IP address
     - You should be prompted for sudo privileges and must enter the password
     - Then it will set variables and create directories
          - BoxDirectory then, Scans, Scans/Nmap, Scans/Dirs, Resources, Resources/ScreenShots, Resources/Scripts
     - Next, the script will create a markdown file with the same name as the box that you gave it and the main directory
     - Then it will add the name and IP address to the file, as well as, sections for Enumeration, Resources, Exploits, PostEx, and PrivEsc. This will be your notes file to keep track 
       of everything you do. Once complete it is tasked to open the file in SublimeText with an option for VSCode if you prefer.
     - It will then move into the Scans/Nmap directory and begin the Nmap scans. 3 of them. The scan results will be in XML. 
     - Once all the scans are complete, it will change the XML files to HTML for visual quality for any reports you would want to do.
     - Once it is done, it will move back to the top of the directory tree and recursively remove all root-only privs from the superseding files.
## The other newbox files are only older/shorter versions of the same project
     - The file labeled "Th30hm" is a simple terminal header graphic I made for my personal cli's
