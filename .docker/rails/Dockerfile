FROM usualoma/ruby-with-therubyracer:2.4.0-alpine
ENV LANG C.UTF-8

RUN apk update && \
    apk upgrade
RUN apk add bash \
            make \
            g++ \
            mysql-dev \
            openssh \
            tzdata \
            zlib-dev

WORKDIR /tmp
COPY Gemfile* /tmp/
RUN bundle install

ENV APP_HOME /app
WORKDIR $APP_HOME
ADD . $APP_HOME
