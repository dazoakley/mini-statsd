FROM ruby:alpine
MAINTAINER Darren Oakley <daz.oakley@gmail.com>

RUN apk update && apk upgrade
RUN apk add ruby-dev build-base
RUN rm -rf /var/cache/apk/*

RUN gem install mini_statsd -v 0.3.0 --no-rdoc --no-ri

EXPOSE 8125
CMD ["mini_statsd", "8125", "0.0.0.0"]
