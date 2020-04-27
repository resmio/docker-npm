FROM ubuntu:16.04
MAINTAINER developers@resmio.com

ENV NODE_OPTIONS --max_old_space_size=4096

RUN apt-get update && \
    apt-get install -y curl gettext && \
    curl -sL https://deb.nodesource.com/setup_10.x | bash - && \
    apt-get install -y nodejs && \
    npm install yarn -g && \
    yarn global add https://github.com/jacobrask/jsxgettext/tarball/927a13b615f2c62fd25c0a79769bb5a75878353b && \
    yarn global add babel-jsxgettext@0.5.1 xgettext-template@3.4.2 gettext-vue@2.1.8

CMD sh -c "yarn run setup:yarn"

VOLUME ["/src"]
WORKDIR /src
