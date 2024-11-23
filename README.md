# Auto-NoneBot
自动部署 Nonebot / QQ协议 / Python(3.13.0)

# 程序下载 (Linux/Windows 系统)
```sh

git clone https://github.com/wycun/Auto-NoneBot.git && cd Auto-NoneBot

```

# 运行程序 (Linux 系统)
```sh

sudo chmod +x 启动.sh && sudo ./启动.sh

```

# 运行程序 (Windows 系统)
```sh

Start-Process -FilePath ".\启动.bat" -Verb RunAs

```


# 运行 Lagrange.OneBot程序 (Linux 系统)

###  MacOS | Alpine-Linux

```sh

INSTALL_DIR="/usr/local/Lagrange.OneBot" && chmod +x $INSTALL_DIR/Lagrange.OneBot/bin/Release/net8.0/linux-x64/publish/Lagrange.OneBot && echo "设置运行权限..." && $INSTALL_DIR/Lagrange.OneBot/bin/Release/net8.0/linux-x64/publish/Lagrange.OneBot && echo "Lagrange.OneBot运行完成！"

```
### Ubuntu | Debian | Raspberry-Pi | Arch-Linux
```sh

INSTALL_DIR="/opt/Lagrange.OneBot" && chmod +x $INSTALL_DIR/Lagrange.OneBot/bin/Release/net8.0/linux-x64/publish/Lagrange.OneBot && echo "设置运行权限..." && $INSTALL_DIR/Lagrange.OneBot/bin/Release/net8.0/linux-x64/publish/Lagrange.OneBot && echo "Lagrange.OneBot运行完成！"

```


# 运行 Lagrange.OneBot程序 (Windows 系统)

###  Windows | PowerShell

```sh

set INSTALL_DIR=C:\Lagrange.OneBot && echo 运行Lagrange.OneBot... && start "" "%INSTALL_DIR%\Lagrange.OneBot/bin/Release/net8.0/win-x64/publish/Lagrange.OneBot.exe" && echo Lagrange.OneBot 运行完成！

```


