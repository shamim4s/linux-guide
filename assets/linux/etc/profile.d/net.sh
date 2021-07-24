#!/bin/sh
clear
echo  "GRUB_GFXPAYLOAD_LINUX=800x600" >> "/etc/default/grub"
update-grub
clear
echo  " Resizing Disk for the first time"
parted ---pretend-input-tty <<EOD
resizepart
fix
1
Yes
100%
quit
EOD
resize2fs /dev/sda1
ssh-keygen -A
systemctl restart ssh
cp -f /etc/others/sources.list /root/sources.list
mv /etc/apt/sources.list /etc/apt/sources.list.old
cp -f /etc/others/sources.list /etc/apt/sources.list
clear
echo ""
echo "----------------------------------------------------------"
echo " Welcome To Ubuntu Cloud Official "
echo "----------------------------------------------------------"
sleep 0.5
echo "Please wait i'm working for configure your network"
sleep 0.5
echo "Connection for the first time"
sleep 0.5
echo "it will take few seconds "
sleep 0.5
rm /etc/netplan/*.yaml
sleep 0.5
network_name_all=$(ip -o link show | awk -F': ' '{print $2}')
echo "Your all network interface name "$network_name_all
sleep 0.5
network_name=$(echo $network_name_all  | awk -- '{print $2}')
echo "Your main network interface name "$network_name
sleep 0.5
echo "First time configuring your network for " $network_name
echo  "network:" >> "/etc/netplan/"$network_name".yaml"
echo  "  version: 2" >> "/etc/netplan/"$network_name".yaml"
echo  "  renderer: networkd" >> "/etc/netplan/"$network_name".yaml"
echo  "  ethernets:" >> "/etc/netplan/"$network_name".yaml"
echo  "   "$network_name":" >> "/etc/netplan/"$network_name".yaml"
echo  "     dhcp6: true" >> "/etc/netplan/"$network_name".yaml"
echo  "     dhcp4: true" >> "/etc/netplan/"$network_name".yaml"
netplan apply
echo  "Network Configuration Completed"
echo "Finish"
echo "Now you can start working"
echo "You can change your password by command 'passwd root'"
echo "Thank you"
rm /etc/profile.d/net.sh
echo "----------------------------------------------------------"