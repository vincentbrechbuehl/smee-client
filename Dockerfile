FROM node:alpine
LABEL name="smee-client"
LABEL description="Client for tunneling to/from https://smee.io/"

RUN apk upgrade --update \
  && apk --update-cache update \
  && apk add --update bash curl \
  && rm -rf /var/cache/apk/*

ENV SMEE_SOURCE_URL=
ENV SMEE_TARGET_HOST "127.0.0.1"
ENV SMEE_TARGET_PORT "80"
ENV SMEE_TARGET_PATH=

RUN npm install -g smee-client
COPY docker-entrypoint.sh /usr/local/bin/docker-entrypoint.sh
CMD []
ENTRYPOINT ["/usr/local/bin/docker-entrypoint.sh"]
