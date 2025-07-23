#!/bin/bash
# DNS Forwarding VM configuration
sudo apt update
sudo apt install bind9 -y

cat <<EOF | sudo tee /etc/bind/named.conf.options
options {
    directory "/var/cache/bind";
    forwarders {
        <ON_PREM_DNS_IP>;
    };
    dnssec-validation auto;
    auth-nxdomain no;
    listen-on-v6 { any; };
};
EOF

sudo systemctl restart bind9
