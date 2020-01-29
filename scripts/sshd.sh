#!/bin/sh

echo "UseDNS no" >>/etc/ssh/sshd_config;
echo "GSSAPIAuthentication no" >>/etc/ssh/sshd_config;
echo "PermitRootLogin no" >> /etc/ssh/sshd_config;

sudo systemctl restart sshd