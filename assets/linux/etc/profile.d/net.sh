#!/bin/sh
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
echo ""
network_name_all=$(ip -o link show | awk -F': ' '{print $2}')
echo "Your all network interface name "$network_name_all
echo ""
sleep 0.5
network_name=$(echo $network_name_all  | awk -- '{print $2}')
echo ""
echo "Your main network interface name "$network_name
sleep 0.5
echo "configuring your network for " $network_name
echo  "network:" >> "/etc/netplan/"$network_name".yaml"
echo  "  version: 2" >> "/etc/netplan/"$network_name".yaml"
echo  "  renderer: networkd" >> "/etc/netplan/"$network_name".yaml"
echo  "  ethernets:" >> "/etc/netplan/"$network_name".yaml"
echo  "   "$network_name":" >> "/etc/netplan/"$network_name".yaml"
echo  "     dhcp6: true" >> "/etc/netplan/"$network_name".yaml"
echo  "     dhcp4: true" >> "/etc/netplan/"$network_name".yaml"
netplan apply
echo ""
echo ""
echo "Finish"
echo "Now you can start working"
echo "Thank you"
rm /etc/profile.d/net.sh
echo "----------------------------------------------------------"