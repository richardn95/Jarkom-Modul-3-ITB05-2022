echo "nameserver 10.47.2.2" > /etc/resolv.conf
echo "nameserver 10.47.3.2" >> /etc/resolv.conf
echo "nameserver 192.168.122.1" >> /etc/resolv.conf
apt-get update
apt-get install squid -y
mv /etc/squid/squid.conf /etc/squid/squid.conf.bak
touch /etc/squid/squid.conf

touch /etc/squid/acl.conf
echo "acl AVAILABLE_WORKING time MTWHF 08:00-17:00" > /etc/squid/acl.conf

echo "
include /etc/squid/acl.conf
include /etc/squid/acl-bandwith.conf

http_access allow AVAILABLE_WORKING
http_access deny all
acl WHITELIST dstdomain loid-work.com franky-work.com
http_access allow WHITELIST
http_port 8080
visible_hostname Berlint
http_access allow all" > /etc/squid/squid.conf
service squid restart
