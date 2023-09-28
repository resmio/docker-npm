FROM node:18.18.0-buster
MAINTAINER developers@resmio.com

ENV NODE_OPTIONS --max_old_space_size=6144

RUN apt-get update && \
    apt-get install -y curl gettext make g++ && \
    yarn global add https://github.com/jacobrask/jsxgettext/tarball/927a13b615f2c62fd25c0a79769bb5a75878353b && \
    yarn global add babel-jsxgettext@0.5.1 xgettext-template@3.4.2 gettext-vue@0.3.1

CMD sh -c "yarn run setup:yarn"

VOLUME ["/src"]
WORKDIR /src
