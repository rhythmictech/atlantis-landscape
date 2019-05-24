FROM runatlantis/atlantis

RUN apk --no-cache add \
  ruby-bundler \
  ruby-json \
  py-pip \
  coreutils \
  diffutils # this is required for diffy to work on alpine

RUN gem install --no-document --no-ri terraform_landscape

RUN pip install --no-cache-dir awscli
