FROM ruby:2.6.6-alpine
RUN apk update && apk add nodejs nodejs-dev sqlite-dev yarn build-base libxml2-dev libxslt-dev
RUN apk add vim curl
RUN gem install bundler

RUN mkdir /app
WORKDIR /app
COPY Gemfile ./Gemfile
COPY Gemfile.lock ./Gemfile.lock
RUN bundle install -j 20
COPY . .
RUN bundle exec rails webpacker:install
