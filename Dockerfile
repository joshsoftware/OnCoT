# Dockerfile
# gets the docker parent image
FROM ruby:3.0.0

RUN apt-get update

RUN mkdir -p /var/app

WORKDIR /var/app

RUN gem install bundler:2.2.3

ADD Gemfile Gemfile.lock /var/app/
RUN bundle install
COPY . /var/app/

#CMD rails s -b 0.0.0.0