FROM ruby:2.7.1-alpine

# Minimal requirements to run a Rails app
RUN apk add --no-cache --update build-base \
        linux-headers \
        git \
        postgresql-dev \
        nodejs \
        yarn \
        tzdata \
    && gem install bundler -v 2.0.2

ENV APP_PATH /app

# Use a separate layer for gem installation
WORKDIR $APP_PATH
COPY Gemfile Gemfile.lock $APP_PATH/
RUN bundle install

# Copy the application into the container
COPY . APP_PATH
EXPOSE 3000

