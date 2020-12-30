# mysteps

## 01
```bash
192.168.56.116
gem install bundler:1.17.3

docker-compose run web rake db:create
docker-compose run web rake db:migrate

docker-compose exec web rails db:migrate
docker-compose exec web rails db:reset

docker-compose exec web rails console
# 查看环境变量
docker-compose run web rails c
ENV['DATABASE_URL']
# 创建数据库
docker-compose run web rake db:create
# 迁移数据模型
docker-compose run web rake db:migrate

# 查看IP地址
docker-compose exec web cat /etc/hosts
docker-compose exec redis cat /etc/hosts
docker-compose exec postgres cat /etc/hosts
docker-compose exec postgres cat /usr/share/postgresql/postgresql.conf.sample
docker-compose exec postgres cat /usr/share/postgresql/postgresql.conf.sample |grep listen_addresses

docker-compose exec db cat /usr/share/postgresql/postgresql.conf.sample
docker-compose exec db cat /usr/share/postgresql/postgresql.conf.sample |grep listen_addresses

## 进入交互SHELL
docker-compose exec postgres bash
docker rmi heroku-ruby-boilerplate_web

#####################################################
##
docker-compose down -v
docker rmi heroku-ruby-boilerplate_web
docker rmi $(docker images | grep none | awk '{print $3}')
docker stop $(docker ps -aq)
docker rm $(docker ps -aq)

docker-compose up -d

/app # busybox-extras telnet localhost 5432
/app # busybox-extras telnet 172.26.0.2 5432

# 192.168.56.116
# scp -r heroku-ruby-boilerplate\ gullies@192.168.56.116:~
192.168.56.112
scp -r heroku-ruby-boilerplate/ gullies@192.168.56.112:~


# docker stop $(docker ps -aq)
# docker rm $(docker ps -aq)

# docker-compose up -d

# docker-compose exec postgres ln -s /tmp/.s.PGSQL.5432 /var/run/postgresql/.s.PGSQL.543
docker-compose exec web rake db:migrate
docker-compose exec postgres cat /etc/hosts

docker-compose exec web cat /etc/hosts
docker-compose exec web sh

curl -X POST 'http://localhost:3000/fyrb_users' -d 'name=admin&username=admin&email=admin@qq.com&password=Umph2014$@&password_confirmation=Umph2014$@'

# docker容器内可以ping，但无法联网curl问题解决
firewall-cmd --zone=public --add-masquerade --permanent
firewall-cmd --reload
systemctl restart docker
#####################################################
docker-compose run web rake db:migrate
###
http://dl-cdn.alpinelinux.org/alpine/v3.11/community

https://zl-cdn.fy1m.cn/app/dl/v3.11/community

docker-compose logs

docker-compose exec postgres ln -s /tmp/.s.PGSQL.5432 /var/run/postgresql/.s.PGSQL.543
ln -s /var/run/postgresql/.s.PGSQL.5432 /tmp/

```
