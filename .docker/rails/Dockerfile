FROM ruby:2.3.4
ENV LANG C.UTF-8
RUN apt-get update -qq && \
    apt-get install -y build-essential \
                        mysql-client

ENV APP_HOME /app
RUN mkdir $APP_HOME

WORKDIR $APP_HOME
ADD Gemfile $APP_HOME/Gemfile
ADD Gemfile.lock $APP_HOME/Gemfile.lock
RUN bundle install
ADD . $APP_HOME
