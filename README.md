# The-Useless-Terminal
This is a compilation of interesting and entertaining scripts compiled into one batch script called the linux terminal. I made this as a bored 14 year old and I hope someone can enjoy it as much as I do! :)

# Extended Description
I designed this program to help me along on my journey to learning how to become a hacker. As a 14 year old I had some basic programming knowledge and compiled tools that were simmilar to the ones I was learning how to use. The functionality on the majority of the tool's are non-existant or very questionable, with the exception of some scripts I developed that are actually pretty cool and usefull. All together there exists 75 different interactive tool's within the program including some easter eggs and a bit of sloppyness contrived from my lack of a goal for the "linux terminal."

What does this program do you may ask. This program has some working features out of the 75 tool's around 30 still work! For the other 45 tool's they either never worked from the start (designed for looks), they worked at one time and the API key or website that allow that tool to work has gone offline, a windows update or firewall update is blocking functionality. The majority of the program was coded in batch and if you understand batch then you can always look to see how to interact with the tools or modify the program to your liking.

# Installation
To install the linux terminal amd have it working the way it was designed you must
- First place the dependincies directly in your C drive.
- Next right click on the Linux Terminal.bat file and select edit to view the code. (This will be your guide as there are no instructions for the program)
- Navigate to lines 41 - 66 it will look like this
![c1](https://github.com/Matrix07ksa/Brute_Force/assets/149164084/3bb06993-4fa0-4ebe-8e76-d21b9e2d473b)
- The command to the right of the == are valid commands you can input on the main screen after booting the program
- Navigate to lines 149 - 203 it will look like this
![c2](https://github.com/Matrix07ksa/Brute_Force/assets/149164084/b499379d-350f-4ca3-8f34-4470f89a46d6)
![c3](https://github.com/Matrix07ksa/Brute_Force/assets/149164084/bc583abb-ef48-496b-b331-e2fdd44b8986)
- The commands after the == are valid commands you can you can input in the 'shell' (you can get to the shell by typing shell on after the boot screen!)
- Let's say you want to test the cookiestealer tool in the shell first you would type cookiestealer and be brought to an input with little context
- To see correct input for cookiestealer find cookiestealer in the code like this
![t1](https://github.com/Matrix07ksa/Brute_Force/assets/149164084/3acd1141-7d07-48be-a9ea-7619aa2ce674)
- Next look and see what is to the right of 'goto' and that will be where you need to navigate in the code to locate that tool's script
![t2](https://github.com/Matrix07ksa/Brute_Force/assets/149164084/da8c9143-4114-448a-820e-c291dd336c19)
![t3](https://github.com/Matrix07ksa/Brute_Force/assets/149164084/d1a39393-f96c-4efe-8d4e-bcedb86f1433)
- Now if you want to find the correct input just look for the 'if something == something goto something' and that will be the valid commands you can input to advance through the tool
![t4](https://github.com/Matrix07ksa/Brute_Force/assets/149164084/d995d860-6930-47ed-b4dd-40b789b6a20f)
- That is all you need to get the program working to it's current fullest ability.

# Usage
- You may type ```help``` on the main screens to display a list of usable commands

# Command List (non shell)
```
uname         "Displays current shell OS version"
locale        "View UTF-8 configuration on your system"
medusa        "Allows you to preform MITM attacks"
top           "View network traffic as network administrator"
shutdown      "Shutdown your computer"
pinglocalhost "Pings your local IP address"
hostshutdown  "Allows you to shutdown computers on your local network using a remote shutdown dialog"
tree          "The tree command allows you to view all files on your computer in a tree form"
netstat       "View and moniter live network trafic"
logout        "Logs the current user out"
exit          "Exits the terminal"
cmd           "Starts a Windows command prompt"
assoc         "View all dinamic librays"
tasklist      "Shows all active tasks running on your computer"
shell         "Access a Linux based terminal"
reboot        "Reboots your computer"
webpage       "Visit a website"
regedit       "Opens your computers registery"
restorepoint  "Creates a system restore point"
msgbox        "Displays a user configured message box"
scancomp      "Scans a specified directory for viruses"
```

# Command List (shell)
```
- ipmask        - masks a users IP address
- help          - Displays a list of usable commands
- uname         - Displays current version of the terminal
- exit          - Exits the terminal
- mkser         - Creates a customized server within the terminal
- mkdir         - Creates a customized directory within the terminal
- sudo          - Beta
- call.network  - Displays network status
- update        - Beta
- talkback      - Makes your computer speak to you
- del           - Deletes a specified File
- aprspoof      - Beta
- multitool     - A usefull tool for hacking
- grant.admin   - Dont worry about it
- sudo-ettercap - opens a version of ettercap made for windows
- msfconsole    - Netspoof, wicrack, hashcap, metasploit
- airview       - Use to monitor transactions on a local network
- proxylist     - Generates a list of usable proxys
- getip         - Opens a skype resolver
- sudo-wiscan   - Beta
- sqlinjection  - Gives you backdoor access to a voulnerable website
- proxyconfig   - Sets a custom proxy on a users network
- voicecon      - Connects to dial-up server
- ifconfig      - Displays Ip config
- streetcam     - Beta
- hoaxnet       - Used to create a fake network for man in the middle attacks
- skypebot      - Beta
- cookiestealer - Used for password exploits
- exitshell     - Exits the shell
- botinject     - injects a number of bots from an sql server to a network
- newid         - Spoofs mac address on local system
- netsteal      - Sniffs information on a target network
- cryptcrack    - Used to brute force hashes
- netdata       - Returns specified information about a users network
- appinstall    - Used to install applications from third-party software
- reversevpn    - Used to bypass a vpn
- siteopen      - Opens a specified site
- sqlserver      - Create ore login to a mySQL server
- webping       - Used to gather the ip addresses of websites
- cleaner       - Used to speed up your computer
- webattack     - Used to take a website offline
- phoneinject   - Used to exploit an android device
- serverconnect - Used to connect to a server
- puppyrat      - Used to create a windows payload for exploitation
- infosniper    - Gathers information about ip address
- packetbuilder - Used to send cutomized packets to  a network
- netbot        - Used to add a network to a botnet or server
- ps3info       - Beta
- iplogger      - Creates a customized link to gather ip addresses
- custompayload - Used to create customized payloads for exploitations
- viruscreator  - Used to create 1 of 10 AMAZING viruses
- airdump       - Used to hack wpa and wpa2 wifi passwords
- serverupload  - Used to upload a file to a server without authkey
- showarp       - Used to view arp
```

# Images

![1](https://github.com/blackmagic2023/The-Useless-Terminal/assets/149164084/d39d3a32-17f8-44ff-ada3-65b579703bef)
![2](https://github.com/Matrix07ksa/Brute_Force/assets/149164084/bd372a79-4b57-4fcb-9105-682585a0e1be)
![3](https://github.com/Matrix07ksa/Brute_Force/assets/149164084/0f0832f9-c307-46d5-9b18-4b60b96764cd)
![4](https://github.com/Matrix07ksa/Brute_Force/assets/149164084/7c123aaa-20d2-4f95-9ece-7fe6f2c09dec)
![e](https://github.com/Matrix07ksa/Brute_Force/assets/149164084/4392d7f8-e2fc-4ea2-b841-16cc541c329d)
![q](https://github.com/Matrix07ksa/Brute_Force/assets/149164084/492692fd-c07d-47a5-af53-f6945bd69fd2)
![r](https://github.com/Matrix07ksa/Brute_Force/assets/149164084/54370a30-3f16-401d-8f77-93e9e0a268a1)
![t](https://github.com/Matrix07ksa/Brute_Force/assets/149164084/484b7135-fb91-4066-8c38-1351f1ee8e4d)
![w](https://github.com/Matrix07ksa/Brute_Force/assets/149164084/e72a17ae-57ff-4180-91ab-4bd49f2377c6)
