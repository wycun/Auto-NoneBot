#!/bin/bash

# 退出脚本，如果任何命令执行失败
set -e

# 定义Python版本
PYTHON_VERSION="3.13.0"

# 更新系统软件包
echo "更新系统软件包..."
sudo pacman -Syu --noconfirm

# 安装编译Python所需的依赖
echo "安装编译Python所需的依赖..."
sudo pacman -S --noconfirm --needed \
    base-devel \
    openssl \
    zlib \
    bzip2 \
    libffi \
    ncurses \
    sqlite \
    xz \
    wget

# 下载Python源码
echo "下载Python $PYTHON_VERSION..."
wget https://www.python.org/ftp/python/$PYTHON_VERSION/Python-$PYTHON_VERSION.tgz

# 解压源码
echo "解压Python $PYTHON_VERSION..."
tar -xf Python-$PYTHON_VERSION.tgz
cd Python-$PYTHON_VERSION

# 配置Python
echo "配置Python..."
./configure --enable-optimizations

# 编译Python
echo "编译Python..."
make -j $(nproc)

# 安装Python
echo "安装Python..."
sudo make altinstall

# 验证安装
echo "验证安装..."
python$PYTHON_VERSION --version

# 清理
echo "清理..."
cd ..
sudo rm -rf Python-$PYTHON_VERSION.tgz Python-$PYTHON_VERSION

echo "Python $PYTHON_VERSION 安装完成。"

