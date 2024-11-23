#!/usr/bin/env bash
chmod +x ./Lagrange.OneBot/*.sh
chmod +x ./Python/*.sh
# 函数：显示菜单
show_menu() {
    echo "欢迎使用安装程序"
    echo "请选择一个选项："
    echo "1. 安装 Lagrange.OneBot"
    echo "2. 安装 Python 环境"
    echo "3. 安装 NoneBot（NB-CIL）"
    echo "n. 退出"
}

# 函数：检查命令是否存在
command_exists() {
    command -v "$1" >/dev/null 2>&1
}

# 函数：执行安装脚本
execute_script() {
    if [ -x "$1" ]; then
        echo "正在执行 $2..."
        "$1"
    else
        echo "错误：需要 $2 脚本文件，但未找到或不可执行。" >&2
        exit 1
    fi
}

# 主循环
while true; do
    show_menu
    read -p "请输入数字 (1-n): " user_choice

    case $user_choice in
        1)
            echo "请选择一个选项来安装 Lagrange.OneBot："
            echo "1. Alpine Linux"
            echo "2. Arch Linux"
            echo "3. Debian"
            echo "4. macOS"
            echo "5. Raspberry Pi"
            echo "6. Ubuntu"
            echo "n. 返回上一级菜单"

            read -p "请输入数字 (1-n): " lag_choice

            case $lag_choice in
                1)
                    execute_script "./Lagrange.OneBot/Alpine-Linux(Lag).sh" "Lagrange.OneBot for Alpine Linux"
                    ;;
                2)
                    execute_script "./Lagrange.OneBot/Arch-Linux(Lag).sh" "Lagrange.OneBot for Arch Linux"
                    ;;
                3)
                    execute_script "./Lagrange.OneBot/Debian(Lag).sh" "Lagrange.OneBot for Debian"
                    ;;
                4)
                    execute_script "./Lagrange.OneBot/MacOS(Lag).sh" "Lagrange.OneBot for macOS"
                    ;;
                5)
                    execute_script "./Lagrange.OneBot/Raspberry-Pi(Lag).sh" "Lagrange.OneBot for Raspberry Pi"
                    ;;
                6)
                    execute_script "./Lagrange.OneBot/Ubuntu(Lag).sh" "Lagrange.OneBot for Ubuntu"
                    ;;
                n)
                    echo "返回上一级菜单..."
                    ;;
                *)
                    echo "无效的输入，请重新选择。"
                    ;;
            esac
            ;;
        2)
            echo "请选择一个选项来安装 Python 环境："
            echo "1. Alpine Linux"
            echo "2. Arch Linux"
            echo "3. Debian"
            echo "4. macOS"
            echo "5. Raspberry Pi"
            echo "6. Ubuntu"
            echo "n. 返回上一级菜单"

            read -p "请输入数字 (1-n): " python_choice

            case $python_choice in
                1)
                    execute_script "./Python/Alpine-Linux(Python).sh" "Python for Alpine Linux"
                    ;;
                2)
                    execute_script "./Python/Arch-Linux(Python).sh" "Python for Arch Linux"
                    ;;
                3)
                    execute_script "./Python/Debian(Python).sh" "Python for Debian"
                    ;;
                4)
                    execute_script "./Python/MacOS(Python).sh" "Python for macOS"
                    ;;
                5)
                    execute_script "./Python/Raspberry-Pi(Python).sh" "Python for Raspberry Pi"
                    ;;
                6)
                    execute_script "./Python/Ubuntu(Python).sh" "Python for Ubuntu"
                    ;;
                n)
                    echo "返回上一级菜单..."
                    ;;
                *)
                    echo "无效的输入，请重新选择。"
                    ;;
            esac
            ;;
        3)
            # 安装 pipx
echo "开始安装 pipx"
python -m pip install --user pipx
python -m pipx ensurepath
python3 -m pip install --user pipx
python3 -m pipx ensurepath
# 安装 NoneBot-CIL
echo "开始安装 NB-CIL"
pipx install nb-cli
echo "安装成功"
# execute_script "./NoneBot/NB-CIL.sh" "NoneBot (NB-CIL)"
            ;;
        n)
            echo "退出程序..."
            exit 0
            ;;
        *)
            echo "无效的输入，请重新选择。"
            ;;
    esac
done

echo "安装完成。"
