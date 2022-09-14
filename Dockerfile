FROM ruby:2.3

COPY Gemfile .
COPY Gemfile.lock .
COPY patches patches

RUN gem install bundler -v '~>2' --no-document \
    && bundle \
    && patch /usr/local/bundle/gems/capistrano-3.11.2/lib/capistrano/dsl.rb patches/capistrano-dump-io.patch
