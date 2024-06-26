FROM ruby:2.7

COPY Gemfile .

RUN gem install bundler -v '~>1' --no-document \
    && bundle \
    && bundle lock --update \
    && bundle config --global frozen 1 \
    && bundle install
