#!/bin/bash

# 更新系统
sudo apt update && sudo apt upgrade -y

# 安装桌面环境和 XRDP
sudo apt install -y ubuntu-desktop xrdp
sudo systemctl enable --now xrdp

# 创建新用户并添加到 sudo 组
read -p "请输入新用户名: " username
sudo adduser "$username"
sudo usermod -aG sudo "$username"

# 安装简体中文支持
sudo apt install -y language-pack-zh-hans fonts-wqy-zenhei fonts-wqy-microhei
sudo update-locale LANG=zh_CN.UTF-8

# 安装 Snap 和 Snap Store
sudo apt install -y snapd
sudo snap install snap-store

# 提示完成并要求重启
echo "安装完成，请重启系统后登录桌面环境。"
