FROM ruby:3.0

COPY Gemfile .
COPY patches patches

RUN gem install bundler -v '~>2' --no-document \
    && bundle \
    && bundle lock --update \
    && bundle config --global frozen 1\
    && patch /usr/local/bundle/gems/capistrano-3.18.0/lib/capistrano/dsl.rb patches/capistrano-dump-io.patch
