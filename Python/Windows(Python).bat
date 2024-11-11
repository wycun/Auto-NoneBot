# PowerShell脚本 - 在Windows上安装Python并设置安装目录在D盘

# 定义要安装的Python版本
$pythonVersion = "3.13.0"
$pythonUrl = "https://www.python.org/ftp/python/$pythonVersion/python-$pythonVersion-amd64.exe"

# 定义安装目录
$installDir = "D:\Python"

# 下载Python安装程序
Write-Host "正在下载Python..."
$installerPath = "$env:TEMP\python-$pythonVersion-amd64.exe"
Invoke-WebRequest -Uri $pythonUrl -OutFile $installerPath

# 安装Python
Write-Host "正在安装Python..."
Start-Process -FilePath $installerPath -Args "/quiet InstallAllUsers=1 PrependPath=1 TargetDir=$installDir" -Wait

# 移除安装程序
Remove-Item -Path $installerPath

# 验证安装
Write-Host "验证安装..."
python --version

Write-Host "Python安装完成。"
