## 安装 git
# sudo dnf install git -y
# git --version
# git config --global user.name "Gullies"
# git config --global user.email "1448991007@qq.com"

## 克隆备用工具库
git clone https://github.com/acupoints/astrology-tools.git

## 安装 docker-compose
mv astrology-tools/docker-compose-1.27.4/docker-compose-Linux-x86_64 /usr/local/bin/docker-compose
chmod +x /usr/local/bin/docker-compose
docker-compose --version

## 安装 docker-machine
mv astrology-tools/docker-machine-v0.16.2/docker-machine-Linux-x86_64 /usr/local/bin/docker-machine
chmod +x /usr/local/bin/docker-machine
docker-machine --version


