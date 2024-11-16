#!/bin/bash

# 定义安装包的URL
PACKAGE_URL="https://github.com/LagrangeDev/Lagrange.Core/releases/download/nightly/Lagrange.OneBot_linux-x64_net8.0_SelfContained.tar.gz"

# 定义安装包的名称
PACKAGE_NAME="Lagrange.OneBot_linux-x64_net8.0_SelfContained.tar.gz"

# 定义安装目录
INSTALL_DIR="/opt/Lagrange.OneBot"
# 创建安装目录
echo "创建安装目录..."
mkdir -p $INSTALL_DIR

# 下载安装包
echo "正在从GitHub下载安装包..."
wget -O $PACKAGE_NAME $PACKAGE_URL

# 检查是否成功下载
if [ ! -f "$PACKAGE_NAME" ]; then
    echo "下载失败，请检查网络连接或链接的有效性。"
    exit 1
fi

# 解压安装包
echo "解压安装包..."
tar -xzf $PACKAGE_NAME -C $INSTALL_DIR

# 清理下载的安装包
echo "清理下载的安装包..."
rm -f $PACKAGE_NAME

echo "Lagrange.OneBot下载、解压、文件移动和清理完成！"

# 设置运行权限
echo "设置运行权限..."
chmod +x $INSTALL_DIR/Lagrange.OneBot/bin/Release/net8.0/linux-x64/publish/Lagrange.OneBot
# 运行Lagrange.OneBot
echo "运行Lagrange.OneBot..."
$INSTALL_DIR/Lagrange.OneBot/bin/Release/net8.0/linux-x64/publish/Lagrange.OneBot
