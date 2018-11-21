FROM ruby:2.5.3

RUN apt-get update && apt-get install -yq nodejs

RUN mkdir /app
WORKDIR /app

COPY . ./
RUN gem install bundler && bundle install -j20
