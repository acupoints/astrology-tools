# STEPS

## 上传下载
```bash
npm config set registry https://registry.npm.taobao.org
npm config set registry https://registry.npmjs.org/

npm install -g create-react-app
npx create-react-app web
cp Dockerfile web/
# rm -rf web/node_modules/
scp -r ../astrology-tools/ gullies@10.5.12.115:/home/gullies
scp -r docker-react-app\ gullies@192.168.56.112:~

```

## 查看源码
```bash

docker build -t <tag_name> .
docker run -d -p 8080:80 <tag_name>
docker logs <ctr_id>
docker ps
## 只返回运行中的所有容器的id
docker ps -q

docker ps -a
## 只返回不再运行的所有容器的id
docker ps -aq

docker run -it --rm -d -p 8080:80 --name web -v /home/gullies/site-content:/usr/share/nginx/html nginx
docker stop web
docker exec -it web bash
docker exec -it web /bin/bash

## 携带响应头信息返回
curl -i localhost:8080
```

## 打开端口
```bash
# nginx:1.19.5
firewall-cmd --zone=public --add-port=80/tcp --permanent
firewall-cmd --zone=public --add-port=443/tcp --permanent
firewall-cmd --zone=public --add-port=8000/tcp --permanent
# postgres:12.5
firewall-cmd --zone=public --add-port=5432/tcp --permanent
# redis:5.0.10
firewall-cmd --zone=public --add-port=6379/tcp --permanent
# mysql:5.7.32
firewall-cmd --zone=public --add-port=3306/tcp --permanent
# mongo:4.4.2
firewall-cmd --zone=public --add-port=27017/tcp --permanent
firewall-cmd --reload
firewall-cmd --list-ports

```


