FROM ruby:2.4.2

WORKDIR /usr/src/app
COPY . /usr/src/app
RUN bundle install

WORKDIR /app
COPY . /app
