FROM ubuntu:16.04
MAINTAINER developers@resmio.com

RUN apt-get update && \
    apt-get install -y curl gettext && \
    curl -sL https://deb.nodesource.com/setup_10.x | sudo -E bash - && \
    apt-get install -y nodejs && \
    npm install yarn -g && \
    yarn global add https://github.com/jacobrask/jsxgettext/tarball/927a13b615f2c62fd25c0a79769bb5a75878353b && \
    yarn global add https://github.com/fraserxu/babel-jsxgettext/tarball/df09a5f11db83cc35ed9e9e815d753ff6ae3ceee

CMD sh -c "yarn run setup:yarn"

VOLUME ["/src"]
WORKDIR /src
