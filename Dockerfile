FROM ruby:3.0.0

RUN apt-get update -qq && apt-get install -y build-essential\
                                             libpq-dev      \
                                             nodejs         \
                                             curl           \
                                             sudo

RUN curl -sL https://deb.nodesource.com/setup_14.x | sudo -E bash -
RUN apt install -y nodejs
RUN npm install --global yarn

RUN mkdir /tokyo-stations-api
WORKDIR /tokyo-stations-api

COPY Gemfile /tokyo-stations-api/Gemfile
COPY Gemfile.lock /tokyo-stations-api/Gemfile.lock

RUN gem install bundler
RUN bundle update
RUN bundle install

RUN gem install nokogiri --platform=ruby
RUN bundle config set force_ruby_platform true

RUN yarn install

COPY . /tokyo-stations-api
