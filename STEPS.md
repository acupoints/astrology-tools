# STEPS

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
##
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