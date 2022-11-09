echo nameserver 192.168.122.1 > /etc/resolv.conf
apt-get update
apt-get install isc-dchp-server -y
# edit file /etc/default/isc-dhcp-server
echo "INTERFACES=\"eth0\"" > /etc/default/isc-dhcp-server
# edit file /etc/dhcp/dhcpd.conf

echo "subnet 10.47.2.0 netmask 255.255.255.0 {
}
subnet 10.47.1.0 netmask 255.255.255.0 {
    range 10.47.1.50 10.47.1.88;
    range 10.47.1.120 10.47.1.155;
    option routers 10.47.1.1;
    option broadcast-address 10.47.1.255;
    option domain-name-servers 10.47.2.2;
    default-lease-time 300;
    max-lease-time 6900;
}
subnet 10.47.3.0 netmask 255.255.255.0 {
    range  10.47.3.10 10.47.3.30;
    option routers 10.47.3.1;
    option broadcast-address 10.47.3.255;
    option domain-name-servers 10.47.2.2;
    default-lease-time 600;
    max-lease-time 6900;
}
host Eden {
    hardware ethernet 52:d7:62:29:f2:7f;
    fixed-address 10.47.3.13;
}
" > /etc/dhcp/dhcpd.conf
service isc-dhcp-server restart