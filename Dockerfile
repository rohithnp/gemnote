FROM ruby:2.3.3
RUN apt-get update -qq && apt-get install -y build-essential libpq-dev nodejs
RUN mkdir /gemnote
WORKDIR /gemnote
COPY Gemfile /gemnote/Gemfile
COPY Gemfile.lock /gemnote/Gemfile.lock
RUN bundle install
COPY . /gemnote
