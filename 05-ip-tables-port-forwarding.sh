iptables -A PREROUTING -t nat -i eth0 -p tcp --dport 80 -j DNAT --to 192.168.49.2:31103
iptables -A FORWARD -p tcp -d 192.168.49.2 --dport 31103 -j ACCEPT

sudo iptables -t nat -A OUTPUT -o lo -p tcp --dport 80 -j REDIRECT --to-port 31103

iptables -t nat -A PREROUTING -i eth0 -p tcp --dport 80 -j DNAT --to-destination :31103