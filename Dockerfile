FROM ruby:2.5.3
RUN curl -sL https://deb.nodesource.com/setup_10.x | bash - \
        && apt-get install -y nodejs
RUN apt-get update -qq && apt-get install -y build-essential nodejs
RUN mkdir /work
WORKDIR /work
ADD Gemfile /work/Gemfile
ADD Gemfile.lock /work/Gemfile.lock
RUN gem install bundler
RUN bundle install
ADD . /work
