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
docker-compose build
docker-compose run --rm --service-ports ruby_dev

rails new myapp && cd myapp
bundle update && bundle install

# bundle exec rails webpacker:install
rails server -p $PORT -b 0.0.0.0

```

##
```bash
# debconf: delaying package configuration, since apt-utils is not installed
# Warning: apt-key output should not be parsed (stdout is not a terminal)
```