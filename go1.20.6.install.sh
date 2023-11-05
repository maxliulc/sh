#!/bin/bash

wget https://golang.google.cn/dl/go1.20.6.linux-amd64.tar.gz      #安装
tar -zxvf go1.20.6.linux-amd64.tar.gz -C /usr/local/              #解压

echo "PATH=\$PATH:/usr/local/go/bin" >> /etc/profile
echo "PATH=\$PATH:/usr/local/go/bin" >> ~/.bashrc
source /etc/profile

#go版本
go version
