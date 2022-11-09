iptables -t nat -A POSTROUTING -o eth0 -j MASQUERADE -s 10.47.0.0/16
apt-get update
apt-get install isc-dhcp-relay -y

echo "SERVERS=\"10.47.2.4\"
INTERFACES=\"eth1 eth3 eth2\"
OPTIONS=\"\"" > /etc/default/isc-dhcp-relay
service isc-dhcp-relay restart