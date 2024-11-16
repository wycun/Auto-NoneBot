@echo off
SETLOCAL ENABLEDELAYEDEXPANSION

:: 定义安装包的URL
set PACKAGE_URL=https://github.com/LagrangeDev/Lagrange.Core/releases/download/nightly/Lagrange.OneBot_win-x64_net8.0_SelfContained.zip

:: 定义安装包的名称
set PACKAGE_NAME=Lagrange.OneBot_win-x64_net8.0_SelfContained.zip

:: 定义安装目录
set INSTALL_DIR=C:\Lagrange.OneBot

:: 创建安装目录
echo 创建安装目录...
mkdir %INSTALL_DIR%

:: 下载安装包
echo 正在从GitHub下载安装包...
powershell -Command "Invoke-WebRequest -Uri %PACKAGE_URL% -OutFile %PACKAGE_NAME%"

:: 检查是否成功下载
if not exist %PACKAGE_NAME% (
    echo 下载失败，请检查网络连接或链接的有效性。
    exit /b 1
)

:: 解压安装包
echo 解压安装包...
powershell -Command "Expand-Archive -Path %PACKAGE_NAME% -DestinationPath %INSTALL_DIR%"

:: 清理下载的安装包
echo 清理下载的安装包...
del %PACKAGE_NAME%

:: 设置运行权限（Windows通常不需要设置执行权限）

:: 运行Lagrange.OneBot
echo 运行Lagrange.OneBot...
start "" "%INSTALL_DIR%\Lagrange.OneBot/bin/Release/net8.0/win-x64/publish/Lagrange.OneBot.exe"

echo Lagrange.OneBot安装和运行完成！
endlocal
