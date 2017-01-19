FROM ruby:2.3-alpine

WORKDIR /app

COPY Gemfile* /app/

RUN bundle install -j4

COPY . /app/

CMD bin/issues
