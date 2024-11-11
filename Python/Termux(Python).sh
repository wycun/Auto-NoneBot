echo "更新软件包索引..."
pkg update
echo "安装Python..."
pkg install python
echo "验证Python安装..."
python --version
echo "Python安装完成。"