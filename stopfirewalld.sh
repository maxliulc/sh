#!/bin/bash

sysctl -w net.ipv4.ip_forward=1
sysctl -p

systemctl stop firewalld.service
systemctl disable firewalld.service

ip a

iptables -t nat -A POSTROUTING -s 192.168.90.0/24 -o eth0 -j MASQUERADE
iptables -A FORWARD -i eth0 -s 192.168.90.0/24 -j ACCEPT

iptables -nL -t nat
yum install -y iptables-services
systemctl enable iptables.service
service iptables save
