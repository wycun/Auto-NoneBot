# 安装 pipx
echo "开始安装 pipx"
python -m pip install --user pipx
python -m pipx ensurepath
# 安装 NoneBot-CIL
echo "开始安装 NB-CIL"
pipx install nb-cli
