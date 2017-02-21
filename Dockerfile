FROM ruby:2.4

MAINTAINER thinkbot@outlook.de

ENV VERSION=7.2.0

RUN gem install jetty-rackup --version ${VERSION} --no-format-exec

WORKDIR /tmp

ENTRYPOINT ["jetty-rackup"]
CMD ["--help"]
