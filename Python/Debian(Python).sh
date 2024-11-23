#!/bin/bash

# 退出脚本，如果任何命令执行失败
set -e

# 定义Python版本
PYTHON_VERSION="Python-3.13.0"

# 更新系统包索引
echo "更新系统包索引..."
sudo apt-get update

# 安装编译Python所需的依赖
echo "安装编译Python所需的依赖..."
sudo apt-get install -y wget build-essential libssl-dev zlib1g-dev libbz2-dev \
libreadline-dev libsqlite3-dev libffi-dev liblzma-dev

# 下载Python源码
echo "下载$PYTHON_VERSION..."
wget https://www.python.org/ftp/python/3.13.0/$PYTHON_VERSION.tgz

# 解压源码=
echo "解压$PYTHON_VERSION..."
tar -xf $PYTHON_VERSION.tgz
cd $PYTHON_VERSION

# 配置Python
echo "配置$PYTHON_VERSION..."
./configure --enable-optimizations

# 编译Python
echo "编译$PYTHON_VERSION..."
make -j $(nproc)  # 使用所有可用的CPU核心来加速编译

# 安装Python
echo "安装$PYTHON_VERSION..."
sudo make altinstall

# 验证安装
echo "验证安装..."
python3.13 --version

# 清理
echo "清理..."
cd ..
sudo rm -rf $PYTHON_VERSION.tgz $PYTHON_VERSION

echo "$PYTHON_VERSION 安装完成。"

python3 --version