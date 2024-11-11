#!/bin/bash

# 退出脚本，如果任何命令执行失败
set -e

# 定义Python版本
PYTHON_VERSION="3.13.0"

# 检查Homebrew是否已安装
if ! command -v brew &> /dev/null
then
    echo "Homebrew 未安装。正在安装 Homebrew..."
    /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
fi

# 更新Homebrew的本地数据库
echo "更新Homebrew的本地数据库..."
brew update

# 安装Python
echo "使用Homebrew安装Python $PYTHON_VERSION..."
brew install python@$PYTHON_VERSION

# 验证安装
echo "验证安装..."
python3.$PYTHON_VERSION --version

echo "Python $PYTHON_VERSION 安装完成。"
