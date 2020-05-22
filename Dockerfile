FROM mhart/alpine-node:14 as node

FROM runatlantis/atlantis
ENV VERSION=v14.3.0 NPM_VERSION=6 YARN_VERSION=latest

RUN apk --no-cache add \
  py-pip \
  coreutils \
  npm

RUN pip install --no-cache-dir awscli

COPY --from=node /usr/bin/node /usr/bin/node
RUN npm i -g npm && npm cache clean --force
RUN npm i -g yarn && npm cache clean --force
