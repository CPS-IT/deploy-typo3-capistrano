FROM ruby:3.3

COPY Gemfile .

RUN gem install bundler -v '~>2' --no-document \
    && bundle \
    && bundle lock --update \
    && bundle config --global frozen 1
