FROM ruby:2.3

RUN apt-get update -qq && apt-get install -y build-essential libpq-dev nodejs

WORKDIR /audopt

ADD Gemfile /audopt/Gemfile
ADD Gemfile.lock /audopt/Gemfile.lock

RUN bundle install

ADD . /audopt