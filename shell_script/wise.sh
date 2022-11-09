echo "nameserver 10.47.2.2" > /etc/resolv.conf
echo "nameserver 10.47.3.2" >> /etc/resolv.conf
echo "nameserver 192.168.122.1" >> /etc/resolv.conf
apt-get update
apt-get install bind9 -y
echo "
options {
        directory \"/var/cache/bind\";
        forwarders {
                8.8.8.8;
                8.8.8.4;
        };
        allow-query { any; };
        auth-nxdomain no; 
        listen-on-v6 { any; };
};
" > /etc/bind/named.conf.options
service bind9 restart