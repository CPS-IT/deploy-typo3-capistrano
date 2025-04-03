FROM ruby:3

COPY Gemfile .

RUN gem install bundler --no-document \
    && bundle \
    && bundle lock --update \
    && bundle config --global frozen 1 \
    && bundle install
