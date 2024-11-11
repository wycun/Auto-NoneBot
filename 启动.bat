@echo off
:choice
cls
echo 请选择一个选项:
echo 1. 安装 Python 环境
echo 2. 安装 NoneBot（NB-CIL）
echo 3. 安装 NoneBot（NB-CIL）
echo 4. 退出
set /p user_choice="请输入数字 (1-3): "

if "%user_choice%"=="1" (
    echo 安装 Python 环境
    :: 安装Python环境
    call ./Python/Windows(Python).bat
    echo Python 环境 安装完成
    ::pause
    goto choice
)else if "%user_choice%"=="2" (
    echo 安装 NoneBot 框架
    :: 安装 NoneBot 框架
    call ./NoneBot/NB-CIL.bat
    echo NoneBot 框架 安装完成
    ::pause
    goto choice
)else if "%user_choice%"=="3" (
    echo 安装 Lagrange.OneBot QQ登录协议
    :: 安装 NoneBot 框架
    call ./Lagrange.OneBot/Windows(Lag).bat
    echo Lagrange.OneBot QQ登录协议 安装完成
    ::pause
    goto choice
)else if "%user_choice%"=="4" (
    echo 退出程序...
    exit
)else (
    echo 无效的输入，请重新选择。
    goto choice
)
