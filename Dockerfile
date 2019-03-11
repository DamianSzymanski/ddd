FROM ruby:2.5.3
RUN apt-get update -qq && apt-get install -y build-essential libpq-dev nodejs
RUN mkdir /ddd
WORKDIR /ddd
COPY Gemfile /ddd/Gemfile
COPY Gemfile.lock /ddd/Gemfile.lock
RUN bundle install
COPY . /ddd
