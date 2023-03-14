FROM ruby:3-alpine as ruby-base

RUN apk --no-cache update && apk --no-cache add build-base

WORKDIR /app

RUN gem install bundler

FROM ruby-base AS development

RUN apk --no-cache add bash

FROM development AS test

RUN bundle install
