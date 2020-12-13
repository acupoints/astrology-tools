FROM ruby:2.6.6

RUN mkdir -p /home/app
WORKDIR /home/app

ENV PORT 3000

EXPOSE $PORT

RUN gem install bundler
RUN gem install rails

RUN apt-get update -qq
RUN apt-get install -y curl vim
RUN curl -sL https://deb.nodesource.com/setup_12.x | bash -
RUN curl -sL https://dl.yarnpkg.com/debian/pubkey.gpg | apt-key add -
RUN echo "deb https://dl.yarnpkg.com/debian/ stable main" | tee /etc/apt/sources.list.d/yarn.list
RUN apt-get update -qq && apt-get install -y yarn

ENTRYPOINT [ "/bin/bash" ]