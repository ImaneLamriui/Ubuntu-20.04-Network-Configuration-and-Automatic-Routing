#!/bin/bash
echo 1 > /proc/sys/net/ipv4/ip forward
iptables -t nat -A POSTROUTING -s 192.168.100.0/24 -d 0/0 -j MASQUERADE
exit 0