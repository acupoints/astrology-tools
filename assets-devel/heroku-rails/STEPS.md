# STEPS

## STEP-01
```bash
touch .dockerignore
touch Dockerfile
touch docker-compose.yml
# touch STEPS.md

# scp -r temp2/ gullies@192.168.56.112:~
docker rm $(docker ps -aq)
docker rmi $(docker images | grep none | awk '{print $3}')

##
# Gemfile
# ruby '2.6.5'
ruby '2.6.6'
# gem 'sqlite3', '~> 1.4'
gem 'sqlite3', '~> 1.3', '>= 1.3.13'

docker build .n --network=host
# docker images
## Clear history
docker-compose down -v
docker rm $(docker ps -aq)
docker rmi $(docker images | grep none | awk '{print $3}')
docker rmi web01
###

docker-compose up -d

docker build -t web01 . --network=host
docker run -it web01 sh
bundle exec rails webpacker:install
bundle exec rails server -u puma -b 0.0.0.0

```