#!/bin/bash

# 退出脚本，如果任何命令执行失败
set -e

# 更新系统软件包
echo "更新系统软件包..."
sudo apt-get update
sudo apt-get upgrade -y

# 检查预装Python版本
echo "检查预装Python版本..."
python3 --version

# 删除Python 2（可选）
echo "删除Python 2（可选）..."
sudo apt-get remove python2

# 安装特定版本的Python（例如Python 3.13.0）
PYTHON_VERSION="3.13.0"
echo "安装特定版本的Python（$PYTHON_VERSION）..."
wget https://www.python.org/ftp/python/$PYTHON_VERSION/Python-$PYTHON_VERSION.tgz
tar -zxvf Python-$PYTHON_VERSION.tgz
cd Python-$PYTHON_VERSION

# 编译安装Python
echo "编译安装Python..."
sudo ./configure && sudo make && sudo make install

# 创建软链接
echo "创建软链接..."
sudo ln -s /usr/local/bin/python$PYTHON_VERSION /usr/bin/python$PYTHON_VERSION

# 测试安装
echo "测试安装..."
python$PYTHON_VERSION --version

# 安装pip
echo "安装pip..."
sudo apt-get install python3-pip

# 更换pip镜像源（可选）
echo "更换pip镜像源（可选）..."
pip3 config set global.index-url https://pypi.tuna.tsinghua.edu.cn/simple

# 安装常用库（可选）
echo "安装常用库（可选）..."
pip3 install numpy pandas matplotlib

echo "Python 安装完成。"
