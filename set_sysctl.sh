#!/bin/bash

# 清空 /etc/sysctl.conf 的内容
> /etc/sysctl.conf

# 写入新的配置到 /etc/sysctl.conf
echo "net.ipv6.conf.all.disable_ipv6=1" >> /etc/sysctl.conf
echo "net.ipv6.conf.default.disable_ipv6=1" >> /etc/sysctl.conf
echo "net.ipv6.conf.lo.disable_ipv6=1" >> /etc/sysctl.conf
echo "net.core.default_qdisc=fq_pie" >> /etc/sysctl.conf
echo "net.ipv4.tcp_congestion_control=bbr" >> /etc/sysctl.conf

# 重新加载 sysctl 配置
sysctl -p
