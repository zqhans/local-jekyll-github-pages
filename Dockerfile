FROM ruby:3.3.4-alpine3.20

RUN mkdir -p /data/blog
VOLUME [ "/data/blog" ]
WORKDIR /data/blog
# expose Jekyll service port
EXPOSE 4000

# install basic tools
RUN apk update && \
    apk add build-base gcc cmake git && \
    rm -rf /var/cache/apk/*

# install jekyll and bundler
RUN gem install webrick bundler && \
    # install jekyll version 3.10.0 for compatibility with GitHub Pages
    # https://pages.github.com/versions/
    gem install jekyll -v 3.10.0

COPY serve.sh /serve.sh
RUN chmod +x /serve.sh

# run server when container starts
CMD [ "/bin/sh", "/serve.sh" ]
