FROM ruby:2.6

COPY Gemfile .
COPY Gemfile.lock .

RUN gem install bundler -v '~>2' --no-document; \
    bundle
