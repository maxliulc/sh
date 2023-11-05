#!/bin/bash

wget https://golang.google.cn/dl/go1.20.6.linux-amd64.tar.gz      #安装
tar -zxvf go1.20.6.linux-amd64.tar.gz -C /usr/local/              #解压

if [[ -f ".bashrc" ]]; then
    echo "PATH=\$PATH:/usr/local/go/bin" >> ~/.bashrc            #将go所在目录添加到环境变量
    source ~/.bashrc
fi
if [[ -f ".zshrc" ]]; then
    echo "PATH=\$PATH:/usr/local/go/bin" >> ~/.zshrc             #将go所在目录添加到环境变量
    source ~/.zshrc
fi

#go版本
go version
