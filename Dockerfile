FROM ruby:2.5

RUN apt-get update && apt-get install nodejs -y

RUN mkdir -p /usr/src/app/
WORKDIR /usr/src/app/

ADD Gemfile Gemfile.lock /usr/src/app/
RUN bundle install

ADD . /usr/src/app/


CMD ["rails", "server", "-b", "0.0.0.0"]